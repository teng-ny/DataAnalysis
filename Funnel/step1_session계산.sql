-- Step 1. 입문반 페이지를 본 세션 수 구하기
SELECT COUNT(DISTINCT user_pseudo_id, ga_session_id) AS pv
FROM ga
WHERE page_title = "백문이불여일타 SQL 캠프 입문반"
AND event_name="page_view"