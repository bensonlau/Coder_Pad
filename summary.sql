##Summary (counts)

SELECT * FROM coder_pad_practice.employees;
/* 
+----+------------+-----------+--------+---------------+
| id | first_name | last_name | salary | department_id |
+----+------------+-----------+--------+---------------+
|  1 | John       | Smith     |  20000 |             1 |
|  2 | Ava        | Muffinson |  10000 |             5 |
|  3 | Cailin     | Ninson    |  30000 |             2 |
|  4 | Mike       | Peterson  |  20000 |             2 |
|  5 | Ian        | Peterson  |  80000 |             2 |
|  6 | John       | Mills     |  50000 |             3 |
+----+------------+-----------+--------+---------------+
*/

SELECT * FROM coder_pad_practice.departments;
/*
+----+-------------+
| id | name        |
+----+-------------+
|  1 | Reporting   |
|  2 | Engineering |
|  3 | Marketing   |
|  4 | Biz Dev     |
|  5 | Silly Walks |
+----+-------------+
*/

SELECT * from coder_pad_practice.projects;
/*
+----+--------------------------+------------+------------+---------+
| id | title                    | start_date | end_date   | budget  |
+----+--------------------------+------------+------------+---------+
|  1 | Build a cool site        | 2011-10-28 | 2012-01-26 | 1000000 |
|  2 | Update TPS Reports       | 2011-07-20 | 2011-10-28 |  100000 |
|  3 | Design 3 New Silly Walks | 2009-05-11 | 2009-08-19 |     100 |
+----+--------------------------+------------+------------+---------+
*/

SELECT * from coder_pad_practice.employees_projects;
/*
+------------+-------------+
| project_id | employee_id |
+------------+-------------+
|          2 |           1 |
|          3 |           2 |
|          1 |           3 |
|          1 |           4 |
|          1 |           5 |
+------------+-------------+
*/


SELECT count(*) FROM coder_pad_practice.employees;
/*
+----------+
| count(*) |
+----------+
|        6 |
+----------+
*/

SELECT count(*) FROM coder_pad_practice.departments;
/*
+----------+
| count(*) |
+----------+
|        5 |
+----------+
*/

SELECT count(*) FROM coder_pad_practice.projects;
/*
+----------+
| count(*) |
+----------+
|        3 |
+----------+
*/

SELECT count(*) FROM coder_pad_practice.employees_projects;
/*
+----------+
| count(*) |
+----------+
|        5 |
+----------+
*/

########Add in some fields of use
INSERT INTO employees e
SELECT
concat(e.first_name,"",e.last_name) as full_name
FROM employees
;