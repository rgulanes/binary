DROP PROCEDURE IF EXISTS get_userCount;
DELIMITER $$

# CALL get_userCount('Luyabaya', '1');
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userCount`(IN fName VARCHAR(100), IN lName VARCHAR(100))
BEGIN
	SELECT COUNT(*) AS counter FROM users WHERE LTRIM(RTRIM(REPLACE(first_name, ' ', ''))) = LTRIM(RTRIM(REPLACE(fName, ' ', '')))
		AND LTRIM(RTRIM(REPLACE(last_name, ' ', ''))) = LTRIM(RTRIM(REPLACE(lName, ' ', '')));
END$$
DELIMITER ;
