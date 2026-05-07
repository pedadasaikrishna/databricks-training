

**Query 21**

    select sum(salary) from Employee group by department_id;

| sum(salary) |
| ----------- |
| 48000.0     |
| 195000.0    |
| 110000.0    |
| 100000.0    |
| 123000.0    |

---

**Query 22**

    select avg(age) from Employee group by department_id;

| avg(age) |
| -------- |
| 32.0     |
| 33.3333  |
| 31.5     |
| 32.5     |
| 34.0     |

---

**Query 23**

    select count(*) from Employee group by YEAR(hire_date);

| count(*) |
| -------- |
| 2        |
| 2        |
| 2        |
| 3        |
| 1        |

---

**Query 24**

    select max(salary) from Employee group by department_id;

| max(salary) |
| ----------- |
| 48000.0     |
| 80000.0     |
| 60000.0     |
| 55000.0     |
| 70000.0     |

---

**Query 25**

    SELECT name
    FROM Department
    WHERE department_id = (
        SELECT department_id
        FROM Employee
        GROUP BY department_id
        ORDER BY AVG(salary) DESC
        LIMIT 1
    );

| name |
| ---- |
| IT   |

---

**Query 26**

    SELECT name
    FROM Department
    WHERE department_id in (
        SELECT department_id
        FROM Employee
        GROUP BY department_id
        HAVING COUNT(*)>=2
    );

| name      |
| --------- |
| IT        |
| HR        |
| Finance   |
| Marketing |

---


**Query 27**

    SELECT name
    FROM Department
    WHERE department_id IN (
        SELECT department_id
        FROM Employee
        GROUP BY department_id
        HAVING avg(salary) >55000 
    );

| name      |
| --------- |
| IT        |
| Marketing |

---

**Query 28**

    select year(hire_date) from Employee 
    group by year(hire_date)
    having count(*)>1;

| year(hire_date) |
| --------------- |
| 2018            |
| 2019            |
| 2020            |
| 2021            |

---

**Query 29**

    select name from Department where department_id in (
    select department_id from Employee 
      group by (department_id)
      having sum(salary) < 100000
    );

There are no results to be displayed.

---
**Query 30**

    select name from Department where department_id in (
    select department_id from Employee 
      group by (department_id)
      having max(salary) > 75000
    );

| name |
| ---- |
| IT   |

---