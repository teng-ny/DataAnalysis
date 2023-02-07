-- Q. 이 레스토랑의 요일 별 총 매출액 평균을 구해주세요.
-- WITH문을 사용용
-- WITH 별칭 AS (서브쿼리)

WITH daily AS (
  SELECT day, SUM(total_bill) sales
  FROM tips
  GROUP BY day
  )
  
SELECT *
FROM daily