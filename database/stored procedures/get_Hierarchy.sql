DROP PROCEDURE IF EXISTS get_Hierarchy;
DELIMITER $$

# CALL get_Hierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Hierarchy`(IN userId INT)
BEGIN
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	SELECT 
		DISTINCT h.child,
		(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE user_id = h.child LIMIT 1) AS full_name,
		(SELECT DISTINCT depth FROM hierarchy WHERE parent = userId AND child = h.child ORDER BY depth ASC LIMIT 1) AS depth,
		get_Parent(h.child) AS parent,
		h.position,
		h.m_position,
		h.parent AS m_parent
			FROM hierarchy h
	WHERE h.parent = userId);
    
    TRUNCATE TABLE _selectedhierarchy;
    INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position, m_parent, f_position)
		SELECT child, depth, full_name, parent, position, m_position, m_parent, NULL FROM _hierarchy;
	
    UPDATE _selectedhierarchy SET m_position = NULL WHERE m_position = '';
    
	IF (SELECT COUNT(*) FROM _selectedhierarchy WHERE m_parent = userId AND depth = 0) = 2
	THEN
		DELETE FROM _selectedhierarchy WHERE child = userId AND m_position IS NOT NULL;
	END IF;
        
	DROP TEMPORARY TABLE IF EXISTS __hierarchy;
	CREATE TEMPORARY TABLE IF NOT EXISTS __hierarchy AS
	(SELECT s.*, 
		(CASE 
			WHEN m_position IS NULL THEN 'parent'
			WHEN (SELECT child FROM `binary`.hierarchy WHERE parent = ((SELECT DISTINCT child FROM hierarchy WHERE parent = userId AND depth = 1 AND position = 'left' LIMIT 1)) AND child IN (s.child) LIMIT 1) IS NOT NULL 
				THEN 'left'
            WHEN (SELECT child FROM `binary`.hierarchy WHERE parent = ((SELECT DISTINCT child FROM hierarchy WHERE parent = userId AND depth = 1 AND position = 'right' LIMIT 1)) AND child IN (s.child) LIMIT 1) IS NOT NULL 
				THEN 'right'
		END) AS fin_position FROM _selectedhierarchy s
	ORDER BY s.depth);
    
    TRUNCATE TABLE _selectedhierarchy;
    INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position, m_parent, f_position)
		SELECT child, depth, full_name, parent, position, m_position, m_parent, fin_position FROM __hierarchy;
	
    UPDATE _selectedhierarchy SET m_position = NULL, f_position = 'parent', position = 'parent' WHERE depth = 0 AND child = userId;
END$$
DELIMITER ;
