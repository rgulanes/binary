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

	DROP TEMPORARY TABLE IF EXISTS _userCommissions;
	CREATE TEMPORARY TABLE IF NOT EXISTS _userCommissions AS (
	SELECT *, get_DescendantCount(child) AS child_count FROM _selectedhierarchy);
    
    SET _depth = 0;
    SET maxDepth = (SELECT MAX(depth) FROM _userCommissions);
    
    WHILE _depth <= maxDepth DO
        SET _position = (SELECT  GROUP_CONCAT( m_position ORDER BY parent SEPARATOR ', ') FROM _userCommissions WHERE depth = _depth);
        SET _children = (SELECT SUM(child_count) FROM _userCommissions WHERE depth = _depth);
        SET _maxChild = POW(2, ( _depth + 1));
        
        -- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth FROM _userCommissions WHERE depth = _depth;
        IF _depth = 0 AND _position = 'parent' OR _position IS NULL
			THEN
				SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position,
					CASE WHEN child_count = 2
						THEN
							add_userCommission(child, 60, 'upline', child, CONCAT('depth_', child, '-',_depth))
					ELSE
						'Commission has been added'
					END AS commissioned, _maxChild, _children FROM _userCommissions WHERE depth = _depth;
        ELSEIF _depth = 1
			THEN                
				SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2), (ROUND((_children / 2), 2) % 1) FROM _userCommissions WHERE depth = _depth;
        
				IF ROUND((_children / 2), 2) % 1 = 0.00
					THEN
						IF ROUND((_children / 2), 2) != 0.00 AND _position = 'right, left'
							THEN
								SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
						ELSEIF ROUND((_children / 2), 2) = ROUND((_maxChild / 2), 2)
							THEN
								SET cnt = 1;
                
								WHILE cnt <= ROUND((_maxChild / 2), 0) DO
									IF ROUND((_children / 2), 0) != 0 AND cnt <= ROUND((_children / 2), 0)
										THEN
											SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
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

                SELECT depth, child_count, m_position, SUM(child_count), ROUND((_maxChild / 2), 2), SUM(child_count), ROUND((_children / 2), 2), _position FROM _userCommissions WHERE depth = _depth GROUP BY m_position;
                
                IF lCount != 0 AND rCount != 0 AND lCount = rCount
					THEN
						SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth));
				ELSE
					-- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2) FROM _userCommissions WHERE depth = _depth AND m_position = 'left' AND child_count = 2;
					-- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, CONCAT('depth_', child, '-',_depth), ROUND((_maxChild / 2), 2), ROUND((_children / 2), 2) FROM _userCommissions WHERE depth = _depth AND m_position = 'right' AND child_count = 2;
					SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth)) FROM _userCommissions WHERE depth = _depth AND m_position = 'left' AND child_count = 2;
                    SELECT  add_userCommission(userId, 60, 'upline', null, CONCAT('depth_', userId, '-',_depth)) FROM _userCommissions WHERE depth = _depth AND m_position = 'right' AND child_count = 2;
                END IF;
        ELSE
			SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _children, CONCAT('depth_', child, '-',_depth) FROM _userCommissions WHERE depth = _depth;
		END IF;
        
        SET _depth = _depth + 1;
	END WHILE;
    
    
END$$
DELIMITER ;
