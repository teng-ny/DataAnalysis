 -- Q. 각 영수 금액이, 요일 별 매출액에서 차지하는 비율을 계산해주세요. 비율은 반올림하여 소수점 둘째자리까지만 출력해주세요. 영수 금액이 높은 것부터 출력해주세요.
 
WITH daily AS (
SELECT day, SUM(total_bill) AS sales
FROM tips
GROUP BY day
)

SELECT t.day, t.total_bill, ROUND(t.total_bill/d.sales*100, 2) AS pct
FROM tips t INNER JOIN daily d
ON t.day=d.day
ORDER BY total_bill DESC