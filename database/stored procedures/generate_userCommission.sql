DROP PROCEDURE IF EXISTS generate_userCommission;
DELIMITER $$

# CALL generate_userCommission(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_userCommission`(IN userId INT)
BEGIN
	DECLARE _depth INT(11);
    DECLARE _maxChild INT(11);
    DECLARE _childCount INT(11);
    DECLARE maxDepth INT(11);
    DECLARE rCount INT(11);
    DECLARE lCount INT(11);
	DECLARE newCount INT(11);
    DECLARE oldCount INT(11);
    DECLARE upCount INT(11);
    DECLARE pairs INT(11);
    DECLARE pairCount INT(11);
    DECLARE cnt INT(11);
    DECLARE _cnt INT(11);
    
    IF (SELECT COUNT(*) FROM _selectedhierarchy WHERE m_parent = userId AND depth = 0) = 2
	    THEN
			SET upCount = (SELECT SUM(count_childs(s.child)) AS count
						FROM   _selectedhierarchy s
						WHERE EXISTS (SELECT 1 
										   FROM   _currentchild c
										   WHERE  s.child = c.parent)
						AND s.m_parent = userId AND m_position IS NULL);
		ELSE
			SET upCount = (SELECT SUM(count_childs(s.child)) AS count
						FROM   _selectedhierarchy s
						WHERE EXISTS (SELECT 1 
										   FROM   _currentchild c
										   WHERE  s.child = c.parent)
						AND s.m_parent = userId);
		END IF;

	SET oldCount = (SELECT SUM(old_count) FROM _currentchild WHERE parent = userId);
	SET newCount = (SELECT SUM(new_count) FROM _currentchild WHERE parent = userId);
    
    SET _depth = 1;
    SET maxDepth = (SELECT MAX(depth) FROM _selectedhierarchy);
    
    WHILE _depth <= maxDepth DO
		SET _maxChild = POW(2, ( _depth));
        SET _childCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth);
        SET pairCount = (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId);
        
        IF (SELECT COUNT(*) FROM _selectedhierarchy WHERE m_parent = userId AND depth = 0) = 2
	    THEN
			SET lCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND position = 'left' AND depth != 0);
			SET rCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND position = 'right' AND depth != 0);
		ELSE
			SET lCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND m_position = 'left' AND depth != 0);
			SET rCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND m_position = 'right' AND depth != 0);
		END IF;
        
         IF newCount != oldCount
			THEN
				IF oldCount < newCount
					THEN
						IF lCount != 0 AND rCount != 0 AND lCount = rCount
						THEN
							IF _maxChild = _childCount
								THEN
									SET pairs = ((_childCount / 2));
									SET cnt = 1;
									WHILE cnt <= pairs DO
										INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
											VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
										SET cnt = cnt + 1;
									END WHILE;
							ELSE
								SET pairs = (((lCount + rCount) / 2));
								SET cnt = 1;
								WHILE cnt <= pairs DO
									INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
										VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
									SET cnt = cnt + 1;
								END WHILE;
							END IF;
						END IF;
				ELSEIF newCount != upCount
					THEN
						IF lCount != 0 AND rCount != 0 AND lCount = rCount
						THEN
							IF _maxChild = _childCount
								THEN
									SET pairs = ((_childCount / 2));
									SET cnt = 1;
									WHILE cnt <= pairs DO
										INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
											VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
										SET cnt = cnt + 1;
									END WHILE;
							ELSE
								SET pairs = (((lCount + rCount) / 2));
								SET cnt = 1;
								WHILE cnt <= pairs DO
									INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
										VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
									SET cnt = cnt + 1;
								END WHILE;
							END IF;
						END IF;
				END IF;
		ELSE
			IF (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId) = 0
				THEN
					SET cnt = 1;
					WHILE cnt <= pairs DO
						INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
							VALUES(userId, 60, userId, CONCAT('pairing_', cnt), 'upline', NOW());
						-- SELECT 'count', upCount, newCount, oldCount, 's';
						SET cnt = cnt + 1;
					END WHILE;
				END IF;
		END IF;
        
        SET _depth = _depth + 1;
    END WHILE;
    CALL update_ChildCount(userId);
END$$
DELIMITER ;
