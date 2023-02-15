-- Step 1. customer_stats 테이블의 first_order_date , last_order_date 컬럼을 각각 ‘YYYY-MM-01’ 형식으로 가공
-- Step 2. 위 데이터를 사용하여 각 월 별로 첫 구매한 고객이 몇 명인지 계산
-- Step 3. 첫 주문 한 달 다음 달에도 이탈하지 않은 사용자의 수
WITH customers AS (
  SELECT customer_id
      , first_order_date
      , last_order_date
      , DATE_FORMAT(first_order_date, '%Y-%m-01') AS first_order_month
      , DATE_FORMAT(last_order_date, '%Y-%m-01') AS last_order_month
  FROM customer_stats
)

SELECT first_order_month
     , COUNT(DISTINCT customer_id) AS month0
FROM customers
GROUP BY first_order_month
ORDER BY first_order_month