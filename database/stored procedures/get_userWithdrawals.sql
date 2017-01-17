DROP PROCEDURE IF EXISTS get_userWithdrawals;
DELIMITER $$

# CALL get_userWithdrawals(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userWithdrawals`(IN userId INT)
BEGIN
	SELECT 
		CONCAT('Php. ', CONVERT(COALESCE(w_amount, 0), DECIMAL(10, 2))) AS w_amount, 
		DATE_FORMAT(date_create,'%m-%d-%Y') AS date_create 
	FROM withdrawal WHERE w_user_id = userId;
END$$
DELIMITER ;
