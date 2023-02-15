-- Step 1. records 테이블과 customer_stats 테이블을 연결
-- Step 2. 첫 주문일, 주문날짜 데이터를 ‘YYYY-MM-01’ 형태로 가공
-- Step 3. 위 데이터를 사용하여 각 월 별로 첫 구매한 고객이 몇 명인지 계산(전처리 데이터를 WITH문으로 묶음)
-- Step 4. 첫 결제한 달의 다음 달에도 결제한 고객은 몇 명일까?
-- Step 5. 첫 결제한 달로부터 1~11개월 뒤에도 주문한 고객의 수(반복복)
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
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 1 month) = order_month THEN customer_id END) AS month1
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 2 month) = order_month THEN customer_id END) AS month2
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 3 month) = order_month THEN customer_id END) AS month3
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 4 month) = order_month THEN customer_id END) AS month4
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 5 month) = order_month THEN customer_id END) AS month5
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 6 month) = order_month THEN customer_id END) AS month6
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 7 month) = order_month THEN customer_id END) AS month7
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 8 month) = order_month THEN customer_id END) AS month8
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 9 month) = order_month THEN customer_id END) AS month9
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 10 month) = order_month THEN customer_id END) AS month10
    , COUNT(DISTINCT CASE WHEN DATE_ADD(first_order_month, INTERVAL 11 month) = order_month THEN customer_id END) AS month11
FROM records_preprocessed
GROUP BY first_order_month