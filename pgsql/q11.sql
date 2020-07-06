SELECT DISTINCT p.pid, p.pname
FROM person p FULL OUTER JOIN participate p2
ON p.pid = p2.pid
WHERE p2.eid IN (
SELECT p.eid 
FROM participate p
WHERE p.pid = 12345678)
AND p2.pid <> 12345678
ORDER BY pid;