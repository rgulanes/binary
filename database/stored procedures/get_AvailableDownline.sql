DROP PROCEDURE IF EXISTS get_AvailableDownline;
DELIMITER $$

# CALL get_AvailableDownline(15, 'R');
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_AvailableDownline`(IN userId INT, IN isPosition VARCHAR(2))
BEGIN
      DECLARE pr_Id INT(11);
	  DECLARE pl_Id INT(11);

      DROP TABLE IF EXISTS availableDownline;
      IF isPosition = 'L' THEN
				  SET pl_Id = (SELECT position_left FROM position WHERE upline = userId);

                  CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS 
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_left = u.user_id
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = pl_Id
					WHERE p.upline = userId)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_left = u.user_id 
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = p.position_left
						WHERE p.upline =  pl_Id)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
															  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
										FROM users u
												LEFT JOIN position p ON p.position_right = u.user_id 
												LEFT JOIN users up ON up.user_id = p.upline
												LEFT JOIN position pr ON pr.user_id = p.position_right
											WHERE p.upline =  pl_Id);
      ELSE
					SET pr_Id = (SELECT position_right FROM position WHERE upline = userId);

					CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_right = u.user_id
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = pr_Id
					WHERE p.upline = userId)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
										  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
					FROM users u
							LEFT JOIN position p ON p.position_left = u.user_id 
							LEFT JOIN users up ON up.user_id = p.upline
                            LEFT JOIN position pr ON pr.user_id = p.position_left
						WHERE p.upline =  pr_Id)
					UNION
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
															  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pr.position_left as p_left, pr.position_right as p_right
										FROM users u
												LEFT JOIN position p ON p.position_right = u.user_id 
												LEFT JOIN users up ON up.user_id = p.upline
												LEFT JOIN position pr ON pr.user_id = p.position_right
											WHERE p.upline =  pr_Id);

      END IF;

      SELECT * FROM availableDownline WHERE (p_left <= 0 OR p_right <= 0);
END$$
DELIMITER ;
