WITH step1 AS (
  SELECT user_pseudo_id
       , event_timestamp_kst
       , LAG(event_timestamp_kst, 1) OVER (PARTITION BY user_pseudo_id ORDER BY event_timestamp_kst) AS last_event_timestamp
       , LEAD(event_timestamp_kst, 1) OVER (PARTITION BY user_pseudo_id ORDER BY event_timestamp_kst) AS next_event_timestamp
       , ROW_NUMBER() OVER () AS id
  FROM ga
  WHERE user_pseudo_id="S3WDQCqLpK"
  ORDER BY user_pseudo_id, event_timestamp_kst
), step2 AS (
  SELECT user_pseudo_id
       , event_timestamp_kst
       , TIMESTAMPDIFF(SECOND, last_event_timestamp, event_timestamp_kst) AS last_event
       , TIMESTAMPDIFF(SECOND, event_timestamp_kst, next_event_timestamp) AS next_event
      -- , next_event_timestamp - occurred_at AS next_event
       , id
  FROM step1
), step3 AS (
  SELECT step2.*
       , CASE WHEN last_event >= 3600 THEN id
        		  WHEN last_event IS NULL THEN id
        		  ELSE LAG(id, 1) OVER (PARTITION BY user_pseudo_id ORDER BY id) 
         END AS session
  FROM step2
  WHERE last_event >= 3600
  OR next_event >= 3600 
  OR last_event IS NULL
  OR next_event IS NULL   
), step4 AS (
  SELECT user_pseudo_id
       , session
       , MIN(event_timestamp_kst) AS session_start
       , MAX(event_timestamp_kst) AS session_end
  FROM step3
  GROUP BY user_pseudo_id, session
)

SELECT user_pseudo_id, session_start, session_end
FROM step4
ORDER BY session_start