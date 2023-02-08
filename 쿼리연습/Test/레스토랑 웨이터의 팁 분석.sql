SELECT day, time, ROUND(AVG(tip),2) avg_tip, ROUND(AVG(size),2) avg_size
FROM tips
GROUP BY day, time
ORDER BY day, time