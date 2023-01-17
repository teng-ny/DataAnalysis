SELECT user_id,
      event_type,
      event_name,
      occurred_at,
      LAG(occurred_at,1) OVER (PARTITION BY user_id ORDER BY occurred_at) AS lag_event,
      LEAD(occurred_at,1) OVER (PARTITION BY user_id ORDER BY occurred_at) AS lead_event,
      occurred_at - LAG(occurred_at,1) OVER (PARTITION BY user_id ORDER BY occurred_at) AS last_event,
      LEAD(occurred_at,1) OVER (PARTITION BY user_id ORDER BY occurred_at) - occurred_at AS next_event,
      ROW_NUMBER() OVER () AS id
FROM tutorial.yammer_events e
WHERE e.event_type = 'engagement'
AND user_id=20 --여러 유저들 중 20만 출력
ORDER BY user_id,occurred_at