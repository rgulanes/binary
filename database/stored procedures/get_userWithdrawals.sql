DROP PROCEDURE IF EXISTS get_userWithdrawals;
DELIMITER $$

# CALL get_userWithdrawals(98);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userWithdrawals`(IN userId INT)
BEGIN
	SELECT 
			CONCAT('Php. ', CONVERT(COALESCE(w.w_amount, 0), DECIMAL(10, 2))) AS w_amount, 'Approved' AS status,
			DATE_FORMAT(w.date_create,'%M %e, %Y') AS date_create 
		FROM withdrawal w
		WHERE w.w_user_id = userId
	UNION ALL
	SELECT 
			CONCAT('Php. ', CONVERT(COALESCE(rw.amount, 0), DECIMAL(10, 2))) AS w_amount, 'For Approval' AS status,
			DATE_FORMAT(rw.date_requested,'%M %e, %Y') AS date_create 
		FROM request_withdrawal rw
		WHERE rw.user_id = userId AND rw.status = 0;
END$$
DELIMITER ;
