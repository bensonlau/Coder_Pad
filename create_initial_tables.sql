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

##Creating tables to practice

CREATE SCHEMA coder_pad_practice;

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

DROP TABLE if exists coder_pad_practice.departments;
CREATE TABLE coder_pad_practice.departments
(
	id int not null,
    name varchar(30) not null
);

INSERT INTO coder_pad_practice.departments
VALUES
	('1','Reporting'),
    ('2','Engineering'),
	('3','Marketing'),
    ('4','Biz Dev'),
    ('5','Silly Walks')
;

DROP TABLE if exists coder_pad_practice.projects;
CREATE TABLE coder_pad_practice.projects
(
	id INT not null,
	title VARCHAR (30) not null,
	start_date date not null,
	end_date date not null,
	budget int not null

);

INSERT INTO coder_pad_practice.projects
VALUES
	('1','Build a Cool Site','2011-10-28','2012-01-26','1000000'),
    ('2','Update TPS Reports','2011-07-20','2011-10-28','100000'),
	('3','Design 3 New Silly Walks','2009-05-11','2009-08-19','100')
;

DROP TABLE if exists coder_pad_practice.employees_projects;
CREATE TABLE coder_pad_practice.employees_projects
(

	project_id int not null,
    employee_id int not null

);

INSERT INTO coder_pad_practice.employees_projects
VALUES
	('2','1'),
    ('3','2'),
    ('1','3'),
    ('1','4'),
    ('1','5')
;