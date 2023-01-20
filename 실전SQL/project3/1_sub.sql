SELECT * 
FROM (
  SELECT u.user_id,
         u.activated_at,
         ex.experiment,
         ex.experiment_group,
         ex.occurred_at,
         COUNT(e.user_id) AS cnt_send_message
    FROM tutorial.yammer_experiments ex
         INNER JOIN tutorial.yammer_users u ON ex.user_id = u.user_id
         LEFT JOIN tutorial.yammer_events e ON ex.user_id=e.user_id
                  AND e.occurred_at BETWEEN ex.occurred_at AND '2014-06-30 23:59:59'
                  AND e.event_name='send_message'
  WHERE experiment = 'publisher_update'
  GROUP BY u.user_id, u.activated_at, ex.experiment,ex.experiment_group,ex.occurred_at
  ) smbu --send message by user