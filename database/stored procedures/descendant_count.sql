CALL check_Downlines(2, 1);

SELECT 
    u.user_name, u.user_id,
    COUNT(*) AS descendant_count
FROM hierarchy AS c
    INNER JOIN users AS u ON (u.user_id = c.child)
    INNER JOIN hierarchy AS d ON (c.child = d.parent)
WHERE c.parent = 3 AND u.user_id = 3 AND c.depth = 1
GROUP BY c.child;

SELECT COUNT(*) AS descendant_count
FROM hierarchy AS c
    INNER JOIN users AS u ON (u.user_id = c.child)
WHERE c.parent = 2 AND c.depth = 1