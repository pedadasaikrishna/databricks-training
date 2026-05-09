
**Query 46**

    select name from Employee 
    where salary = (select max(salary) from Employee);

| name      |
| --------- |
| Bob Brown |

---



**Query 47**

    SELECT name
    FROM Employee
    WHERE salary > (
        SELECT AVG(salary)
        FROM Employee
    );

| name        |
| ----------- |
| Jane Smith  |
| Bob Brown   |
| David Green |
| Grace Kelly |

---


**Query 48**

    SELECT name
    FROM Employee
    WHERE salary = (
        SELECT MAX(salary)
        FROM Employee
        WHERE salary < (
            SELECT MAX(salary)
            FROM Employee
        )
    );

| name        |
| ----------- |
| David Green |

---

**Query 49**

    select d.name
    from Department d, Employee e
    where d.department_id=e.department_id
    group by d.department_id
    order by count(*) desc
    limit 1;

| name |
| ---- |
| IT   |

---

**Query 50**

    select name
    from Employee e
    where salary>(
    select avg(salary)
    from Employee
    where department_id=e.department_id
    );

| name        |
| ----------- |
| Bob Brown   |
| Grace Kelly |
| David Green |

---

**Query 51**

    select distinct salary
    from Employee
    order by salary desc
    limit 2,1;

| salary  |
| ------- |
| 65000.00 |

---

**Query 52**

    select name
    from Employee
    where age>(
    select max(age)
    from Employee
    where department_id=2
    );

| name      |
| --------- |
| Bob Brown |
| Eve Black |

---

**Query 53**

    select d.name
    from Department d,Employee e
    where d.department_id=e.department_id
    group by d.department_id
    having avg(salary)>55000;

| name      |
| --------- |
| IT        |
| Marketing |

---

**Query 54**

    select name
    from Employee
    where department_id in(
    select department_id
    from Project
    group by department_id
    having count(*)>=2
    );

| name        |
| ----------- |
| John Doe    |
| Bob Brown   |
| Alice Blue  |
| David Green |
| Eve Black   |
| Grace Kelly |
| Hannah Lee  |

---

**Query 55**

    select name
    from Employee
    where hire_date=(
    select hire_date
    from Employee
    where name='Jane Smith'
    );

| name       |
| ---------- |
| Jane Smith |

---

**Query 56**

    select sum(salary)
    from Employee
    where year(hire_date)=2020;

| sum(salary) |
| ----------- |
| 103000.00   |

---

**Query 57**

    select d.name,avg(salary)
    from Employee e,Department d
    where e.department_id=d.department_id
    group by d.department_id
    order by avg(salary) desc;

| name      | avg(salary) |
| --------- | ----------- |
| IT        | 65000.00    |
| Marketing | 61500.00    |
| HR        | 55000.00    |
| Finance   | 50000.00    |

---

**Query 58**

    select d.name
    from Department d,Employee e
    where d.department_id=e.department_id
    group by d.department_id
    having count(*)>1 and avg(salary)>55000;

| name      |
| --------- |
| IT        |
| Marketing |

---

**Query 59**

    select name,hire_date
    from Employee
    where hire_date>=date_sub(curdate(),interval 2 year)
    order by hire_date;

There are no results to be displayed.

---

**Query 60**

    select department_id,count(*),avg(salary)
    from Employee
    group by department_id
    having count(*)>2;

| department_id | count(*) | avg(salary) |
| ------------- | -------- | ----------- |
| 1             | 3        | 65000.00    |

---

**Query 61**

    select name,salary
    from Employee e
    where salary>(
    select avg(salary)
    from Employee
    where department_id=e.department_id
    );

| name        | salary   |
| ----------- | -------- |
| Bob Brown   | 80000.00 |
| Grace Kelly | 65000.00 |
| David Green | 70000.00 |

---

**Query 62**

    select name
    from Employee
    where hire_date=(
    select hire_date
    from Employee
    where age=(
    select max(age)
    from Employee
    )
    );

| name      |
| --------- |
| Bob Brown |

---

**Query 63**

    select d.name,count(p.project_id)
    from Department d left join Project p
    on d.department_id=p.department_id
    group by d.department_id
    order by count(p.project_id) desc;

| name      | count(p.project_id) |
| --------- | ------------------- |
| IT        | 3                   |
| Finance   | 2                   |
| Marketing | 2                   |
| HR        | 1                   |

---

**Query 64**

    select d.name,e.name,e.salary
    from Employee e,Department d
    where e.department_id=d.department_id
    and salary=(
    select max(salary)
    from Employee
    where department_id=e.department_id
    );

| name      | name        | salary   |
| --------- | ----------- | -------- |
| IT        | Bob Brown   | 80000.00 |
| HR        | Jane Smith  | 60000.00 |
| Finance   | Eve Black   | 55000.00 |
| Marketing | David Green | 70000.00 |

---

**Query 65**

    select name,salary
    from Employee e
    where age>(
    select avg(age)
    from Employee
    where department_id=e.department_id
    );

| name        | salary   |
| ----------- | -------- |
| Bob Brown   | 80000.00 |
| Jane Smith  | 60000.00 |
| Eve Black   | 55000.00 |
| David Green | 70000.00 |

---