-- Q. 각 영수 금액이, 요일 별 매출액에서 차지하는 비율을 계산해주세요. 비율은 반올림하여 소수점 둘째자리까지만 출력해주세요. 영수 금액이 높은 것부터 출력해주세요. (SELECT 절 서브쿼리 풀이)

SELECT t1.day
      ,t1.total_bill
      ,(SELECT SUM(total_bill) FROM tips t2 WHERE t2.day=t1.day) AS sales
      ,ROUND(t1.total_bill*100/(SELECT SUM(total_bill) FROM tips t2 WHERE t2.day=t1.day), 2) AS pct
FROM tips t1
ORDER BY t1.total_bill DESC