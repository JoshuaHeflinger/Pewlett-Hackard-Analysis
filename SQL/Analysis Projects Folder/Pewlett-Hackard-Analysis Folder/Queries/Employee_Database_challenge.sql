-- Challenge Query # 1

SELECT e.emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
on e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no 



SELECT * FROM retirement_titles


-- CHALLENGE QUERY # 2
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;


--  CHALLENGE QUERY # 3

SELECT COUnt(title), title
into retiring_titles
from unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC

-- CHALLENGE QUERY # 4

SELECT DISTINCT ON (e.emp_no)e.emp_no, first_name, last_name, birth_date, de.from_date, de.to_date, title
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp as de
on e.emp_no = de.emp_no

INNER JOIN titles as t
on e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no 


