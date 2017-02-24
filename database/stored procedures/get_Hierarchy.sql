DROP PROCEDURE IF EXISTS get_Hierarchy;
DELIMITER $$

# CALL get_Hierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Hierarchy`(IN userId INT)
BEGIN
    DECLARE _maxCount INT(11);
    DECLARE _depth INT(11);
    DECLARE oDepth INT(11);
    DECLARE childCount INT(11);
    DECLARE _maxChild INT(11);

    
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	select 
		-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
        d.child, d.depth,
        get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position, d.m_position
	from hierarchy d
	join hierarchy a on (a.child = d.child)
	join users n on (n.user_id = a.parent)
	where d.parent = userId
	group by d.child);
    
    TRUNCATE TABLE _selectedhierarchy;
    SET _maxCount = (SELECT COUNT(DISTINCT depth) FROM _hierarchy);
    SET childCount = (SELECT COUNT(DISTINCT child) FROM _hierarchy);
    SET _depth = 0;
    SET oDepth = 0;
    
    IF ROUND((_maxCount / 2), 2) % 1 = 0.00
		THEN 
        
		IF ROUND((childCount / 2), 2) % 1 = 0.00
			THEN
				WHILE _depth < _maxCount DO
					INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position) 
						SELECT child, _depth AS depth,
						full_name, parent, position, m_position FROM _hierarchy WHERE depth = _depth;
					SET _depth = _depth + 1;
				END WHILE;
        ELSE
			WHILE _depth <= _maxCount DO
				INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position) 
					SELECT child,
						CASE
							WHEN _depth - oDepth = 1 THEN _depth ELSE oDepth END AS depth,
					full_name, parent, position, m_position FROM _hierarchy WHERE depth = _depth
					HAVING depth IS NOT NULL;
				SET _depth = _depth + 1;
				SET oDepth = _depth - 1;
			END WHILE;
        END IF;
	ELSE
		WHILE _depth < _maxCount DO
			INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position) 
				SELECT child, _depth AS depth,
				full_name, parent, position, m_position FROM _hierarchy WHERE depth = _depth;
			SET _depth = _depth + 1;
		END WHILE;
    END IF;
    
END$$
DELIMITER ;
