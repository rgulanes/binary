DROP PROCEDURE IF EXISTS get_selectedHierarchy;
DELIMITER $$

# CALL get_Hierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_selectedHierarchy`(IN _val INT, IN _get VARCHAR(11))
BEGIN
	IF _get = 'depth'
		THEN
			SELECT *, get_DescendantCount(child, depth) AS child_count FROM _selectedhierarchy WHERE depth = _val;
	ELSE
			SELECT *, get_DescendantCount(child, depth) AS child_count FROM _selectedhierarchy WHERE parent = _val OR child = _val;
		END IF;
END$$
DELIMITER ;
