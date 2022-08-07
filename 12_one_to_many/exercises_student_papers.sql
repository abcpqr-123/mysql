CREATE TABLE students (
   id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(100)
);

CREATE TABLE papers (
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id)
    REFERENCES students(id)
    ON DELETE CASCADE
);

--EXERCISE


SELECT * 
FROM students
INNER JOIN papers
   ON students.id = papers.student_id;




SELECT first_name, title, grade
FROM students
INNER JOIN papers
   ON students.id = papers.student_id;


SELECT first_name, title, grade
FROM students
INNER JOIN papers
   ON students.id = papers.student_id
ORDER BY grade DESC;


-- alt solution


SELECT first_name, title, grade
FROM students
RIGHT JOIN papers
   ON students.id = papers.student_id
ORDER BY grade DESC;



-- PROBLEM 2 


SELECT * FROM students
LEFT JOIN papers
  ON studentS.id = papers.student_id;



SELECT first_name, title, grade FROM students
LEFT JOIN papers
  ON studentS.id = papers.student_id;


-- PROBLEM 3 

SELECT 
first_name, 
IFNULL(title, 'MISSING'),
IFNULL(grade, 0)
FROM students
LEFT JOIN papers
 ON students.id = papers.student_id;


--


SELECT 
first_name, 
-- IFNULL(title, 'MISSING'),
IFNULL(grade, 0)
FROM students
LEFT JOIN papers
 ON students.id = papers.student_id;


-- PROBLEM 4

 SELECT 
*
FROM students
LEFT JOIN papers
 ON students.id = papers.student_id;



SELECT 
first_name,
grade
FROM students
LEFT JOIN papers  
  ON students.id = papers.student_id
GROUP BY student_id;



SELECT 
first_name,
AVG(grade)
FROM students
LEFT JOIN papers  
  ON students.id = papers.student_id
GROUP BY student_id;




SELECT 
first_name,
IFNULL(AVG(grade), 0) AS 'AVG MARKS'
FROM students
LEFT JOIN papers  
  ON students.id = papers.student_id
GROUP BY student_id;


SELECT 
first_name,
IFNULL(AVG(grade), 0) AS 'average'
FROM students
LEFT JOIN papers  
  ON students.id = papers.student_id
GROUP BY student_id
ORDER BY average DESC;