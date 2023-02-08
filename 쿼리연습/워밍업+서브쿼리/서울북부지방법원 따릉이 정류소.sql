-- station 테이블에는 따릉이 정류소에 대한 정보
-- '서울북부지방법원' 정류소보다 북쪽에 있는 정류소 정보를 출력하는 쿼리를 작성
-- 쿼리 결과에는 station 테이블에 있는 모든 컬럼이 출력

SELECT *
FROM station
WHERE lat > (
  SELECT lat
  FROM station
  WHERE name = '서울북부지방법원'
)