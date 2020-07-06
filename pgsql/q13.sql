WITH TEMP AS (

SELECT DISTINCT p.pid
FROM organization o
JOIN host h ON o.oid = h.oid
JOIN participate p ON h.eid = p.eid
JOIN person p2 ON p.pid = p2.pid
WHERE o.oid = 1
)
SELECT COUNT(*) AS numpeople
FROM TEMP; 
