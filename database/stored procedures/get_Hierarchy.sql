DROP PROCEDURE IF EXISTS get_Hierarchy;
DELIMITER $$

# CALL get_Hierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Hierarchy`(IN userId INT)
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
        get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position
	from hierarchy d
	join hierarchy a on (a.child = d.child)
	join users n on (n.user_id = a.parent)
	where d.parent = userId
	group by d.child);
    
    TRUNCATE TABLE _selectedHierarchy;
    INSERT INTO _selectedHierarchy (child, depth, full_name, parent, position) 
		SELECT child, depth, full_name, parent, position FROM _hierarchy;
END$$
DELIMITER ;
