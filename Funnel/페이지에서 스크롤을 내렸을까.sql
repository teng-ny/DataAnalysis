WITH pv AS (
SELECT user_pseudo_id
     , ga_session_id
     , event_timestamp_kst AS pv_at
FROM ga
WHERE page_title="백문이불여일타 SQL 캠프 입문반"
AND event_name="page_view"
), scroll AS (
SELECT user_pseudo_id
     , ga_session_id
     , event_timestamp_kst AS scroll_at
FROM ga
WHERE page_title="백문이불여일타 SQL 캠프 입문반"
AND event_name="scroll"
)

SELECT COUNT(DISTINCT ga.user_pseudo_id, ga.ga_session_id) AS total
     , COUNT(DISTINCT ga.user_pseudo_id, ga.ga_session_id) - COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv_no
     , COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) - COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id) AS pv_yes_scroll_no
     , COUNT(DISTINCT scroll.user_pseudo_id, scroll.ga_session_id) AS pv_yes_scroll_yes
FROM ga
  LEFT JOIN pv ON ga.user_pseudo_id=pv.user_pseudo_id
              AND ga.ga_session_id=pv.ga_session_id
              AND ga.event_timestamp_kst <= pv.pv_at
  LEFT JOIN scroll ON pv.user_pseudo_id=scroll.user_pseudo_id
                  AND pv.ga_session_id=scroll.ga_session_id
                  AND pv.pv_at <= scroll.scroll_at