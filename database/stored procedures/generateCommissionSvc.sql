DROP PROCEDURE IF EXISTS generateCommissionSvc;
-- CALL generateCommissionSvc(2)
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateCommissionSvc`(IN userId INT(11))
BEGIN
	DECLARE tree_generate INT(11);
    DECLARE updated_depths INT(11);
    DECLARE generated_commission INT(11);
    DECLARE count_commissions INT(11);

	CALL get_Hierarchy(userId);
    SET tree_generate = (SELECT ROW_COUNT());
    
    TRUNCATE _currentchild;
	CALL get_childsDepth();
    SET updated_depths = (SELECT ROW_COUNT());
    
    SET count_commissions = (SELECT COUNT(*) FROM commission WHERE c_user_id = userId AND DATE(date_create) = DATE(NOW()));
    
    IF count_commissions <= 10
		THEN
        CALL generate_userCommission(userId);
		SET generated_commission = (SELECT ROW_COUNT());
	ELSE
		SET generated_commission = 0;
	END IF;
    
    SELECT tree_generate, updated_depths, generated_commission;
END$$
DELIMITER ;
