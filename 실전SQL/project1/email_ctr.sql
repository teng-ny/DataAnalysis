SELECT DATE_TRUNC('week', e1.occurred_at) AS week
--pivot으로 세보기
      , COUNT(CASE WHEN e1.action = 'sent_weekly_digest' THEN e1.user_id ELSE NULL END) AS weekly_digest_email
      , COUNT(CASE WHEN e1.action = 'sent_weekly_digest' THEN e2.user_id ELSE NULL END) AS weekly_digest_email_open
      , COUNT(CASE WHEN e1.action = 'sent_weekly_digest' THEN e3.user_id ELSE NULL END) AS weekly_digest_email_clickthrough
FROM tutorial.yammer_emails e1
      LEFT JOIN tutorial.yammer_emails e2
            ON e2.occurred_at BETWEEN e1.occurred_at AND e1.occurred_at + INTERVAL '5 MINUTE'
            AND e2.user_id=e1.user_id
            AND e2.action='email_open'--특정 이메일을 받았을 때 5분안에 이메일을 열어봤는지 
      LEFT JOIN tutorial.yammer_emails e3
            ON e3.occurred_at BETWEEN e1.occurred_at AND e1.occurred_at + INTERVAL '5 MINUTE' 
            AND e3.user_id=e1.user_id
            AND e3.action='email_clickthrough'--특정 이메일을 받았을 때 5분안에 이메일을 클릭해봤는지     
WHERE e1.occurred_at BETWEEN '2014-06-01 00:00:00' AND '2014-08-31 23:59:59'
AND e1.action IN ('sent_weekly_digest', 'sent_reengagement_email') --sent_weekly_digest이거나 sent_reengagement_email인 것만 가져옴
GROUP BY week