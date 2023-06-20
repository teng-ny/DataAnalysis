WITH mento AS (
  SELECT *
  FROM employees
  WHERE join_date <= "2019-12-31"
), menti AS (
SELECT *
FROM employees
WHERE join_date BETWEEN "2021-09-30" AND "2021-12-31")

SELECT menti.employee_id AS mentee_id
     , menti.name AS mentee_name
     , mento.employee_id AS mentor_id
     , mento.name AS mentor_name
FROM menti
  LEFT JOIN mento ON menti.department<>mento.department
ORDER BY menti.employee_id ASC, mento.employee_id ASC