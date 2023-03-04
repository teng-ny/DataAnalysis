-- 요일 별, 시간 별 세션 수
SELECT DATE(event_timestamp_kst) AS dt
     , HOUR(event_timestamp_kst) AS hr
     , COUNT(DISTINCT user_pseudo_id, ga_session_id) AS session
FROM ga
WHERE event_timestamp_kst BETWEEN "2022-01-22 00:00:00" AND "2022-01-29 23:59:59"
GROUP BY hr, dt
-- 결과를 구글스프레드시트로 옮겨서 피벗테이블->조건부 색깔부여