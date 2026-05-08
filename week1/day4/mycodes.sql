**Query 31**

    SELECT name
    FROM Employee
    ORDER BY salary ASC;

| name        |
| ----------- |
| Alice Blue  |
| Frank White |
| John Doe    |
| Charlie P.  |
| Hannah Lee  |
| Eve Black   |
| Jane Smith  |
| Grace Kelly |
| David Green |
| Bob Brown   |

---


**Query 32**

    SELECT name
    FROM Employee
    ORDER BY age desc;

| name        |
| ----------- |
| Bob Brown   |
| Eve Black   |
| David Green |
| Jane Smith  |
| Frank White |
| Hannah Lee  |
| Charlie P.  |
| John Doe    |
| Grace Kelly |
| Alice Blue  |

---


**Query 33**

    SELECT name
    FROM Employee
    ORDER BY hire_date asc;

| name        |
| ----------- |
| Bob Brown   |
| Grace Kelly |
| Jane Smith  |
| Charlie P.  |
| John Doe    |
| Hannah Lee  |
| Alice Blue  |
| Frank White |
| Eve Black   |
| David Green |

---


**Query 34**

    SELECT name
    FROM Employee
    ORDER BY department_id, salary;

| name        |
| ----------- |
| Frank White |
| John Doe    |
| Grace Kelly |
| Bob Brown   |
| Charlie P.  |
| Jane Smith  |
| Alice Blue  |
| Eve Black   |
| Hannah Lee  |
| David Green |

---

**Query 35**

    select d.name
    from Employee e
    inner join Department d
    ON e.department_id = d.department_id
    GROUP BY d.name
    ORDER BY SUM(e.salary);

| name      |
| --------- |
| Finance   |
| HR        |
| Marketing |
| IT        |

---



**Query 36**

    select e.name as Employee_Name , d.name as Department 
    from Employee e inner join 
    Department d on e.department_id = d.department_id;

| Employee_Name | Department |
| ------------- | ---------- |
| John Doe      | IT         |
| Bob Brown     | IT         |
| Grace Kelly   | IT         |
| Jane Smith    | HR         |
| Charlie P.    | HR         |
| Alice Blue    | Finance    |
| Eve Black     | Finance    |
| David Green   | Marketing  |
| Hannah Lee    | Marketing  |

---

**Query 37**

    select p.name as Project_Name , d.name as Department 
    from Project p inner join 
    Department d on p.department_id = d.department_id;

| Project_Name    | Department |
| --------------- | ---------- |
| Project Alpha   | IT         |
| Project Gamma   | IT         |
| Project Theta   | IT         |
| Project Beta    | HR         |
| Project Delta   | Finance    |
| Project Eta     | Finance    |
| Project Epsilon | Marketing  |
| Project Zeta    | Marketing  |

---


**Query 38**

    select e.name as Employee_Name , p.name as Project 
    from Employee e inner join 
    Project p on e.department_id = p.department_id;

| Employee_Name | Project         |
| ------------- | --------------- |
| John Doe      | Project Alpha   |
| Bob Brown     | Project Alpha   |
| Grace Kelly   | Project Alpha   |
| Jane Smith    | Project Beta    |
| Charlie P.    | Project Beta    |
| John Doe      | Project Gamma   |
| Bob Brown     | Project Gamma   |
| Grace Kelly   | Project Gamma   |
| Alice Blue    | Project Delta   |
| Eve Black     | Project Delta   |
| David Green   | Project Epsilon |
| Hannah Lee    | Project Epsilon |
| David Green   | Project Zeta    |
| Hannah Lee    | Project Zeta    |
| Alice Blue    | Project Eta     |
| Eve Black     | Project Eta     |
| John Doe      | Project Theta   |
| Bob Brown     | Project Theta   |
| Grace Kelly   | Project Theta   |

---



**Query 39**

    SELECT e.name, d.name
    FROM Employee e
    LEFT JOIN Department d
    ON e.department_id = d.department_id;

| name        | name      |
| ----------- | --------- |
| John Doe    | IT        |
| Bob Brown   | IT        |
| Grace Kelly | IT        |
| Jane Smith  | HR        |
| Charlie P.  | HR        |
| Alice Blue  | Finance   |
| Eve Black   | Finance   |
| David Green | Marketing |
| Hannah Lee  | Marketing |
| Frank White |           |

---

**Query 40**

    SELECT d.name, e.name
    FROM Department d
    LEFT JOIN Employee e
    ON d.department_id = e.department_id;

| name      | name        |
| --------- | ----------- |
| IT        | John Doe    |
| IT        | Bob Brown   |
| IT        | Grace Kelly |
| HR        | Jane Smith  |
| HR        | Charlie P.  |
| Finance   | Alice Blue  |
| Finance   | Eve Black   |
| Marketing | David Green |
| Marketing | Hannah Lee  |

---



**Query 41**

    SELECT e.name
    FROM Employee e
    WHERE e.department_id NOT IN (
        SELECT department_id
        FROM Project
        WHERE department_id IS NOT NULL
    );

There are no results to be displayed.

---

**Query 42**

    SELECT e.name AS ENAME,
    COUNT(p.project_id) AS NoOfProjects
    FROM Employee e
    LEFT JOIN Project p
    ON e.department_id = p.department_id
    GROUP BY e.emp_id, e.name;

| ENAME       | NoOfProjects |
| ------------| -------------|
| John Doe    | 3            |
| Jane Smith  | 1            |
| Bob Brown   | 3            |
| Alice Blue  | 2            |
| Charlie P.  | 1            |
| David Green | 2            |
| Eve Black   | 2            |
| Frank White | 0            |
| Grace Kelly | 3            |
| Hannah Lee  | 2            |

---

**Query 43**

    SELECT d.name
    FROM Department d
    LEFT JOIN Employee e
    ON d.department_id = e.department_id
    WHERE e.emp_id IS NULL;

There are no results to be displayed.

---

**Query 44**

    SELECT name
    FROM Employee
    WHERE department_id = (
        SELECT department_id
        FROM Employee
        WHERE name = 'John Doe'
    );

| name        |
| ----------- |
| John Doe    |
| Bob Brown   |
| Grace Kelly |

---

**Query 45**

    SELECT d.name
    FROM Department d
    JOIN Employee e
    ON d.department_id = e.department_id
    GROUP BY d.department_id, d.name
    ORDER BY AVG(e.salary) DESC
    LIMIT 1;

| name |
| ---- |
| IT   |

---