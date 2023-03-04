-- Q. 서브 카테고리 별 매출액(sales)을 계산하고 그 매출액이 각 서브 카테고리가 속해있는 카테고리 안에서 비중을 얼마나 차지하는지, 그리고 전체 매출액에서 비중을 얼마나 차지하는지 각각 계산해주세요. 결과물은 아래 모양을 참고하세요.
-- *실무를 하다보면 카테고리가 전체 매출액에서 차지하는 비중, 그래서 우리사업에 어떤것이 가장 중요하냐.. 이런걸 분석할 일이 많음! 복습자료로 쿼리를 주니 링크를 잘 가지고 있다가 활용할 것!
SELECT category
     , sub_category
     , ROUND(sum_sales, 2) AS sales_sub_category
     , ROUND(SUM(sum_sales) OVER (PARTITION BY category), 2) AS sales_category
     , ROUND(SUM(sum_sales) OVER (), 2) AS sales_total
     , ROUND(sum_sales / SUM(sum_sales) OVER (PARTITION BY category), 2) AS pct_in_category
     , ROUND(sum_sales / SUM(sum_sales) OVER (), 2) AS pct_in_total
FROM (
  SELECT category
       , sub_category
       , SUM(sales) AS sum_sales
  FROM records
  GROUP BY category, sub_category
  ) AS sales