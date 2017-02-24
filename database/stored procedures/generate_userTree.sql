DROP PROCEDURE IF EXISTS generate_userTree;
DELIMITER $$

# CALL generate_userTree(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_userTree`(IN userId INT)
BEGIN
	DECLARE maxDepth INT(11);
    DECLARE _depth INT(11);

	DROP TEMPORARY TABLE IF EXISTS _userTree;
	CREATE TEMPORARY TABLE IF NOT EXISTS _userTree AS (
	SELECT *, get_DescendantCount(child, depth) AS child_count FROM _selectedhierarchy);
    
    SET _depth = 0;
    SET maxDepth = (SELECT MAX(depth) FROM _userTree);
    
    SELECT  child, depth, full_name, parent, position, m_position FROM _userTree;
END$$
DELIMITER ;
