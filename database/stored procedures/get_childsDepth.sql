DROP PROCEDURE IF EXISTS get_childsDepth;
DELIMITER $$

# CALL get_childsDepth();
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_childsDepth`()
BEGIN
	DECLARE _notEmpty INT(11);

    SET _notEmpty = (SELECT TABLE_ROWS
						FROM information_schema.TABLES
						WHERE TABLE_SCHEMA = 'binary'
						AND TABLE_NAME = '_currentchild'
						AND TABLE_TYPE = 'BASE TABLE');
	IF _notEmpty = 0
		THEN
        INSERT INTO _currentchild (depth, parent, old_count, new_count)
		SELECT c.depth AS depth, c.parent, 0, get_DescendantCount(child, depth)
			FROM _selectedhierarchy c
			GROUP BY c.parent;
	ELSEIF _notEmpty > 0
		THEN
			INSERT INTO _currentchild (depth, parent, old_count, new_count)
			SELECT s.depth, s.parent, 0, SUM(get_DescendantCount(child, depth))
			FROM   _selectedhierarchy s
			WHERE NOT EXISTS (SELECT 1 
							   FROM   _currentchild c
							   WHERE  s.depth = c.depth)
			GROUP BY s.depth;
    END IF;
END$$
DELIMITER ;
