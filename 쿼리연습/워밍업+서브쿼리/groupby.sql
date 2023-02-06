-- Q. 요일별 매출액을 집계해주세요. 매출액은 반올림하여 소수점 둘째자리까지만 출력해주세요.
SELECT day
      , ROUND(sum(total_bill),2) AS sales
FROM tips
GROUP BY day