SELECT DAYNAME(event_timestamp_kst) AS DAYNAME
     , DATE(event_timestamp_kst) AS dt
     , COUNT(DISTINCT user_pseudo_id, ga_session_id) AS session
FROM ga
WHERE event_timestamp_kst BETWEEN "2022-01-22 00:00:00" AND "2022-01-29 23:59:59"
GROUP BY DAYNAME, dt
ORDER BY dt