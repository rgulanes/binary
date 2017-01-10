DROP PROCEDURE IF EXISTS get_downLines;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_downLines`(IN userId INT)
BEGIN
	SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) AS full_name, u.user_name,
	(CASE
		WHEN p.position_right = 1 THEN 'R'
		WHEN p.position_left = 1 THEN 'L'
		ELSE ''
	END) AS isPosition,
	CONCAT(up.first_name, ' ', up.last_name, ' (', up.user_name, ')') AS up_FName,
	up.user_id AS upline_userId, DATE_FORMAT(u.entered_on,'%m-%d-%Y') AS date_joined
	FROM users u
		LEFT JOIN position p ON p.user_id = u.user_id
		LEFT JOIN users up ON up.user_id = p.upline
	WHERE p.upline = userId;
END$$
DELIMITER ;
