DROP PROCEDURE IF EXISTS generateCommission;
-- CALL generateCommission(2, 1)
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateCommission`(IN userId INT(11), IN _depth VARCHAR(50), IN cLevel INT(11))
BEGIN
	DECLARE maxChild INT(11);
    DECLARE iCommission INT(11);
    DECLARE cnt INT(11);
    
    SET iCommission = (SELECT COUNT(*) FROM commission WHERE c_user_id = userId AND depth = _depth LIMIT 1);
    SET maxChild = POW(2, ( _depth));
    
    IF (ROUND((maxChild / 2), 2)) != iCommission
    THEN
		SET cnt = 1;
        WHILE cnt <= cLevel DO
			INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create)
				VALUES(userId, 60, userId, _depth, 'upline', NOW());
			SET cnt = cnt + 1;
		END WHILE;
    END IF;
END$$
DELIMITER ;
