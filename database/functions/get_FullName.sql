DROP FUNCTION IF EXISTS get_FullName;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_FullName`(`userId` INT(11)) RETURNS varchar(100) CHARSET latin1
BEGIN
	DECLARE _desc VARCHAR(100);

	SET _desc = (SELECT CONCAT(n.first_name, ' ', n.last_name) FROM users n WHERE n.user_id = userId);

	RETURN _desc;
END$$
DELIMITER ;
