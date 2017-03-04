DROP PROCEDURE IF EXISTS get_Hierarchy;
DELIMITER $$

# CALL get_Hierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Hierarchy`(IN userId INT)
BEGIN
    DECLARE _maxDepth INT(11);
    DECLARE _depth INT(11);
    DECLARE oDepth INT(11);
    DECLARE childCount INT(11);

    
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	SELECT
		DISTINCT t.user_id AS child,
		CONCAT(t.first_name, ' ', t.last_name) AS full_name,
		h.depth,
		get_Parent(t.user_id) AS parent,
        h.position,
        h.m_position,
        h.parent AS m_parent
	FROM users t
		JOIN hierarchy h ON t.user_id = h.child
	WHERE h.parent = userId);
    
    TRUNCATE TABLE _selectedhierarchy;
    SET _maxDepth = (SELECT MAX(depth) FROM _hierarchy);
    SET childCount = (SELECT COUNT(DISTINCT child) FROM _hierarchy);
    SET _depth = 0;
    SET oDepth = 0;
    
    INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position, m_parent)
		SELECT child, depth, full_name, parent, position, m_position, m_parent FROM _hierarchy;
END$$
DELIMITER ;
