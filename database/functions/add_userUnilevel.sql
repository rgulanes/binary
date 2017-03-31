DROP FUNCTION IF EXISTS add_userUnilevel;
DELIMITER $$

# CALL add_userUnilevel(15);
CREATE DEFINER=`root`@`localhost` FUNCTION `add_userUnilevel`(parentId INT(11), childId INT(11), fName VARCHAR(100))
RETURNS INT(11) 
BEGIN
	DECLARE userId VARCHAR(100);
    DECLARE _depth INT(11);
    
    INSERT INTO unilevel_tree (parent, child, depth, full_name)
	SELECT parentId, childId, 1, fName
    UNION ALL SELECT parent, childId, depth+1, fName FROM unilevel_tree
		WHERE child = parentId
	UNION ALL SELECT childId, childId, 0, fName;
    
    RETURN 1;
END$$
DELIMITER ;
