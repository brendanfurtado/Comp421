SELECT e.eid,s.date
FROM event e
JOIN schedule s ON
e.eid = s.eid
WHERE e.eid IN 
(
SELECT eid from participate p 
WHERE (p.pid = '12345678') 
EXCEPT
SELECT eid from participate p 
WHERE (p.pid ='12345679')
)
AND e.type = 'music'
ORDER BY e.eid DESC, s.date ASC;
