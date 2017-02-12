DROP FUNCTION IF EXISTS add_userCommission;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `add_userCommission`(userId INT, amount FLOAT, _desc VARCHAR(45), r_userId INT, _depth VARCHAR(11)) RETURNS VARCHAR(11)
BEGIN
	DECLARE _return VARCHAR(11);
    DECLARE _dCounter INT(11);
    DECLARE _maxChild INT(11);
    
    SET _dCounter = (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND depth = _depth);
    SET _maxChild =  ROUND((POW(2, ( REPLACE(_depth, CONCAT('depth_', userId , '-'), '') + 1))/ 2), 0);
    
	IF _desc = 'upline'
		THEN
			IF r_userId IS NOT NULL AND (SELECT COUNT(*) FROM commission WHERE remarks = 'upline' AND c_user_id = userId AND r_user_id = r_userId) != 1
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, r_userId, _depth, _desc, NOW());
					SET _return = 'success upline';
            ELSE
				SET _return = 'error upline';
            END IF;
            
            
            IF r_userId IS NULL AND _dCounter != _maxChild
				THEN
					INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, null, _depth, _desc, NOW());
					SET _return = 'success upline';
			ELSE
				SET _return = 'error upline';
            END IF;
	ELSEIF _desc = 'referral'
		THEN
			INSERT INTO commission (c_user_id, c_amount, r_user_id, depth, remarks, date_create) VALUES(userId, amount, r_userId, null, _desc, NOW());
			SET _return = 'success referral';
	ELSE
			SET _return = 'error referral';
    END IF;
    
    RETURN _return;
END $$
DELIMITER ;
