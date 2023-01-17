SELECT user_id,
    session,
    MIN(occurred_at) AS session_start,
    MAX(occurred_at) AS session_end
FROM (
    SELECT bounds.*,
    		    CASE WHEN last_event >= INTERVAL '10 MINUTE' THEN id
    		         WHEN last_event IS NULL THEN id
    		         ELSE LAG(id,1) OVER (PARTITION BY user_id ORDER BY occurred_at) END AS session
      FROM (
           SELECT user_id,
                  event_type,
                  event_name,
                  occurred_at,
                  occurred_at - LAG(occurred_at,1) OVER (PARTITION BY user_id ORDER BY occurred_at) AS last_event,
                  LEAD(occurred_at,1) OVER (PARTITION BY user_id ORDER BY occurred_at) - occurred_at AS next_event,
                  ROW_NUMBER() OVER () AS id
             FROM tutorial.yammer_events e
            WHERE e.event_type = 'engagement'
            AND user_id=20
            ORDER BY user_id,occurred_at
           ) bounds
     WHERE last_event >= INTERVAL '10 MINUTE'
        OR next_event >= INTERVAL '10 MINUTE'
     	 OR last_event IS NULL
    	 	 OR next_event IS NULL   
    ) final
GROUP BY 1,2