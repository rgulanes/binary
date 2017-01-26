DROP FUNCTION IF EXISTS get_Parent;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_Parent`(`childId` INT(11)) RETURNS INT(11) 
BEGIN
	DECLARE id INT(11);

	SET id = (SELECT parent FROM hierarchy WHERE child = childId AND parent != child  LIMIT 1);
    
    IF id IS NULL
		THEN 
			SET id = childId;
	ELSE
		SET id = id;
	END IF;

	RETURN id;
END$$
DELIMITER ;
