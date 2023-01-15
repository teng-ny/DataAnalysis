SELECT DATE_TRUNC('day', created_at) AS signup_date
      , COUNT(user_id) AS signup_users --가입은 한번만 있으므로 DISTINT를 사용하지 않음
      , COUNT(CASE WHEN activated_at IS NOT NULL THEN user_id ELSE NULL END) AS activated_users
FROM tutorial.yammer_users
WHERE created_at BETWEEN '2014-06-01 00:00:00' AND '2014-08-31 23:59:59'
GROUP BY signup_date