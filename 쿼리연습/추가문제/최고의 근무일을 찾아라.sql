WITH total AS (
SELECT day
     , SUM(tip) AS tip_daily
FROM tips
GROUP BY day)

SELECT *
FROM total
WHERE tip_daily = (SELECT MAX(tip_daily) FROM total)