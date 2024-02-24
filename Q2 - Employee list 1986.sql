SELECT
    first_name,
    last_name,
    hire_date
FROM
    Employees
WHERE
    EXTRACT(YEAR FROM hire_date) = 1986;
