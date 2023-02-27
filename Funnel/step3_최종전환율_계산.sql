-- Step 3. 입문반 페이지뷰, 스크롤을 거쳐 입문반 신청 버튼 클릭까지의 전환율은 얼마인가요? 
-- 데이터리안에서는 입문반 페이지 안에 있는 입문반 신청하기, 1 Day 신청하기, 패키지 신청하기 3개 중에 하나만 클릭해도 전환이라고 보겠습니다. 

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
), click AS (
  SELECT user_pseudo_id
       , ga_session_id
       , event_timestamp_kst AS click_at
  FROM ga
  WHERE page_title = "백문이불여일타 SQL 캠프 입문반"
  AND event_name IN ("SQL_basic_form_click", "SQL_basic_1day_form_click", "SQL_package_form_click")
)

-- pv, scroll, clikck, pv_scroll_rate, scroll_click_rate, pv_click_rate
SELECT COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv
     , COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id) AS scroll
     , COUNT(DISTINCT click.user_pseudo_id, click.ga_session_id) AS click
     , COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id)/COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv_scroll_rate
     , COUNT(DISTINCT click.user_pseudo_id, click.ga_session_id)/COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id) AS scroll_click_rate
     , COUNT(DISTINCT click.user_pseudo_id, click.ga_session_id)/COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv_click_rate
FROM pv
  LEFT JOIN scroll ON pv.user_pseudo_id=scroll.user_pseudo_id
                  AND pv.ga_session_id=scroll.ga_session_id
                  AND pv_at <= scroll_at
  LEFT JOIN click ON scroll.user_pseudo_id=click.user_pseudo_id
                  AND scroll.ga_session_id=click.ga_session_id
                  AND scroll_at <= click_at