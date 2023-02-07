-- Q. 요일 별로 가장 높은 금액의 결제 내역들을 출력해주세요.
-- 서브쿼리 결과값은은 컬럼이 n개여도 가능

SELECT *
FROM tips
WHERE (day, total_bill) IN (
  SELECT day, MAX(total_bill)
  FROM tips
  GROUP BY day
)