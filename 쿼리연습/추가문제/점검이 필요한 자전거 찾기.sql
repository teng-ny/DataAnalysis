SELECT bike_id
FROM rental_history
WHERE DATE_FORMAT(rent_at, "%Y-%m") = "2021-01"
GROUP BY bike_id
HAVING SUM(distance) >= 50000