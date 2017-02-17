DROP FUNCTION IF EXISTS get_ChildCount;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_ChildCount`(`childId` INT(11)) RETURNS INT(11) 
BEGIN
	DECLARE cnt INT(11);

	SET cnt = (SELECT COALESCE(current_count, 0) FROM _currentchild WHERE parent = childId);
    
    IF cnt IS NULL
		THEN 
			SET cnt = 0;
	ELSE
		SET cnt = cnt;
	END IF;

	RETURN cnt;
END$$
DELIMITER ;
