### 📁 데이터 분석을 위한 SQL쿼리 연습을 정리하는 폴더


    SELECT 그룹해보고싶은 컬럼, SUM(컬럼1), AVG(컬럼2)    
    FROM  
    WHERE  
    GROUP BY 그룹해보고싶은 컬럼  
    HAVING  
    ORDER BY  
  
- GROUP BY를 실행하기 전에 WHERE문을 실행함, 때문에 group by 결과물  
- 쿼리 실행 순서 : FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT  
(MySQL에서, GROUP BY와 HAVING에서 SELECT 절의 별칭을 사용할 수 있는 기능을 제공하므로 이 부분은 예외적)
