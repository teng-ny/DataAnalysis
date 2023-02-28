WITH pv AS (
  SELECT user_pseudo_id
       , ga_session_id
       , event_timestamp_kst AS pv_at
  FROM ga
  WHERE page_title = "백문이불여일타 SQL 캠프 실전반"
  AND event_name = "page_view"
), scroll AS (
  SELECT user_pseudo_id
       , ga_session_id
       , event_timestamp_kst AS scroll_at
  FROM ga
  WHERE page_title = "백문이불여일타 SQL 캠프 실전반"
  AND event_name = "scroll"
), click AS (
  SELECT user_pseudo_id
       , ga_session_id
       , event_timestamp_kst AS click_at
  FROM ga
  WHERE event_name = "SQL_advanced_form_click"
)

SELECT COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv
     , COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id) AS scroll_after_pv
     , COUNT(DISTINCT click.user_pseudo_id, click.ga_session_id) AS click_after_scroll
     , ROUND(COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id)/COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id), 3) AS pv_scroll_rate
     , ROUND(COUNT(DISTINCT click.user_pseudo_id, click.ga_session_id)/COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id), 3) AS pv_click_rate
     , ROUND(COUNT(DISTINCT click.user_pseudo_id, click.ga_session_id)/COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id), 3) AS scroll_click_rate
FROM pv
    LEFT JOIN scroll ON pv.user_pseudo_id=scroll.user_pseudo_id
                    AND pv.ga_session_id=scroll.ga_session_id
                    AND pv.pv_at <= scroll.scroll_at
    LEFT JOIN click ON scroll.user_pseudo_id=click.user_pseudo_id
                    AND scroll.ga_session_id=click.ga_session_id
                    AND scroll.scroll_at <= click.click_at