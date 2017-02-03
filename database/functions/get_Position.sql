DROP FUNCTION IF EXISTS get_Position;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_Position`(`childId` INT(11)) RETURNS VARCHAR(11) 
BEGIN
	DECLARE id VARCHAR(11);

	SET id = (SELECT position FROM hierarchy WHERE child = childId AND parent != child  LIMIT 1);
    
    IF id IS NULL
		THEN 
			SET id = (SELECT position FROM hierarchy WHERE child = childId  LIMIT 1);
	ELSE
		SET id = id;
	END IF;

	RETURN id;
END$$
DELIMITER ;
