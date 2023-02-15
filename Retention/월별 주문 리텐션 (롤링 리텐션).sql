WITH customer AS (
  SELECT customer_id
      , first_order_date
      , last_order_date
        ,DATE_FORMAT(first_order_date, '%Y-%m-01') AS first_order_month
        ,DATE_FORMAT(last_order_date, '%Y-%m-01') AS last_order_month
  FROM customer_stats
)

SELECT first_order_month
    , COUNT(DISTINCT customer_id) AS month0
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 1 MONTH) <= last_order_month THEN customer_id END) AS month1
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 2 MONTH) <= last_order_month THEN customer_id END) AS month2
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 3 MONTH) <= last_order_month THEN customer_id END) AS month3
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 4 MONTH) <= last_order_month THEN customer_id END) AS month4
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 5 MONTH) <= last_order_month THEN customer_id END) AS month5
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 6 MONTH) <= last_order_month THEN customer_id END) AS month6
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 7 MONTH) <= last_order_month THEN customer_id END) AS month7
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 8 MONTH) <= last_order_month THEN customer_id END) AS month8
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 9 MONTH) <= last_order_month THEN customer_id END) AS month9
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 10 MONTH) <= last_order_month THEN customer_id END) AS month10
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 11 MONTH) <= last_order_month THEN customer_id END) AS month11
FROM customer
GROUP BY first_order_month
ORDER BY first_order_month