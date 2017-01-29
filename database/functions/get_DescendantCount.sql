DROP FUNCTION IF EXISTS get_DescendantCount;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_DescendantCount`(`childId` INT(11)) RETURNS INT(11) 
BEGIN
	DECLARE id INT(11);

	SET id = (SELECT COUNT(*) AS descendant_count
				FROM hierarchy AS c
					INNER JOIN users AS u ON (u.user_id = c.child)
				WHERE c.parent = childId AND c.depth = 1);
    
    IF id IS NULL
		THEN 
			SET id = 0;
	ELSE
		SET id = id;
	END IF;

	RETURN id;
END$$
DELIMITER ;
