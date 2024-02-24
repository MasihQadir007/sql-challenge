SELECT
    DE.emp_no,
    E.last_name,
    E.first_name,
    DE.dept_no,
    D.dept_name
FROM
    DepartmentEmployees AS DE
JOIN
    Employees AS E ON DE.emp_no = E.emp_no
JOIN
    Departments AS D ON DE.dept_no = D.dept_no;
