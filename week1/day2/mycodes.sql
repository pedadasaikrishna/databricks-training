
**Query 11**

    select name from Employee where year(hire_date)=2020;

| name       |
| ---------- |
| John Doe   |
| Hannah Lee |

---

**Query 12**

    select name from Employee where month(hire_date)=01;

| name     |
| -------- |
| John Doe |

---


**Query 13**

    select name from Employee where hire_date<'2019-01-01';

| name        |
| ----------- |
| Bob Brown   |
| Grace Kelly |

---

**Query 14**

    select name from Employee where hire_date>='2021-03-01';

| name        |
| ----------- |
| Alice Blue  |
| David Green |
| Eve Black   |
| Frank White |

---

**Query 15**

    SELECT name
    FROM Employee
    WHERE hire_date >= CURDATE() - INTERVAL 2 YEAR;
| name        |
| ----------- |

---


**Query 16**

    SELECT sum(salary) 
    FROM Employee ;

| sum(salary) |
| ----------- |
| 576000.0    |

---

**Query 17**

    SELECT AVG(salary) 
    FROM Employee;

| AVG(salary) |
| ----------- |
| 57600.0     |

---

**Query 18**

    SELECT min(salary) 
    FROM Employee;

| min(salary) |
| ----------- |
| 45000.0     |

---




**Query 19**

    SELECT department_id, COUNT(*) as count 
    FROM Employee
    GROUP BY department_id;

| department_id | count |
| ------------- | ----- |
|               | 1     |
| 1             | 3     |
| 2             | 2     |
| 3             | 2     |
| 4             | 2     |

---


**Query 20**

    SELECT department_id, AVG(salary) AS avg_salary
    FROM Employee
    GROUP BY department_id;

| department_id | avg_salary |
| ------------- | ---------- |
|               | 48000.0    |
| 1             | 65000.0    |
| 2             | 55000.0    |
| 3             | 50000.0    |
| 4             | 61500.0    |

---
