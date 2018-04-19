##Summary (counts)

SELECT
count(*)
FROM coder_pad_practice.employees
;
##6 

SELECT
count(*)
FROM departments
;
##6

SELECT
count(*)
FROM projects
;
#3

SELECT
count(*)
FROM employees_projects
;
##5

########Add in some fields of use
INSERT INTO employees e
SELECT
concat(e.first_name,"",e.last_name) as full_name
FROM employees
;