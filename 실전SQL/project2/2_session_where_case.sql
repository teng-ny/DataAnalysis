SELECT bounds.*,
      --last_event가 10분 이상이면 session컬럼에 id를 그대로
	    CASE WHEN last_event >= INTERVAL '10 MINUTE' THEN id
	         --last_event가 NULL이면 session컬럼에 id를 그대로
	         WHEN last_event IS NULL THEN id
	         --id를 하나씩 뒤로 밀어라
	         ELSE LAG(id,1) OVER (PARTITION BY user_id ORDER BY occurred_at) END AS session
	         --id가 같다면 같은 세션으로 묶음
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
--세션의 시작과 끝만 남기고 중간 과정은 다 삭제
WHERE last_event >= INTERVAL '10 MINUTE'
  OR next_event >= INTERVAL '10 MINUTE'
  OR last_event IS NULL
 	 OR next_event IS NULL   