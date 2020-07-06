SELECT v.vid, COUNT(*) AS numevents
FROM venue v, schedule s
WHERE v.vid = s.vid
AND s.eid is NOT NULL
GROUP BY v.vid

UNION

SELECT v.vid, 0 AS numevents
FROM venue v, schedule s
WHERE v.vid NOT IN (
SELECT s.vid 
FROM schedule s)
ORDER BY vid;
