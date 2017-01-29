DROP PROCEDURE IF EXISTS check_Downlines;
DELIMITER $$

# CALL get_userMembers(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_Downlines`(IN userId INT, IN _depth INT)
BEGIN
	DECLARE str_list VARCHAR(100);
    
	DROP TEMPORARY TABLE IF EXISTS _temp;
	CREATE TEMPORARY TABLE IF NOT EXISTS _temp AS (select 
			-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
			d.child, d.depth,
			get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position
		from hierarchy d
		join hierarchy a on (a.child = d.child)
		join users n on (n.user_id = a.parent)
		where d.parent = userId
		group by d.child);
		
	SET str_list = (SELECT GROUP_CONCAT(DISTINCT(depth) SEPARATOR ',') FROM _temp);
    
	DROP TEMPORARY TABLE IF EXISTS _hierarchy;
    CREATE TEMPORARY TABLE IF NOT EXISTS _hierarchy AS (
	select 
		-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
        d.child, 
		CASE 
			WHEN d.depth IN (0,1,2) THEN d.depth
            WHEN d.depth IN (1,2) THEN d.depth
            WHEN d.depth IN (2, 3) THEN 
				CASE 
					WHEN (SELECT GROUP_CONCAT(DISTINCT(depth) SEPARATOR ',') FROM _temp) =  '0,1,2,3' THEN d.depth 
					ELSE 2 END 
		ELSE d.depth END AS depth, 
        get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position,
        get_DescendantCount(d.child) AS child_count
	from hierarchy d
	join hierarchy a on (a.child = d.child)
	join users n on (n.user_id = a.parent)
	where d.parent = userId
	group by d.child);
    
    SELECT * FROM _hierarchy WHERE depth = _depth;
END$$
DELIMITER ;
