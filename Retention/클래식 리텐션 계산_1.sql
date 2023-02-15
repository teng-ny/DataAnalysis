-- Step 1. records 테이블과 customer_stats 테이블을 연결
-- Step 2. 첫 주문일, 주문날짜 데이터를 ‘YYYY-MM-01’ 형태로 가공
-- Step 3. 위 데이터를 사용하여 각 월 별로 첫 구매한 고객이 몇 명인지 계산(전처리 데이터를 WITH문으로 묶음)
-- Step 4. 첫 결제한 달의 다음 달에도 결제한 고객은 몇 명일까?
WITH records_preprocessed AS (
  SELECT r.customer_id
       , r.order_id
       , r.order_date
       , c.first_order_date
       , DATE_FORMAT(r.order_date, "%Y-%m-01") AS order_month
       , DATE_FORMAT(c.first_order_date, "%Y-%m-01") AS first_order_month
  FROM records AS r
      INNER JOIN customer_stats AS c ON r.customer_id=c.customer_id
)

SELECT first_order_month
    , COUNT(DISTINCT customer_id) AS month0
FROM records_preprocessed
GROUP BY first_order_month