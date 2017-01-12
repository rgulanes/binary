DROP PROCEDURE IF EXISTS get_MembersAssigned;
DELIMITER $$

# CALL get_MembersAssigned(15, 'R');
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_MembersAssigned`(IN userId INT, IN isPosition VARCHAR(2))
BEGIN

	IF isPosition = 'L' THEN
			SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) AS full_name, u.user_name,
				CONCAT(up.first_name, ' ', up.last_name, ' (', up.user_name, ')') AS up_FName,
				up.user_id AS upline_userId, DATE_FORMAT(u.entered_on,'%m-%d-%Y') AS date_joined
				FROM users u
					LEFT JOIN position p ON p.position_left = u.user_id
					LEFT JOIN users up ON up.user_id = p.upline
				WHERE p.upline = userId AND p.position_left >  0;
	ELSE
			SELECT u.user_id, CONCAT(u.first_name, ' ', u.last_name) AS full_name, u.user_name,
				CONCAT(up.first_name, ' ', up.last_name, ' (', up.user_name, ')') AS up_FName,
				up.user_id AS upline_userId, DATE_FORMAT(u.entered_on,'%m-%d-%Y') AS date_joined
				FROM users u
					LEFT JOIN position p ON p.position_right = u.user_id
					LEFT JOIN users up ON up.user_id = p.upline
				WHERE p.upline = userId AND p.position_right > 0;
	END IF;
END$$
DELIMITER ;
