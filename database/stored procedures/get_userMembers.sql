DROP PROCEDURE IF EXISTS get_userMembers;
DELIMITER $$

# CALL get_userMembers(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userMembers`(IN userId INT)
BEGIN
	SELECT 
	(CASE WHEN
		position_left = '' THEN 0 ELSE COALESCE(COUNT(position_left), 0) END) + (CASE WHEN
		position_right = '' THEN 0 ELSE COALESCE(COUNT(position_right), 0) END) AS countMembers
	FROM position WHERE user_id = userId;
END$$
DELIMITER ;
