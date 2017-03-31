DROP PROCEDURE IF EXISTS get_UnilevelHierarchy;
DELIMITER $$

# CALL get_UnilevelHierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_UnilevelHierarchy`(IN userId INT)
BEGIN
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	SELECT 
		DISTINCT h.child,
		(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE user_id = h.child LIMIT 1) AS full_name,
		(SELECT DISTINCT depth FROM unilevel_tree WHERE parent = userId AND child = h.child ORDER BY depth ASC LIMIT 1) AS depth, h.parent
			FROM unilevel_tree h
	WHERE h.parent = userId);
    
	TRUNCATE TABLE _unilevel_tree;
    INSERT INTO _unilevel_tree (child, depth, full_name, parent)
		SELECT child, depth, full_name, parent FROM _hierarchy ORDER BY depth;
END$$
DELIMITER ;
