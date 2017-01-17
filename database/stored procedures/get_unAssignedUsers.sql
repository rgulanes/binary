DROP PROCEDURE IF EXISTS get_unAssignedUsers;
DELIMITER $$

# CALL get_unAssignedUsers(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_unAssignedUsers`(IN userId INT)
BEGIN
	
	DROP TABLE IF EXISTS unassignedUsers;
	CREATE TEMPORARY TABLE IF NOT EXISTS unassignedUsers AS
	(SELECT 
		u.user_id as u_user_id, u.first_name as u_first_name, u.last_name as u_last_name,
		u.contact as u_contact, u.address as u_address, u.email as u_email, u.gender as u_gender,
		u.sponsor_by as u_sponsor,
		p.position_id as p_position_id,
		p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, p.position_left as p_left, p.position_right as p_right
		FROM users u 
		JOIN position p ON p.user_id = u.user_id
		WHERE
			NOT EXISTS(SELECT pos.position_right 
						  FROM   position pos
						  WHERE  pos.position_right <> '' AND pos.position_right = u.user_id
						 )
			AND
			NOT EXISTS(SELECT pos.position_left 
						  FROM   position pos
						  WHERE  pos.position_left <> '' AND pos.position_left = u.user_id
						 ));

	SELECT * FROM unassignedUsers
		WHERE p_left = '' AND p_right = '' AND p_user_id != userId AND p_sponsor_by = userId;
END$$
DELIMITER ;
