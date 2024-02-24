SELECT
    E.emp_no,
    E.last_name,
    E.first_name
FROM
    Employees AS E
JOIN
    DepartmentEmployees AS DE ON E.emp_no = DE.emp_no
JOIN
    Departments AS D ON DE.dept_no = D.dept_no
WHERE
    D.dept_name = 'Sales';
