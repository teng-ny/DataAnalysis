-- 요일 별, 시간 별 세션 수
SELECT DATE(event_timestamp_kst) AS dt
     , HOUR(event_timestamp_kst) AS hr
     , COUNT(DISTINCT user_pseudo_id, ga_session_id) AS click_sessions
FROM ga
WHERE event_timestamp_kst BETWEEN "2022-01-22 00:00:00" AND "2022-01-29 23:59:59"
AND event_name IN ("SQL_basic_form_click", "SQL_basic_1day_form_click", "SQL_package_form_click")
-- AND evnet_name LIKE '%click%'
GROUP BY hr, dt
ORDER BY dt, hr
-- 피벗테이블->조건부 서식->색상 스케일 선택시 다른 색깔로(데이터의 맥락이 다르므로 다른색상)