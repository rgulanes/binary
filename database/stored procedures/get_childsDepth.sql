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
        INSERT INTO _currentchild (parent, old_count, new_count)
		SELECT DISTINCT c.child, 0, count_childs(child)
			FROM _selectedhierarchy c;
	ELSEIF _notEmpty > 0
		THEN
			INSERT INTO _currentchild (parent, old_count, new_count)
			SELECT DISTINCT s.child, 0, count_childs(child)
			FROM   _selectedhierarchy s
			WHERE NOT EXISTS (SELECT 1 
							   FROM   _currentchild c
							   WHERE  s.child = c.parent);
    END IF;
END$$
DELIMITER ;
