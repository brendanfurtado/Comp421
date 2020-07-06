SELECT venue.vid,venue.capacity
FROM venue
JOIN calendar
ON calendar.vid = venue.vid
WHERE (venue.area = 'C' AND (calendar.price < 100.00 AND date='2020-01-16'))
ORDER BY venue.vid
;
