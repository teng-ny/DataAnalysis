WITH commerce AS (
SELECT region, category, COUNT(DISTINCT order_id) AS num
FROM records
GROUP BY region, category
)

SELECT region AS Region
      ,SUM(IF(category='Furniture', num, 0)) AS "Furniture"
      ,SUM(IF(category='Office Supplies', num, 0)) AS "Office Supplies"
      ,SUM(IF(category='Technology', num, 0)) AS "Technology"
FROM commerce
GROUP BY region
ORDER BY region