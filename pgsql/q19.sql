SELECT o.oid
FROM organization o, host h, event e, schedule s, venue v
WHERE o.oid = h.oid
AND e.eid = h.eid
AND s.eid = e.eid
AND s.vid = v.vid
AND v.vid = ALL (
SELECT v.vid
FROM venue v
WHERE v.area = 'C')
ORDER BY oid;
