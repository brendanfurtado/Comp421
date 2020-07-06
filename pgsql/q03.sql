SELECT vid,capacity
FROM venue
WHERE (vid IN
(SELECT vid FROM calendar
WHERE (calendar.price < 100.00 AND calendar.date='2020-01-16'))
AND area = 'C')
ORDER BY venue.vid
;
