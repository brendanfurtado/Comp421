SELECT DISTINCT o.oid,o.oname
FROM organization o
JOIN host h ON o.oid = h.oid
JOIN event e ON h.eid = e.eid
JOIN schedule s ON e.eid =s.eid
WHERE (s.date = '2020-01-16')
ORDER BY o.oid; 
