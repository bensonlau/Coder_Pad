###Answering some questions about dataset provided

#Add Full Name
CREATE table coder_pad_practice.employees_updated
as
SELECT
e.*,
concat(e.first_name," ",e.last_name) as full_name
FROM coder_pad_practice.employees e
;

#Number of Employees per department
SELECT
	name,
    count(e.id)
FROM
	coder_pad_practice.employees e
JOIN
	coder_pad_practice.departments d
		on e.department_id=d.id
group by 1
order by 2 desc
;


#Number of Projects per employee
SELECT
	full_name,
    count(p.id)
FROM
	coder_pad_practice.employees_updated eu
JOIN
	coder_pad_practice.employees_projects ep
		on eu.id=ep.employee_id
join coder_pad_practice.projects p
		on p.id=ep.project_id
group by 1
order by 2 desc
;

#Number of employees on each project
SELECT
	p.title,
    count(eu.id)
FROM
	coder_pad_practice.employees_updated eu
JOIN
	coder_pad_practice.employees_projects ep
		on eu.id=ep.employee_id
join coder_pad_practice.projects p
		on p.id=ep.project_id
group by 1
order by 2 desc
;

#Who were the employees on the project
SELECT
	p.title,
    count(eu.id),
    group_concat(distinct eu.full_name order by eu.full_name asc)
FROM
	coder_pad_practice.employees_updated eu
JOIN
	coder_pad_practice.employees_projects ep
		on eu.id=ep.employee_id
join coder_pad_practice.projects p
		on p.id=ep.project_id
group by 1
order by 2 desc
;

SELECT
	p.title,
    p.budget,
    count(eu.id) as number_of_employees,
    group_concat(distinct eu.full_name order by eu.full_name asc) as names_of_employees,
    group_concat(distinct salary order by eu.full_name asc) as salary_of_employees,
    sum(eu.salary) as total_salary_employees_on_project
    
FROM
	coder_pad_practice.employees_updated eu
JOIN
	coder_pad_practice.employees_projects ep
		on eu.id=ep.employee_id
join coder_pad_practice.projects p
		on p.id=ep.project_id
group by 1,2
order by 2 desc
;



