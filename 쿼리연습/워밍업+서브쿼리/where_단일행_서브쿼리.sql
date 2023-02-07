-- Q. 평균 영수 금액보다 더 많이 지불한 경우를 모두 출력해주세요.
-- 19.7859..
-- WHERE절 서브쿼리 값은 단일값이여야함!!

SELECT *
FROM tips
WHERE total_bill > (SELECT AVG(total_bill) FROM tips)
-- WHERE절 서브쿼리는 비교연산자와 함께 많이 사용(=, >, <)