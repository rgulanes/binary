DROP PROCEDURE IF EXISTS get_userCashOnHand;
DELIMITER $$

# CALL get_userCashOnHand(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userCashOnHand`(IN userId INT)
BEGIN
	DROP TABLE IF EXISTS totalCashOnHand;

	CREATE TEMPORARY TABLE IF NOT EXISTS totalCashOnHand AS(
	SELECT COALESCE(SUM(c.c_amount), 0) AS total_commissions, (SELECT COALESCE(SUM(w.w_amount), 0) FROM withdrawal w WHERE w.w_user_id = userId ) AS total_withdrawals
		FROM commission c WHERE c.c_user_id = userId);

	SELECT CONVERT(COALESCE((total_commissions - total_withdrawals), 0), DECIMAL(10, 2)) AS totalCashOnHand FROM totalCashOnHand;
END$$
DELIMITER ;
