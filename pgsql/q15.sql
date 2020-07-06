SELECT o.oid,o.oname
FROM organization o 
JOIN host h ON o.oid = h.oid 
JOIN (
SELECT e.eid
FROM event e FULL OUTER 
JOIN schedule s ON e.eid = s.eid
GROUP BY e.eid
HAVING COUNT(s.date) > 2) AS t ON h.eid = t.eid
GROUP BY o.oid
ORDER BY oid;

