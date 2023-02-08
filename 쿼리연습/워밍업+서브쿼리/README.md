📑DATA : Brazilian E-Commerce Public Dataset by Olist 데이터셋은 브라질의 이커머스 웹사이트인 Olist Store의 판매 데이터
1) 온라인 쇼핑몰이라면 이러한 포맷으로 데이터를 많이 사용
2) 배송 서비스를 가지고 있는 회사라면 배송예정일 이내에 배송을 하였는지하는 지표를 계산하므로 참고할것

### *서브쿼리*
위치에 따라 WHERE절 서브쿼리, FROM절 서브쿼리, SELECT절 서브쿼리  
가장 중요한 것은 FROM절 서브쿼리  
그다음 중요한 것은 WHERE절 서브쿼리  

#### (1) *WHERE절 서브쿼리*
- [단일행 서브쿼리](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%BF%BC%EB%A6%AC%EC%97%B0%EC%8A%B5/%EC%9B%8C%EB%B0%8D%EC%97%85%2B%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC/where_%EB%8B%A8%EC%9D%BC%ED%96%89_%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC.sql) (>, <, = 등의 비교연산자 사용)
- [다중행 서브쿼리](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%BF%BC%EB%A6%AC%EC%97%B0%EC%8A%B5/%EC%9B%8C%EB%B0%8D%EC%97%85%2B%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC/where_%EB%8B%A8%EC%9D%BC%ED%96%89_%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC.sql) (IN 사용)
- [다중컬럼 서브쿼리](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%BF%BC%EB%A6%AC%EC%97%B0%EC%8A%B5/%EC%9B%8C%EB%B0%8D%EC%97%85%2B%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC/where_%EB%8B%A4%EC%A4%91%EC%BB%AC%EB%9F%BC_%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC.sql) (중요도 낮음)

#### (2) *FROM절 서브쿼리*
- [from절 서브쿼리](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%BF%BC%EB%A6%AC%EC%97%B0%EC%8A%B5/%EC%9B%8C%EB%B0%8D%EC%97%85%2B%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC/from_%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC.sql) (별칭 꼭 붙여줘야함!!)
- [with문](https://github.com/teng-ny/DataAnalysis/blob/main/%EC%BF%BC%EB%A6%AC%EC%97%B0%EC%8A%B5/%EC%9B%8C%EB%B0%8D%EC%97%85%2B%EC%84%9C%EB%B8%8C%EC%BF%BC%EB%A6%AC/with%EB%AC%B8%ED%99%9C%EC%9A%A9.sql) (from절 서브쿼리와 의미 비슷) --새로운 테이블의 정의를 쿼리와 분리해서 쓸 수 있어서 많이 사용함  
-> ~WITH문은 테이블을 만들어서 저장하는 문법은 아님. 쿼리를 실행할때에만 유효한 임시 결과물을 만들어서 별칭을 붙여줌!~

