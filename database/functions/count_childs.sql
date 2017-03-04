DROP FUNCTION IF EXISTS count_childs;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `count_childs`(`childId` INT(11)) RETURNS INT(11) 
BEGIN
	DECLARE id INT(11);

	SET id = (SELECT COUNT(*) AS descendant_count
				FROM _selectedhierarchy AS c
					INNER JOIN users AS u ON (u.user_id = c.child)
				WHERE c.m_parent = childId AND depth != 0);
    
    IF id IS NULL
		THEN 
			SET id = 0;
	ELSE
		SET id = id;
	END IF;

	RETURN id;
END$$
DELIMITER ;
