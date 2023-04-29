WITH record AS (
  SELECT *
  FROM records
  WHERE medal IS NOT NULL
  AND game_id IN (SELECT DISTINCT id FROM games WHERE year >= 2000))

SELECT name
FROM athletes
WHERE id IN (
  SELECT athlete_id
  FROM record
    LEFT JOIN teams ON record.team_id=teams.id
  GROUP BY athlete_id
  HAVING COUNT(DISTINCT team)>=2)
ORDER BY name ASC;