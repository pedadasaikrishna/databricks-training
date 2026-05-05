**Query 1**

    select * from Employee;

| emp_id | name        | age | salary  | department_id | hire_date  |
| ------ | ----------- | --- | ------- | ------------- | ---------- |
| 1      | John Doe    | 28  | 50000.0 | 1             | 2020-01-15 |
| 2      | Jane Smith  | 34  | 60000.0 | 2             | 2019-07-23 |
| 3      | Bob Brown   | 45  | 80000.0 | 1             | 2018-02-12 |
| 4      | Alice Blue  | 25  | 45000.0 | 3             | 2021-03-22 |
| 5      | Charlie P.  | 29  | 50000.0 | 2             | 2019-12-01 |
| 6      | David Green | 38  | 70000.0 | 4             | 2022-05-18 |
| 7      | Eve Black   | 40  | 55000.0 | 3             | 2021-08-30 |
| 8      | Frank White | 32  | 48000.0 |               | 2021-07-10 |
| 9      | Grace Kelly | 27  | 65000.0 | 1             | 2018-11-13 |
| 10     | Hannah Lee  | 30  | 53000.0 | 4             | 2020-02-25 |

---



**Query 2**

    select name , salary from Employee;

| name        | salary  |
| ----------- | ------- |
| John Doe    | 50000.0 |
| Jane Smith  | 60000.0 |
| Bob Brown   | 80000.0 |
| Alice Blue  | 45000.0 |
| Charlie P.  | 50000.0 |
| David Green | 70000.0 |
| Eve Black   | 55000.0 |
| Frank White | 48000.0 |
| Grace Kelly | 65000.0 |
| Hannah Lee  | 53000.0 |

---


**Query 3**

    select name  from Employee where age > 30;

| name        |
| ----------- |
| Jane Smith  |
| Bob Brown   |
| David Green |
| Eve Black   |
| Frank White |

---

**Query 4**

    select name  from Department;

| name      |
| --------- |
| IT        |
| HR        |
| Finance   |
| Marketing |

---


**Query 5**

    select name  from Employee where department_id=(select department_id from Department where name ='IT');

| name        |
| ----------- |
| John Doe    |
| Bob Brown   |
| Grace Kelly |

---


**Query 6**

    select name  from Employee where name like 'J%';

| name       |
| ---------- |
| John Doe   |
| Jane Smith |

---


**Query 7**

    select name  from Employee where name like '%E';

| name        |
| ----------- |
| John Doe    |
| Alice Blue  |
| Frank White |
| Hannah Lee  |

---




**Query 7**

    select name  from Employee where name like '%A%';

| name        |
| ----------- |
| Jane Smith  |
| Alice Blue  |
| Charlie P.  |
| David Green |
| Eve Black   |
| Frank White |
| Grace Kelly |
| Hannah Lee  |

---

**Query 8**

    select name  from Employee where length(name)= 9;

| name      |
| --------- |
| Bob Brown |
| Eve Black |

---

**Query 10**

    select name  from Employee where name like '_O%';

| name      |
| --------- |
| John Doe  |
| Bob Brown |

---
