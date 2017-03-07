	DECLARE newCount INT(10);
    DECLARE oldCount INT(10);
    DECLARE upCount INT(10);
    DECLARE pairs INT(10);
    DECLARE cnt INT(10);
    DECLARE pairCount INT(10);
    DECLARE lCount INT(10);
    DECLARE rCount INT(10);
    DECLARE maxDepth INT(10);
    DECLARE _children INT(11);
    DECLARE _maxChild INT(11);
    DECLARE cnter INT(11);
    DECLARE _depth INT(11);
    
		SET _depth = 0;
    SET maxDepth = (SELECT MAX(depth) FROM _selectedhierarchy);
    
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

	WHILE _depth <= maxDepth DO
		IF (SELECT COUNT(*) FROM _selectedhierarchy WHERE m_parent = userId AND depth = 0) = 2
	    THEN
			SET lCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND position = 'left' AND depth != 0);
			SET rCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND position = 'right' AND depth != 0);
		ELSE
			SET lCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND m_position = 'left' AND depth != 0);
			SET rCount = (SELECT COUNT(*) FROM _selectedhierarchy WHERE depth = _depth AND m_parent = userId AND m_position = 'right' AND depth != 0);
		END IF;
	    
	    IF oldCount != 0 AND newCount != 0 AND newCount != oldCount
		THEN
			IF oldCount < newCount
				THEN
					SET pairCount = (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId);
					SET pairs = pairs - pairCount;
					SET cnt = 1;
					WHILE cnt <= pairs DO
						INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
							VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
						-- SELECT 'count', upCount, newCount, oldCount, 's';
						SET cnt = cnt + 1;
					END WHILE;
			ELSEIF newCount != upCount
				THEN
					SET pairCount = (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId);
					SET pairs = pairs - pairCount;
					SET cnt = 1;
					WHILE cnt <= pairs DO
						INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
							VALUES(userId, 60, userId, CONCAT('pairing_', pairCount + 1), 'upline', NOW());
						-- SELECT 'count', upCount, newCount, oldCount, 's';
						SET cnt = cnt + 1;
					END WHILE;
			END IF;
		ELSE
			IF (SELECT COUNT(*) FROM commission WHERE c_user_id = userId and r_user_id = userId) = 0
				THEN
					IF lCount != 0 AND rCount != 0 AND lCount = rCount
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
		END IF;
		SET _depth = _depth + 1;
	END WHILE;

	CALL update_ChildCount(userId);