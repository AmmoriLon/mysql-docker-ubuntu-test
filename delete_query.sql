-- 
DELETE FROM f
FROM indicator_to_mo_fact f
INNER JOIN indicator_to_mo im ON f.indicator_to_mo_id = im.indicator_to_mo_id
INNER JOIN indicator i ON im.indicator_id = i.indicator_id
WHERE i.indicator_id = 273
AND CAST(f.fact_time AS DATE) = '2024-09-10';
GO