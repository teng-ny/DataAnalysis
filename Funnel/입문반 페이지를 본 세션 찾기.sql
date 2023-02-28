WITH pv AS (
  SELECT *
  FROM ga
  WHERE page_title="백문이불여일타 SQL 캠프 입문반"
  AND event_name="page_view"
)

SELECT COUNT(DISTINCT ga.user_pseudo_id, ga.ga_session_id) AS total
     , COUNT(DISTINCT ga.user_pseudo_id, ga.ga_session_id) - COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv_no
     , COUNT(DISTINCT pv.user_pseudo_id, pv.ga_session_id) AS pv_yes
FROM ga
LEFT JOIN pv ON ga.user_pseudo_id = pv.user_pseudo_id
            AND ga.ga_session_id = pv.ga_session_id