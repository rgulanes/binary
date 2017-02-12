DROP PROCEDURE IF EXISTS get_Hierarchy;
DELIMITER $$

# CALL get_Hierarchy(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_Hierarchy`(IN userId INT)
BEGIN
	DECLARE str_list VARCHAR(100);
    DECLARE _maxCount INT(11);
    
	DROP TEMPORARY TABLE IF EXISTS _temp;
	CREATE TEMPORARY TABLE IF NOT EXISTS _temp AS (select 
			-- group_concat(CONCAT( n.user_name, ' (' , n.user_id , ')') order by a.parent separator ', ') as path,
			d.child, d.depth,
			get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position, d.m_position
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
        d.child, d.depth,
        get_FullName(d.child) AS full_name, COALESCE(get_Parent(d.child), d.parent) AS parent, d.position, d.m_position
	from hierarchy d
	join hierarchy a on (a.child = d.child)
	join users n on (n.user_id = a.parent)
	where d.parent = userId
	group by d.child);
    
    TRUNCATE TABLE _selectedhierarchy;
    SET _maxCount = (SELECT COUNT(DISTINCT depth) FROM _hierarchy);
    INSERT INTO _selectedhierarchy (child, depth, full_name, parent, position, m_position) 
		SELECT child, 
			CASE
				WHEN depth = 0 THEN depth
                WHEN depth = 1 THEN depth
				WHEN _maxCount - depth != 0 AND _maxCount - depth  <= 2 THEN depth
				WHEN _maxCount - depth = 0 THEN depth - 1
			END AS depth
        , full_name, parent, position, m_position FROM _hierarchy;
END$$
DELIMITER ;
