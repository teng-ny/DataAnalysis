-- Q. 요일 별 판매 금액이 1500불 이상인 날의 결제 내역을 모두 출력해주세요.
-- WHERE절 서브쿼리 'Sun', 'Sat' 출력하도록

SELECT *
FROM tips
WHERE day IN (
  SELECT day
  FROM tips
  GROUP BY day
  HAVING SUM(total_bill) >=1500
)