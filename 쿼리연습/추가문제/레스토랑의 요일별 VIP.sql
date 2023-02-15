SELECT *
FROM tips
WHERE (day, total_bill) IN (
  SELECT day, MAX(total_bill)
  FROM tips
  GROUP BY day
)