USE ideadb;

WITH RECURSIVE CategoryTree AS (
  -- root
  SELECT
    c.id,
    c.title,
    c.parent_id,
    0 AS level,
    CAST(LPAD(c.id, 10, '0') AS CHAR(1000)) AS path_ids
  FROM Category c
  WHERE c.parent_id = 0

  UNION ALL

  -- recursive
  SELECT
    c.id,
    c.title,
    c.parent_id,
    ct.level + 1 AS level,
    CONCAT(ct.path_ids, '/', LPAD(c.id, 10, '0')) AS path_ids
  FROM Category c
  JOIN CategoryTree ct ON c.parent_id = ct.id
)

SELECT
  CONCAT(REPEAT('    ', level), title) AS CategoryTree,
  (SELECT COUNT(*) FROM Category c2 WHERE c2.parent_id = c1.id) AS direct_children
FROM CategoryTree c1
ORDER BY path_ids;
