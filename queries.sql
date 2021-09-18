select t.title, count(t.title) 
from employees e 
     left join titles t on e.emp_no = t.emp_no 
where e.birth_date > '1965-01-01' 
group by t.title;




select t.title, avg(s.salary) as 'Average Salary' 
from titles t  
     left join salaries s on t.emp_no = s.emp_no  
group by t.title;




select sum(s.salary) as 'Total Marketing Dept. Salaries' 
from salaries s   
     left join dept_emp de on s.emp_no = de.emp_no
     left join departments d on de.dept_no = d.dept_no 
where de.from_date >= '1990-01-01' 
  and de.from_date < '1993-01-01'
  and d.dept_name = 'Marketing';
      
      