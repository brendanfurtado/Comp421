SELECT e.eid,s.date
FROM event e 
JOIN schedule s ON
e.eid = s.eid
WHERE e.eid IN
(
SELECT e.eid 
FROM participate p
WHERE p.pid = '12345678'
INTERSECT
SELECT e.eid
FROM participate p
WHERE p.pid = '12345679'
) AND (e.type = 'fundraising')
ORDER BY e.eid DESC, s.date ASC;

