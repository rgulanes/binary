DROP PROCEDURE IF EXISTS generate_userCommission;
DELIMITER $$

# CALL generate_userCommission(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_userCommission`(IN userId INT)
BEGIN
	DECLARE maxDepth INT(11);
    DECLARE _depth INT(11);
    DECLARE _check INT(11);
    DECLARE _position VARCHAR(100);
    DECLARE _children INT(11);
    DECLARE _maxChild INT(11);
    DECLARE cnt INT(11);
    DECLARE lCount INT(11);
    DECLARE rCount INT(11);
    DECLARE oldCount INT(11);
    DECLARE newCount INT(11);
    DECLARE upCount INT(11);
    DECLARE _maxDepth INT(11);

	DROP TEMPORARY TABLE IF EXISTS _userCommissions;
	CREATE TEMPORARY TABLE IF NOT EXISTS _userCommissions AS (
	SELECT *, get_DescendantCount(child, depth) AS child_count FROM _selectedhierarchy);
    
    SET _depth = 0;
    SET maxDepth = (SELECT MAX(depth) FROM _userCommissions);
    
    WHILE _depth <= maxDepth DO
        SET _position = (SELECT  GROUP_CONCAT( m_position ORDER BY parent SEPARATOR ', ') FROM _userCommissions WHERE depth = _depth);
        SET _children = (SELECT SUM(child_count) FROM _userCommissions WHERE depth = _depth);
        SET _maxChild = POW(2, ( _depth + 1));
        
        CALL update_ChildCount(_depth);
        
        SET upCount = (SELECT SUM(get_DescendantCount(s.child, s.depth)) AS count
						FROM   _selectedhierarchy s
						WHERE EXISTS (SELECT 1 
										   FROM   _currentchild c
										   WHERE  s.depth = c.depth)
						AND s.depth = 1
						GROUP BY s.depth);
		SET oldCount = (SELECT old_count FROM _currentchild WHERE depth = 1);
		SET newCount = (SELECT new_count FROM _currentchild WHERE depth = 1);
        
        -- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth FROM _userCommissions WHERE depth = _depth;
        IF _depth = 0 AND _position = 'parent' OR _position IS NULL
			THEN
				SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, _maxChild, _children, upCount, newCount, oldCount, lCount, rCount FROM _userCommissions WHERE depth = _depth;
				
                IF ROUND((_children / 2), 2) % 1 = 0.00
					THEN
						IF ROUND((_children / 2), 2) != 0.00 AND _position = 'right, left'
							THEN
                                IF oldCount != 0 AND newCount != 0 AND newCount != oldCount
								THEN
									IF newCount != upCount
										THEN
											SELECT add_userCommission(userId, 60, 'upline', userId, CONCAT('depth_', userId, '-',_depth));
									END IF;
								ELSE
									SELECT  'Number of children are the same.';
                                END IF;
                        ELSEIF ROUND((_children / 2), 2) = ROUND((_maxChild / 2), 2) AND newCount = upCount
							THEN
								SET cnt = 1;
                
								WHILE cnt <= ROUND((_maxChild / 2), 0) DO
									IF ROUND((_children / 2), 0) != 0 AND cnt <= ROUND((_children / 2), 0)
										THEN
											SELECT add_userCommission(userId, 60, 'upline', userId, CONCAT('depth_', userId, '-',_depth));
									END IF;
                                    
									SET cnt = cnt + 1;
								END WHILE;
						END IF;
				END IF;
        ELSEIF _depth = 1
			THEN
				SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position,_children, upCount, newCount, oldCount, lCount, rCount, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2), (ROUND((_children / 2), 2) % 1) FROM _userCommissions WHERE depth = _depth;

				IF ROUND((_children / 2), 2) % 1 = 0.00
					THEN
						IF ROUND((_children / 2), 2) != 0.00 AND _position = 'right, left'
							THEN
                                IF oldCount != 0 AND newCount != 0 AND newCount != oldCount AND newCount != upCount
									THEN
										IF newCount != upCount
											THEN
												SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
										ELSEIF _children = upCount AND newCount != oldCount
											THEN
												SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
										END IF;
								ELSE
									SELECT  'Number of children are the same.';
                                    IF newCount != upCount
										THEN
											SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
									ELSEIF _children = upCount AND newCount != oldCount
										THEN
											SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
									ELSEIF _children = upCount AND newCount = oldCount
										THEN
											SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
									END IF;
                                END IF;
                        ELSEIF ROUND((_children / 2), 2) = ROUND((_maxChild / 2), 2) AND newCount != oldCount
							THEN
								SET cnt = 1;
                
								WHILE cnt <= ROUND((_maxChild / 2), 0) DO
									IF ROUND((_children / 2), 0) != 0 AND cnt <= ROUND((_children / 2), 0)
										THEN
											IF newCount = upCount
												THEN
													SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
											END IF;
									END IF;
                                    
									SET cnt = cnt + 1;
								END WHILE;
						END IF;
				END IF;
        
        ELSEIF _depth NOT IN (0,1)
			THEN
				-- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2) FROM _userCommissions WHERE depth = _depth AND child_count IN (0, 1);
				SET lCount = (SELECT SUM(child_count) FROM _userCommissions WHERE depth = _depth AND m_position = 'left' GROUP BY m_position);
                SET rCount = (SELECT SUM(child_count) FROM _userCommissions WHERE depth = _depth AND m_position = 'right' GROUP BY m_position);
                
                DROP TEMPORARY TABLE IF EXISTS _positions;
                CREATE TEMPORARY TABLE IF NOT EXISTS _positions AS (SELECT m_position FROM _userCommissions WHERE depth = _depth GROUP BY m_position);
                SET _position = (SELECT GROUP_CONCAT(m_position SEPARATOR ', ') FROM _positions);

                SELECT depth, child_count, m_position, newCount,oldCount, lCount, rCount FROM _userCommissions WHERE depth = _depth GROUP BY m_position;

                IF lCount != 0 AND rCount != 0 AND lCount = rCount AND newCount != oldCount
					THEN
						IF newCount != upCount
							THEN
								SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
						ELSEIF _children = upCount AND newCount != oldCount
							THEN
								SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
						END IF;
				ELSEIF lCount != 0 AND rCount != 0 AND lCount = rCount
					THEN
						IF newCount != upCount
							THEN
								SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
						ELSEIF _children = upCount AND newCount != oldCount
							THEN
								SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
						ELSEIF _children = upCount AND newCount = upCount
							THEN
								IF _maxDepth != _depth
									THEN
										SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
								END IF;
						END IF;
                ELSE
					-- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2) FROM _userCommissions WHERE depth = _depth AND m_position = 'left' AND child_count = 2;
					-- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2) FROM _userCommissions WHERE depth = _depth AND m_position = 'right' AND child_count = 2;
					IF newCount != oldCount
						THEN
							IF newCount != upCount
								THEN
									SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth)) FROM _userCommissions WHERE depth = _depth AND m_position = 'left' AND child_count = 2;
									SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth)) FROM _userCommissions WHERE depth = _depth AND m_position = 'right' AND child_count = 2;
							END IF;
					END IF;
                END IF;
        ELSE
			SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _children, CONCAT('depth_', child, '-',_depth) FROM _userCommissions WHERE depth = _depth;
		END IF;
        
        SET _depth = _depth + 1;
	END WHILE;
    
    
END$$
DELIMITER ;
