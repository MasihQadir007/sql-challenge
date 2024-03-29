CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

CREATE TABLE Departments (
    dept_no VARCHAR(5) PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE DepartmentEmployees (
    emp_no INT,
    dept_no VARCHAR(5),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE DepartmentManagers (
    dept_no VARCHAR(5),
    emp_no INT,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries (
    emp_no INT,
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR(50)
);
