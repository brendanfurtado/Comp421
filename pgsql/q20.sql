SELECT e.type, AVG(c.price) as averageamount
FROM event e JOIN schedule s
ON e.eid = s.eid
FULL OUTER JOIN calendar c
ON s.vid = c.vid
WHERE e.type IS NOT NULL
GROUP BY e.type
ORDER BY e.type;
