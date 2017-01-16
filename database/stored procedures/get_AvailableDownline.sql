DROP PROCEDURE IF EXISTS get_AvailableDownline;
DELIMITER $$

# CALL get_AvailableDownline(15, 'R');
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_AvailableDownline`(IN userId INT, IN isPosition VARCHAR(2))
BEGIN
      
      DROP TABLE IF EXISTS availableDownline;
      IF isPosition = 'L' THEN
                  CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS 
                  (SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
					  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, p.position_left as p_left, p.position_right as p_right
					  FROM position p
						JOIN users u ON u.user_id = p.user_id
						WHERE 
							p.position_left <= 0
						AND
							EXISTS(SELECT pos.position_right 
										  FROM   position pos
										  WHERE  pos.position_right <> '' AND pos.position_right = u.user_id
										 )
							OR
							EXISTS(SELECT pos.position_left 
										  FROM   position pos
										  WHERE  pos.position_left <> '' AND pos.position_left = u.user_id
										 ));
      ELSE
				  CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS
                  (SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
					  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, p.position_left as p_left, p.position_right as p_right
					  FROM position p
						JOIN users u ON u.user_id = p.user_id
					  WHERE 
						p.position_right <= 0
						AND
						EXISTS(SELECT pos.position_right 
									  FROM   position pos
									  WHERE  pos.position_right <> '' AND pos.position_right = u.user_id
									 )
						OR
						EXISTS(SELECT pos.position_left 
									  FROM   position pos
									  WHERE  pos.position_left <> '' AND pos.position_left = u.user_id
									 ));
      END IF;

      SELECT * FROM availableDownline;
END$$
DELIMITER ;
