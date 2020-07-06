SELECT p.pid,p.pname
FROM person p
JOIN participate
ON participate.pid = p.pid
WHERE (participate.eid=5)
ORDER BY pid
;
