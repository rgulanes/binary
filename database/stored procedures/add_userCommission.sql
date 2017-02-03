DROP PROCEDURE IF EXISTS add_userCommission;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_userCommission`(IN userId INT, IN amount FLOAT, IN _desc VARCHAR(45), IN r_userId INT, _depth VARCHAR(11))
BEGIN
    DECLARE _dCounter INT(11);
    
    SET _dCounter = (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND depth = _depth);
    
	IF _desc = 'upline'
		THEN
			IF r_userId IS NOT NULL AND (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND r_user_id = r_userId) != 1
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, r_userId, _depth, _desc, NOW());
			END IF;
            
            
            IF r_userId IS NULL AND _dCounter != 2
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, null, _depth, _desc, NOW());
			END IF;
	ELSEIF _desc = 'referral'
		THEN
			INSERT INTO commission (c_user_id, c_amount, r_user_id, remarks, date_create) VALUES(userId, amount, r_userId, _desc, NOW());
	END IF;
END $$
DELIMITER ;
