SELECT * FROM `binary`.hierarchy WHERE parent = 6;
SELECT p.* FROM position p;

SELECT COALESCE(depth, 0) FROM hierarchy WHERE parent = 2 ORDER BY datetime DESC LIMIT 1;

DROP TEMPORARY TABLE IF EXISTS _parentTable;
CREATE TEMPORARY TABLE IF NOT EXISTS _parentTable AS (
SELECT c.user_id, c.user_name, h.child, h.depth FROM users u
	JOIN hierarchy h ON u.user_id = h.parent
    JOIN hierarchy ch ON ch.child = h.child
    JOIN users p ON p.user_id = h.parent
    JOIN users c ON c.user_id = h.child
    WHERE h.parent = 2 AND h.depth > 0 ORDER BY h.depth ASC);

DROP TEMPORARY TABLE IF EXISTS _childTable;
CREATE TEMPORARY TABLE IF NOT EXISTS _childTable AS (
SELECT u.user_id, u.user_name, h.parent, h.depth FROM _parentTable p
	JOIN hierarchy h ON p.user_id = h.parent
    JOIN users u ON h.child = u.user_id
WHERE h.depth = 1 ORDER BY p.depth ASC);

SELECT * FROM _parentTable
UNION ALL
SELECT * FROM _childTable;