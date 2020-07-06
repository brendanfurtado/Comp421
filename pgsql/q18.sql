SELECT v.vid, COALESCE(COUNT(s.eid), 0) AS numevents
FROM venue v 
FULL OUTER JOIN schedule s ON v.vid = s.vid
GROUP BY v.vid
ORDER BY vid;
