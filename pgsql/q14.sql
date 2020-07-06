SELECT e.eid, SUM(c.price) AS totalamount
FROM calendar c
JOIN schedule s ON c.vid = s.vid AND c.date = s.date
JOIN event e ON e.eid = s.eid
GROUP BY e.eid
ORDER BY e.eid DESC, totalamount ASC;