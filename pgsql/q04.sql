SELECT v.vid,v.capacity
FROM venue v
WHERE EXISTS (SELECT vid FROM calendar
WHERE (v.vid = calendar.vid AND v.area = 'C' AND (calendar.price < 100.00 AND calendar.date='2020-01-16')))
ORDER BY v.vid
;
