SELECT DISTINCT v.vid
FROM venue v
FULL OUTER JOIN schedule ON --Include venues that never were scheduled
v.vid = schedule.vid
WHERE (v.vid NOT IN
(SELECT vid FROM SCHEDULE
WHERE (SCHEDULE.date = '2020-01-17'))
) AND v.area = 'A'
ORDER BY v.vid
;
