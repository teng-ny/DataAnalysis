-- Q. 이 레스토랑의 요일 별 총 매출액 평균을 구해주세요.
-- FROM절 서브쿼리에는 꼭 별칭을 붙여줘야함

SELECT *
FROM(
  SELECT day, SUM(total_bill) sales
  FROM tips
  GROUP BY day
) AS daily
