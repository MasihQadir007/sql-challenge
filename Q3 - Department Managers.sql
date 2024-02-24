SELECT
    DM.dept_no,
    D.dept_name,
    DM.emp_no AS manager_employee_number,
    E.last_name AS manager_last_name,
    E.first_name AS manager_first_name
FROM
    DepartmentManagers AS DM
JOIN
    Departments AS D ON DM.dept_no = D.dept_no
JOIN
    Employees AS E ON DM.emp_no = E.emp_no;
