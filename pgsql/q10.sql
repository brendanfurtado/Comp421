SELECT DISTINCT v.vid, v.area, v.capacity
FROM venue v, schedule s JOIN
(SELECT *
FROM event e
WHERE e.eid IN (
SELECT h.eid
FROM host h JOIN organization o
ON h.oid = o.oid
WHERE o.oid = 6)
) AS t
ON s.eid = t.eid
WHERE v.vid = s.vid
ORDER BY vid, v.capacity;
