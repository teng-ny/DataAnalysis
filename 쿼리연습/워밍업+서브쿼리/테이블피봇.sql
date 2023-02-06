-- Q. 아래 형식에 맞춰 요일별, 시간대별 매출액을 집계해주세요. 매출액은 반올림하여 소수점 둘째자리까지만 출력해주세요.
SELECT day
      , ROUND(sum(IF(time = 'Lunch', total_bill, 0)),2) AS lunch
      , ROUND(sum(IF(time = 'Dinner', total_bill, 0)),2) AS dinner
FROM tips
GROUP BY day