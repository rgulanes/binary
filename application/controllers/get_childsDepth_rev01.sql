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
			TRUNCATE _currentchild;
			INSERT INTO _currentchild (depth, parent, current_count)
				SELECT c.depth AS depth, c.parent, COUNT(*) AS descendant_count
					FROM _selectedhierarchy c
					WHERE c.depth != 0
					GROUP BY c.parent;
                    
			DROP TEMPORARY TABLE IF EXISTS currentchild;
			CREATE TEMPORARY TABLE IF NOT EXISTS currentchild AS (SELECT depth, parent, current_count FROM _currentchild);
			
            TRUNCATE _currentchild;
			DROP TEMPORARY TABLE IF EXISTS _currentchilds;
			CREATE TEMPORARY TABLE IF NOT EXISTS _currentchilds  AS 
				(SELECT c.depth AS depth, c.parent, COUNT(*) AS current_count
					FROM _selectedhierarchy c
					WHERE c.depth != 0
					GROUP BY c.parent);
                    
			DROP TEMPORARY TABLE IF EXISTS _childHistory;
			CREATE TEMPORARY TABLE IF NOT EXISTS _childHistory AS (SELECT COALESCE(c.depth, s.depth) AS depth, s.parent, COALESCE(c.current_count, 0) AS old_count, s.current_count AS new_count FROM _currentchilds s
			LEFT JOIN currentchild c ON c.parent = s.parent);
	ELSE
		TRUNCATE _currentchild;
		INSERT INTO _currentchild (depth, parent, current_count)
		SELECT c.depth AS depth, c.parent, COUNT(*) AS descendant_count
			FROM _selectedhierarchy c
			WHERE c.depth != 0
			GROUP BY c.parent;
                
		DROP TEMPORARY TABLE IF EXISTS currentchild;
		CREATE TEMPORARY TABLE IF NOT EXISTS currentchild AS (SELECT depth, parent, current_count FROM _currentchild);
        
        TRUNCATE _currentchild;
		DROP TEMPORARY TABLE IF EXISTS _currentchilds;
		CREATE TEMPORARY TABLE IF NOT EXISTS _currentchilds  AS 
			(SELECT c.depth AS depth, c.parent, COUNT(*) AS current_count
				FROM _selectedhierarchy c
                WHERE c.depth != 0
				GROUP BY c.parent);
		
        DROP TEMPORARY TABLE IF EXISTS _childHistory;
		CREATE TEMPORARY TABLE IF NOT EXISTS _childHistory AS (SELECT COALESCE(c.depth, s.depth) AS depth, s.parent, COALESCE(c.current_count, 0) AS old_count, s.current_count AS new_count FROM _currentchilds s
		LEFT JOIN currentchild c ON c.parent = s.parent);
        
    END IF;
END$$
DELIMITER ;
