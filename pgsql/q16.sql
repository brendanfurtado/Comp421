WITH temp1 AS (
SELECT DISTINCT *
FROM event e
WHERE e.type = 'fundraising'),

temp2 AS (
SELECT t1.eid,p2.people AS numpeople 
FROM temp1 t1 
FULL OUTER JOIN (
SELECT t1.eid, COUNT(p.pid) AS people
FROM temp1 t1 
LEFT OUTER JOIN participate p
ON t1.eid = p.eid
GROUP BY t1.eid) p2
ON t1.eid  = p2.eid) 

SELECT t1.eid,t2.numpeople
FROM temp1 t1 
INNER JOIN temp2 t2 ON t1.eid = t2.eid
WHERE t2.numpeople = (SELECT MAX(t2.numpeople) FROM temp2 t2)
GROUP BY t1.eid, t2.numpeople
ORDER BY t1.eid
;
