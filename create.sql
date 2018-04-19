/*
###############MySQL################

Data Structure

employees                             projects
+---------------+---------+           +---------------+---------+
| id            | int     |<----+  +->| id            | int     |
| first_name    | varchar |     |  |  | title         | varchar |
| last_name     | varchar |     |  |  | start_date    | date    |
| salary        | int     |     |  |  | end_date      | date    |
| department_id | int     |--+  |  |  | budget        | int     |
+---------------+---------+  |  |  |  +---------------+---------+
                             |  |  |
departments                  |  |  |  employees_projects
+---------------+---------+  |  |  |  +---------------+---------+
| id            | int     |<-+  |  +--| project_id    | int     |
| name          | varchar |     +-----| employee_id   | int     |
+---------------+---------+           +---------------+---------+

*/
/* SELECT * FROM employees;

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
##Creating tables to practice

CREATE SCHEMA coder_pad_practice;
##
DROP TABLE if exists coder_pad_practice.employees;

CREATE TABLE coder_pad_practice.employees
(
	id INT not null,
	first_name VARCHAR (15) not null,
	last_name VARCHAR (15) not null,
	salary INT not null,
	department_id INT not null
);

INSERT INTO coder_pad_practice.employees
VALUES
	('1','John','Smith','20000','1'),
    ('2','Ava','Muffinson','10000','5'),
    ('3','Cailin','Ninson','30000','2'),
    ('4','Mike','Peterson','20000','2'),
    ('5','Ian','Peterson','80000','2'),
    ('6','John','Mills','50000','3')
;

##Double checking the tables
SELECT
	*
FROM coder_pad_practice.employees;
;

##S