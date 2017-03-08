DROP PROCEDURE IF EXISTS generateLuyabayaTree;
DELIMITER $$
# CALL generateLuyabayaTree();
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateLuyabayaTree`()
BEGIN
	CALL get_Hierarchy(2);

	TRUNCATE TABLE luyabaya_tree;
	INSERT INTO luyabaya_tree (child, depth, full_name, parent, position, m_position)
		SELECT child, depth, full_name, parent, position, f_position FROM _selectedhierarchy;
END$$
DELIMITER ;
