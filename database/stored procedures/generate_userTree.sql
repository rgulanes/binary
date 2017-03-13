DROP PROCEDURE IF EXISTS generate_userTree;
DELIMITER $$

# CALL generate_userTree(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_userTree`(IN userId INT)
BEGIN
	DECLARE maxDepth INT(11);
    DECLARE _depth INT(11);

	DROP TEMPORARY TABLE IF EXISTS _userTree;
	CREATE TEMPORARY TABLE IF NOT EXISTS _userTree AS (
	SELECT s.*, get_DescendantCount(s.child, s.depth) AS child_count, u.user_name FROM _selectedhierarchy s
		LEFT JOIN users u ON u.user_id = s.child WHERE s.depth <= 3);
    
    SET _depth = 0;
    SET maxDepth = (SELECT MAX(depth) FROM _userTree);
    
    SELECT  child, depth, full_name, parent, position, m_position, user_name, child_count FROM _userTree ORDER BY depth ASC, position ASC;
END$$
DELIMITER ;
