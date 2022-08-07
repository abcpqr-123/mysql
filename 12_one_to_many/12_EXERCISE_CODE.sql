Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+----------------------+
| Database             |
+----------------------+
| book_shop            |
| cat_app              |
| customers_and_orders |
| information_schema   |
| mysql                |
| new_testing_db       |
| people               |
| performance_schema   |
| shirts_db            |
| sys                  |
+----------------------+
10 rows in set (0.05 sec)

mysql> USE customers_and_orders
Database changed
mysql> SELECT * FROM customers_and_orders
    -> ^C
mysql> SELECT * FROM customers_and_orders;
--ERROR 1146 (42S02): Table 'customers_and_orders.customers_and_orders' doesn't exist
mysql> show tables();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '()' at line 1
mysql>
mysql> SELECT TABLE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE' at line 1
mysql> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASE();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE()' at line 1
mysql> SHOW TABLES
    -> ^C
mysql> SHOW TABLES;
+--------------------------------+
| Tables_in_customers_and_orders |
+--------------------------------+
| customers                      |
| orders                         |
+--------------------------------+
2 rows in set (0.04 sec)

mysql> cd customers
    -> ^C
mysql> cd customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cd customers' at line 1
mysql> USE TABLE customers;
ERROR 1049 (42000): Unknown database 'table'
mysql> SLECT TABLE customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SLECT TABLE customers' at line 1
mysql> SELECT TABLE customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE customers' at line 1
mysql> SELECT * FROM customers;
+----+------------+-----------+-----------------+
| id | first_name | last_name | email           |
+----+------------+-----------+-----------------+
|  2 | George     | Michael   | gm@gmail.com    |
|  3 | David      | Bowie     | david@gmail.com |
|  4 | Blue       | Steele    | blue@gmail.com  |
|  5 | Bette      | Davis     | bette@ael.com   |
+----+------------+-----------+-----------------+
4 rows in set (0.04 sec)

mysql> SELECT * FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+--------+-------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE students (
    ->    id INT AUTO_INCREMENT PRIMARY_KEY,
    ->    first_name VARCHAR(100)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRIMARY_KEY,
   first_name VARCHAR(100)
)' at line 2
mysql> CREATE TABLE students (
    ->    id INT AUTO_INCREMENT PRIMARY KEY,
    ->    first_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> CREATE TABLE papers (
    ->     title VARCHAR(100),
    ->     grade INT,
    ->     student_id INT,
    ->     FOREIGN KEY (student_id)
    ->     REFERENCES students(id)
    ->     ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> SHOW TABLES;
+--------------------------------+
| Tables_in_customers_and_orders |
+--------------------------------+
| customers                      |
| orders                         |
| papers                         |
| students                       |
+--------------------------------+
4 rows in set (0.00 sec)

mysql> DESC students;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| id         | int          | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(100) | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
2 rows in set (0.03 sec)

mysql> DESC papers;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| title      | varchar(100) | YES  |     | NULL    |       |
| grade      | int          | YES  |     | NULL    |       |
| student_id | int          | YES  | MUL | NULL    |       |
+------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO students (first_name) VALUES
    -> ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO papers (student_id, title, grade ) VALUES
    -> (1, 'My First Book Report', 60),
    -> (1, 'My Second Book Report', 75),
    -> (2, 'Russian Lit Through The Ages', 94),
    -> (2, 'De Montaigne and The Art of The Essay', 98),
    -> (4, 'Borges and Magical Realism', 89);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM students;
+----+------------+
| id | first_name |
+----+------------+
|  1 | Caleb      |
|  2 | Samantha   |
|  3 | Raj        |
|  4 | Carlos     |
|  5 | Lisa       |
+----+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM papers;
+---------------------------------------+-------+------------+
| title                                 | grade | student_id |
+---------------------------------------+-------+------------+
| My First Book Report                  |    60 |          1 |
| My Second Book Report                 |    75 |          1 |
| Russian Lit Through The Ages          |    94 |          2 |
| De Montaigne and The Art of The Essay |    98 |          2 |
| Borges and Magical Realism            |    89 |          4 |
+---------------------------------------+-------+------------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELECT *
    -> FROM students
    -> INNER JOIN papers
    ->    ON students.id = papers.student_id;
+----+------------+---------------------------------------+-------+------------+
| id | first_name | title                                 | grade | student_id |
+----+------------+---------------------------------------+-------+------------+
|  1 | Caleb      | My First Book Report                  |    60 |          1 |
|  1 | Caleb      | My Second Book Report                 |    75 |          1 |
|  2 | Samantha   | Russian Lit Through The Ages          |    94 |          2 |
|  2 | Samantha   | De Montaigne and The Art of The Essay |    98 |          2 |
|  4 | Carlos     | Borges and Magical Realism            |    89 |          4 |
+----+------------+---------------------------------------+-------+------------+
5 rows in set (0.00 sec)

mysql>
mysql> SELECT first_name, title, grade
    -> FROM students
    -> INNER JOIN papers
    ->    ON students.id = papers.student_id;
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Carlos     | Borges and Magical Realism            |    89 |
+------------+---------------------------------------+-------+
5 rows in set (0.00 sec)

mysql> SELECT first_name, title, grade
    -> FROM students
    -> INNER JOIN papers
    ->    ON students.id = papers.student_id
    -> ORDER BY grade DESC;
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Carlos     | Borges and Magical Realism            |    89 |
| Caleb      | My Second Book Report                 |    75 |
| Caleb      | My First Book Report                  |    60 |
+------------+---------------------------------------+-------+
5 rows in set (0.02 sec)

mysql>
mysql> SELECT first_name, title, grade
    -> FROM students
    -> RIGHT JOIN papers
    ->    ON students.id = papers.student_id
    -> ORDER BY grade DESC;
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Carlos     | Borges and Magical Realism            |    89 |
| Caleb      | My Second Book Report                 |    75 |
| Caleb      | My First Book Report                  |    60 |
+------------+---------------------------------------+-------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELECT * FROM students
    -> LEFT JOIN papers
    ->   ON student_id = papers.student_id;
+----+------------+---------------------------------------+-------+------------+
| id | first_name | title                                 | grade | student_id |
+----+------------+---------------------------------------+-------+------------+
|  1 | Caleb      | Borges and Magical Realism            |    89 |          4 |
|  1 | Caleb      | De Montaigne and The Art of The Essay |    98 |          2 |
|  1 | Caleb      | Russian Lit Through The Ages          |    94 |          2 |
|  1 | Caleb      | My Second Book Report                 |    75 |          1 |
|  1 | Caleb      | My First Book Report                  |    60 |          1 |
|  2 | Samantha   | Borges and Magical Realism            |    89 |          4 |
|  2 | Samantha   | De Montaigne and The Art of The Essay |    98 |          2 |
|  2 | Samantha   | Russian Lit Through The Ages          |    94 |          2 |
|  2 | Samantha   | My Second Book Report                 |    75 |          1 |
|  2 | Samantha   | My First Book Report                  |    60 |          1 |
|  3 | Raj        | Borges and Magical Realism            |    89 |          4 |
|  3 | Raj        | De Montaigne and The Art of The Essay |    98 |          2 |
|  3 | Raj        | Russian Lit Through The Ages          |    94 |          2 |
|  3 | Raj        | My Second Book Report                 |    75 |          1 |
|  3 | Raj        | My First Book Report                  |    60 |          1 |
|  4 | Carlos     | Borges and Magical Realism            |    89 |          4 |
|  4 | Carlos     | De Montaigne and The Art of The Essay |    98 |          2 |
|  4 | Carlos     | Russian Lit Through The Ages          |    94 |          2 |
|  4 | Carlos     | My Second Book Report                 |    75 |          1 |
|  4 | Carlos     | My First Book Report                  |    60 |          1 |
|  5 | Lisa       | Borges and Magical Realism            |    89 |          4 |
|  5 | Lisa       | De Montaigne and The Art of The Essay |    98 |          2 |
|  5 | Lisa       | Russian Lit Through The Ages          |    94 |          2 |
|  5 | Lisa       | My Second Book Report                 |    75 |          1 |
|  5 | Lisa       | My First Book Report                  |    60 |          1 |
+----+------------+---------------------------------------+-------+------------+
25 rows in set (0.00 sec)

mysql> SELECT * FROM students
    -> LEFT JOIN papers
    ->   ON studentS_id = papers.student_id;
ERROR 1054 (42S22): Unknown column 'studentS_id' in 'on clause'
mysql> SELECT * FROM students
    -> LEFT JOIN papers
    ->   ON studentS_id = papers.student_id;
ERROR 1054 (42S22): Unknown column 'studentS_id' in 'on clause'
mysql> SELECT * FROM students
    -> LEFT JOIN papers
    ->   ON studentS.id = papers.student_id;
+----+------------+---------------------------------------+-------+------------+
| id | first_name | title                                 | grade | student_id |
+----+------------+---------------------------------------+-------+------------+
|  1 | Caleb      | My First Book Report                  |    60 |          1 |
|  1 | Caleb      | My Second Book Report                 |    75 |          1 |
|  2 | Samantha   | Russian Lit Through The Ages          |    94 |          2 |
|  2 | Samantha   | De Montaigne and The Art of The Essay |    98 |          2 |
|  3 | Raj        | NULL                                  |  NULL |       NULL |
|  4 | Carlos     | Borges and Magical Realism            |    89 |          4 |
|  5 | Lisa       | NULL                                  |  NULL |       NULL |
+----+------------+---------------------------------------+-------+------------+
7 rows in set (0.00 sec)

mysql>
mysql> SELECT first_name, title, grade FROM students
    -> LEFT JOIN papers
    ->   ON studentS.id = papers.student_id;
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Raj        | NULL                                  |  NULL |
| Carlos     | Borges and Magical Realism            |    89 |
| Lisa       | NULL                                  |  NULL |
+------------+---------------------------------------+-------+
7 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> SELECT
    -> first_name,
    -> IFNULL(title, 'MISSING'),
    -> IFFULL(grade, 0)
    -> FROM students
    -> LEFT JOIN papers
    ->  ON students.id = papers.student_id;
ERROR 1305 (42000): FUNCTION customers_and_orders.IFFULL does not exist
mysql>
mysql>
mysql>
mysql> SELECT
    -> first_name,
    -> IFNULL(title, 'MISSING'),
    -> IFNULL(grade, 0)
    -> FROM students
    -> LEFT JOIN papers
    ->  ON students.id = papers.student_id;
+------------+---------------------------------------+------------------+
| first_name | IFNULL(title, 'MISSING')              | IFNULL(grade, 0) |
+------------+---------------------------------------+------------------+
| Caleb      | My First Book Report                  |               60 |
| Caleb      | My Second Book Report                 |               75 |
| Samantha   | Russian Lit Through The Ages          |               94 |
| Samantha   | De Montaigne and The Art of The Essay |               98 |
| Raj        | MISSING                               |                0 |
| Carlos     | Borges and Magical Realism            |               89 |
| Lisa       | MISSING                               |                0 |
+------------+---------------------------------------+------------------+
7 rows in set (0.00 sec)

mysql> SELECT
    -> first_name,
    -> IFNULL(title, 'MISSING'),
    -> IFNULL(grade, 0)
    -> FROM students
    -> LEFT JOIN papers
    ->  ON students.id = papers.student_id;^C
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>  SELECT
    -> *
    -> FROM students
    -> LEFT JOIN papers
    ->  ON students.id = papers.student_id;
+----+------------+---------------------------------------+-------+------------+
| id | first_name | title                                 | grade | student_id |
+----+------------+---------------------------------------+-------+------------+
|  1 | Caleb      | My First Book Report                  |    60 |          1 |
|  1 | Caleb      | My Second Book Report                 |    75 |          1 |
|  2 | Samantha   | Russian Lit Through The Ages          |    94 |          2 |
|  2 | Samantha   | De Montaigne and The Art of The Essay |    98 |          2 |
|  3 | Raj        | NULL                                  |  NULL |       NULL |
|  4 | Carlos     | Borges and Magical Realism            |    89 |          4 |
|  5 | Lisa       | NULL                                  |  NULL |       NULL |
+----+------------+---------------------------------------+-------+------------+
7 rows in set (0.00 sec)

mysql> SELECT
    -> frist_name,
    -> grade
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id;
ERROR 1054 (42S22): Unknown column 'frist_name' in 'field list'
mysql>
mysql>
mysql> SELECT
    -> first_name,
    -> grade
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id;
+------------+-------+
| first_name | grade |
+------------+-------+
| Caleb      |    60 |
| Samantha   |    94 |
| Raj        |  NULL |
| Carlos     |    89 |
+------------+-------+
4 rows in set (0.00 sec)

mysql> SELECT
    -> first_name,
    -> AVG(grade)
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id;
+------------+------------+
| first_name | AVG(grade) |
+------------+------------+
| Caleb      |    67.5000 |
| Samantha   |    96.0000 |
| Raj        |       NULL |
| Carlos     |    89.0000 |
+------------+------------+
4 rows in set (0.01 sec)

mysql>
mysql> SELECT
    -> first_name,
    -> IFNULL(AVG(grade), 0)
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id;
+------------+-----------------------+
| first_name | IFNULL(AVG(grade), 0) |
+------------+-----------------------+
| Caleb      |               67.5000 |
| Samantha   |               96.0000 |
| Raj        |                0.0000 |
| Carlos     |               89.0000 |
+------------+-----------------------+
4 rows in set (0.00 sec)

mysql> SELECT
    -> first_name,
    -> IFNULL(AVG(grade), 0) AS 'AVG MARKS'
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id;
+------------+-----------+
| first_name | AVG MARKS |
+------------+-----------+
| Caleb      |   67.5000 |
| Samantha   |   96.0000 |
| Raj        |    0.0000 |
| Carlos     |   89.0000 |
+------------+-----------+
4 rows in set (0.00 sec)

mysql>
mysql> SELECT
    -> first_name,
    -> IFNULL(AVG(grade), 0) AS 'average'
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id
    -> ORDER BY average;
+------------+---------+
| first_name | average |
+------------+---------+
| Raj        |  0.0000 |
| Caleb      | 67.5000 |
| Carlos     | 89.0000 |
| Samantha   | 96.0000 |
+------------+---------+
4 rows in set (0.00 sec)

mysql> SELECT
    -> first_name,
    -> IFNULL(AVG(grade), 0) AS 'average'
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id
    -> ORDER BY average DESC;
+------------+---------+
| first_name | average |
+------------+---------+
| Samantha   | 96.0000 |
| Carlos     | 89.0000 |
| Caleb      | 67.5000 |
| Raj        |  0.0000 |
+------------+---------+
4 rows in set (0.00 sec)

mysql> SELECTT
    -> ^C
mysql> SELECT
    ->  first_name,
    -> IFNULL(AVG(grade), 0) AS average,
    -> CASE
    ->    WHEN AVG(grade) >= 75 THEN
    -> END AS passing_status
    -> FROM students
    -> ^C
mysql>
mysql>
mysql>
mysql> SELECT
    -> first_name,
    -> IFNULL(AVG(grade), 0) AS 'average'
    -> CASE
    ->    WHEN AVG(grade) >= 75 THEN 'PASSING'
    ->    ELSE 'FAILING'
    -> END AS passing_status
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id
    -> ORDER BY average DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CASE
   WHEN AVG(grade) >= 75 THEN 'PASSING'
   ELSE 'FAILING'
END AS passing_s' at line 4
mysql>
mysql> SELECT
    -> first_name,
    -> IFNULL(AVG(grade), 0) AS 'average',
    -> CASE
    ->    WHEN AVG(grade) >= 75 THEN 'PASSING'
    ->    ELSE 'FAILING'
    -> END AS passing_status
    -> FROM students
    -> LEFT JOIN papers
    ->   ON students.id = papers.student_id
    -> GROUP BY student_id
    -> ORDER BY average DESC;
+------------+---------+----------------+
| first_name | average | passing_status |
+------------+---------+----------------+
| Samantha   | 96.0000 | PASSING        |
| Carlos     | 89.0000 | PASSING        |
| Caleb      | 67.5000 | FAILING        |
| Raj        |  0.0000 | FAILING        |
+------------+---------+----------------+
4 rows in set (0.02 sec)

mysql> SELECT NULL >= 75;
+------------+
| NULL >= 75 |
+------------+
|       NULL |
+------------+
1 row in set (0.02 sec)

mysql>  SELECT 65 >= 75;
+----------+
| 65 >= 75 |
+----------+
|        0 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT NULL >= 1;
+-----------+
| NULL >= 1 |
+-----------+
|      NULL |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT
     first_name,
     IFNULL(AVG(grade), 0) AS 'average',
     CASE
        WHEN AVG(grade) IS NULL THEN 'FAILING'
        WHEN AVG(grade) >= 75 THEN 'PASSING'
        ELSE 'FAILING'
     END AS passing_status
     FROM students
     LEFT JOIN papers
       ON students.id = papers.student_id
     GROUP BY student_id
     ORDER BY average DESC;
+------------+---------+----------------+
| first_name | average | passing_status |
+------------+---------+----------------+
| Samantha   | 96.0000 | PASSING        |
| Carlos     | 89.0000 | PASSING        |
| Caleb      | 67.5000 | FAILING        |
| Raj        |  0.0000 | FAILING        |
+------------+---------+----------------+
4 rows in set (0.00 sec)

mysql>









