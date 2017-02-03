DROP PROCEDURE IF EXISTS get_userCommissions;
DELIMITER $$

# CALL get_userCommissions(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_userCommissions`(IN userId INT)
BEGIN
	SELECT 
		CONCAT('Php. ', CONVERT(COALESCE(c_amount, 0), DECIMAL(10, 2))) AS c_amount, 
		DATE_FORMAT(date_create,'%m-%d-%Y') AS date_create, 
        (CASE 
			WHEN remarks = 'referral' THEN 'Direct Referral'
            WHEN remarks = 'upline' THEN 'Pairing'
			ELSE ''
		END) AS remarks
	FROM commission WHERE c_user_id = userId;
END$$
DELIMITER ;
