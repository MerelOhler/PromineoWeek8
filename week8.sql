select title, count(*) as 'employee count' from titles T
inner join employees E on e.emp_no = t.emp_no
where e.birth_date > '1965-01-01'
group by title
order by title;

select title, avg(salary) as 'Average Salary' from titles T
inner join salaries S on s.emp_no = T.emp_no
group by title
order by title;

select D.dept_name as 'Department name', sum(S.salary) as 'Total salary' from salaries S
inner join dept_emp DE on DE.emp_no = S.emp_no
inner join departments D on D.dept_no = DE.dept_no
where D.dept_name = 'Marketing' and S.from_date >= '1990-01-01' and S.to_date < '1993-01-01';

