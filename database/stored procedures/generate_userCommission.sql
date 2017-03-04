DROP PROCEDURE IF EXISTS generate_userCommission;
DELIMITER $$

# CALL generate_userCommission(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_userCommission`(IN userId INT)
BEGIN
	DECLARE newCount INT(10);
    DECLARE oldCount INT(10);
    DECLARE upCount INT(10);
    DECLARE pairs INT(10);
    DECLARE cnt INT(10);
    DECLARE pairCount INT(10);

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
    SET pairs = (newCount / 2);
    
    IF oldCount != 0 AND newCount != 0 AND newCount != oldCount
	THEN
		IF oldCount < newCount
			THEN
            SET pairCount = (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId);
            SET pairs = pairs - pairCount;
            
            SET cnt = 1;
			WHILE cnt <= pairs DO
				INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
				-- SELECT 'count', upCount, newCount, oldCount, 's';
				SET cnt = cnt + 1;
			END WHILE;
		ELSEIF newCount != upCount
			THEN
				SET cnt = 1;
				WHILE cnt <= pairs DO
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, 60, userId, CONCAT('pairing_', cnt), 'upline', NOW());
                    -- SELECT 'count', upCount, newCount, oldCount, 's';
					SET cnt = cnt + 1;
				END WHILE;
		END IF;
	ELSE
		IF (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId) = 0
			THEN
				SET cnt = 1;
				WHILE cnt <= pairs DO
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)  VALUES(userId, 60, userId, CONCAT('pairing_', cnt), 'upline', NOW());
					-- SELECT 'count', upCount, newCount, oldCount, 's';
					SET cnt = cnt + 1;
				END WHILE;
		END IF;
	END IF;
    
    CALL update_ChildCount(userId);
END$$
DELIMITER ;
