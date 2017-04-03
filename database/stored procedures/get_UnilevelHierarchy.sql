DROP PROCEDURE IF EXISTS get_UnilevelHierarchy;
DELIMITER $$

# CALL get_UnilevelHierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_UnilevelHierarchy`(IN userId INT)
BEGIN
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	SELECT 
		DISTINCT h.child,
		(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE user_id = h.child LIMIT 1) AS full_name,
		(SELECT DISTINCT depth FROM unilevel_tree WHERE parent = userId AND child = h.child ORDER BY depth ASC LIMIT 1) AS depth, h.parent
			FROM unilevel_tree h
	WHERE h.parent = userId);
    
    DROP TEMPORARY TABLE IF EXISTS __hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS __hierarchy AS (
    SELECT child, depth, full_name, DATE(us.entered_on) AS date_joined,
    COALESCE((SELECT SUM(amount) FROM product_purchase WHERE user_id = u.child AND MONTH(date_purchase) = MONTH(NOW())), 0) AS amount,
    COALESCE((SELECT COUNT(*) FROM commission WHERE remarks = 'rebates' AND c_user_id = u.child AND MONTH(date_create) = MONTH(NOW())), 0) AS credited_rebate
	FROM _hierarchy u
		LEFT JOIN users us ON us.user_id = u.child);
    
	TRUNCATE TABLE _unilevel_tree;
	INSERT INTO _unilevel_tree (child, depth, full_name, entered_on, amount, rebate_count, rebate)
	(SELECT child, depth, full_name, date_joined, amount, COALESCE((amount / 1000 - credited_rebate), 0),
	   CASE 
			WHEN depth IN (0, 1) THEN 30
			WHEN depth = 2 THEN 15
			WHEN depth IN (3,4,5) THEN 10
			WHEN depth IN (6,7,8,9,10) THEN 5
		ELSE 0 END AS rebate
        FROM __hierarchy
		GROUP BY child ORDER BY depth);
END$$
DELIMITER ;
