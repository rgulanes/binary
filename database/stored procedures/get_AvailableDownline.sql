DROP PROCEDURE IF EXISTS get_AvailableDownline;
DELIMITER $$

# CALL get_AvailableDownline(2, 'R');
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_AvailableDownline`(IN userId INT, IN isPosition VARCHAR(2))
BEGIN
      DECLARE pr_Id INT(11);
	  DECLARE pl_Id INT(11);

      DROP TABLE IF EXISTS availableDownline;
      IF isPosition = 'L' THEN
      
                  CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS 
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
					  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pl.child AS p_left, pr.child AS p_right
						FROM users u
								LEFT JOIN position p ON p.position_left = u.user_id
								LEFT JOIN users up ON up.user_id = p.upline
								LEFT JOIN _selectedhierarchy sh ON sh.child = u.user_id
								LEFT JOIN _selectedhierarchy pl ON pl.parent = sh.child AND pl.position = 'left'
								LEFT JOIN _selectedhierarchy pr ON pr.parent = sh.child AND pr.position = 'right'
						WHERE sh.m_position = 'left' OR sh.m_position = NULL);
      ELSE
					CREATE TEMPORARY TABLE IF NOT EXISTS availableDownline AS
					(SELECT u.user_id as u_user_id,u.first_name as u_first_name,u.last_name as u_last_name,u.contact as u_contact,u.address as u_address,u.email as u_email,u.gender as u_gender,u.sponsor_by as u_sponsor,
					  p.position_id as p_position_id, p.user_id as p_user_id, p.sponsor_by as p_sponsor_by, pl.child AS p_left, pr.child AS p_right
						FROM users u
								LEFT JOIN position p ON p.position_left = u.user_id
								LEFT JOIN users up ON up.user_id = p.upline
								LEFT JOIN _selectedhierarchy sh ON sh.child = u.user_id
								LEFT JOIN _selectedhierarchy pl ON pl.parent = sh.child AND pl.position = 'left'
								LEFT JOIN _selectedhierarchy pr ON pr.parent = sh.child AND pr.position = 'right'
						WHERE sh.m_position = 'right' OR sh.m_position = NULL);

      END IF;

      SELECT * FROM availableDownline WHERE (p_left IS NULL OR  p_right IS NULL);
END$$
DELIMITER ;
