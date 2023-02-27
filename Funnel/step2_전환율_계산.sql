-- Step 2. 입문반 페이지 뷰에서 스크롤까지 전환된 세션의 비율 구하기
-- 페이지뷰 다음에 스크롤한 세션을 찾아주세요. 이벤트들 간의 선후 관계를 고려할 때, 동시에 일어난 경우도 전환으로 카운트합니다.
WITH pv AS (
  SELECT user_pseudo_id
       , ga_session_id
       , event_timestamp_kst AS pv_at
  FROM ga
  WHERE page_title = "백문이불여일타 SQL 캠프 입문반"
  AND event_name = "page_view"
), scroll AS (
  SELECT user_pseudo_id
       , ga_session_id
       , event_timestamp_kst AS scroll_at
  FROM ga
  WHERE page_title = "백문이불여일타 SQL 캠프 입문반"
  AND event_name = "scroll"
)

SELECT COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv
     , COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id) AS scroll_after_pv
     , COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id)/COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv_scroll_rate
FROM pv
  LEFT JOIN scroll ON pv.user_pseudo_id=scroll.user_pseudo_id
                  AND pv.ga_session_id=scroll.ga_session_id
                  AND pv_at <= scroll_at