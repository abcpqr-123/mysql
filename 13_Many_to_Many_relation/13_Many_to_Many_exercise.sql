mysql>
mysql>
mysql> CREATE DATABASE tv_review_app;
Query OK, 1 row affected (0.03 sec)

mysql> USE DATABASE tv_review_app;
ERROR 1049 (42000): Unknown database 'database'
mysql> USE tv_review_app;
Database changed
mysql>
mysql>
mysql> CREATE TABLE reviewers
    -> ^C
mysql> CREATE TABLE reviewers (
    -> id
    -> first_name
    -> ^C
mysql> CREATE TABLE reviewers (
    -> id INT ^C
mysql>
mysql>
mysql>
mysql> CREATE TABLE reviewers (
    ->     id INT AUTO_INCREMENT PRIMARY_KEY,
    ->     first_name VARCHAR(100),
    ->     last_name VARCHAR(100),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRIMARY_KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
)' at line 2
mysql> CREATE TABLE reviewers (
    ->     id INT AUTO_INCREMENT PRIMARY_KEY,
    ->     first_name VARCHAR(100),
    ->     last_name VARCHAR(100)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRIMARY_KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
)' at line 2
mysql> CREATE TABLE reviewers (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     first_name VARCHAR(100),
    ->     last_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> CREATE TABLE series (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     title VARCHAR(100),
    ->     released_year YEAR(4),
    ->     genre VARCHAR(100)
    -> );
Query OK, 0 rows affected, 1 warning (0.09 sec)

mysql> INSERT INTO series (title, released_year, genre) VALUES
    ->     ('Archer', 2009, 'Animation'),
    ->     ('Arrested Development', 2003, 'Comedy'),
    ->     ("Bob's Burgers", 2011, 'Animation'),
    ->     ('Bojack Horseman', 2014, 'Animation'),
    ->     ("Breaking Bad", 2008, 'Drama'),
    ->     ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ->     ("Fargo", 2014, 'Drama'),
    ->     ('Freaks and Geeks', 1999, 'Comedy'),
    ->     ('General Hospital', 1963, 'Drama'),
    ->     ('Halt and Catch Fire', 2014, 'Drama'),
    ->     ('Malcolm In The Middle', 2000, 'Comedy'),
    ->     ('Pushing Daisies', 2007, 'Comedy'),
    ->     ('Seinfeld', 1989, 'Comedy'),
    ->     ('Stranger Things', 2016, 'Drama');
Query OK, 14 rows affected (0.03 sec)
Records: 14  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM series;
+----+-----------------------+---------------+-----------+
| id | title                 | released_year | genre     |
+----+-----------------------+---------------+-----------+
|  1 | Archer                |          2009 | Animation |
|  2 | Arrested Development  |          2003 | Comedy    |
|  3 | Bob's Burgers         |          2011 | Animation |
|  4 | Bojack Horseman       |          2014 | Animation |
|  5 | Breaking Bad          |          2008 | Drama     |
|  6 | Curb Your Enthusiasm  |          2000 | Comedy    |
|  7 | Fargo                 |          2014 | Drama     |
|  8 | Freaks and Geeks      |          1999 | Comedy    |
|  9 | General Hospital      |          1963 | Drama     |
| 10 | Halt and Catch Fire   |          2014 | Drama     |
| 11 | Malcolm In The Middle |          2000 | Comedy    |
| 12 | Pushing Daisies       |          2007 | Comedy    |
| 13 | Seinfeld              |          1989 | Comedy    |
| 14 | Stranger Things       |          2016 | Drama     |
+----+-----------------------+---------------+-----------+
14 rows in set (0.00 sec)

mysql> INSERT INTO reviewers (first_name, last_name) VALUES
    ->     ('Thomas', 'Stoneman'),
    ->     ('Wyatt', 'Skaggs'),
    ->     ('Kimbra', 'Masters'),
    ->     ('Domingo', 'Cortes'),
    ->     ('Colt', 'Steele'),
    ->     ('Pinkie', 'Petit'),
    ->     ('Marlon', 'Crafford');
Query OK, 7 rows affected (0.01 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM reviewers;
+----+------------+-----------+
| id | first_name | last_name |
+----+------------+-----------+
|  1 | Thomas     | Stoneman  |
|  2 | Wyatt      | Skaggs    |
|  3 | Kimbra     | Masters   |
|  4 | Domingo    | Cortes    |
|  5 | Colt       | Steele    |
|  6 | Pinkie     | Petit     |
|  7 | Marlon     | Crafford  |
+----+------------+-----------+
7 rows in set (0.00 sec)

mysql> CREATE TABLE reviews (
    -> ^C
mysql>
mysql>
mysql> CERATE TABLE reviews (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     rating DECIMAL(2,1),
    ->     series_id INT,
    ->     reviewers_id INT,
    ->     FOREIGN KEY (series_id) REFERENCES series(id),
    ->     FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CERATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL' at line 1
mysql>
mysql>
mysql> CREATE TABLE reviews (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     rating DECIMAL(2,1),
    ->     series_id INT,
    ->     reviewers_id INT,
    ->     FOREIGN KEY (series_id) REFERENCES series(id),
    ->     FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
    -> );
ERROR 1072 (42000): Key column 'reviewer_id' doesn't exist in table
mysql> CREATE TABLE reviews (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     rating DECIMAL(2,1),
    ->     series_id INT,
    ->     reviewer_id INT,
    ->     FOREIGN KEY (series_id) REFERENCES series(id),
    ->     FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    ->     (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    ->     (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    ->     (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    ->     (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    ->     (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    ->     (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    ->     (7,2,9.1),(7,5,9.7),
    ->     (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    ->     (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    ->     (10,5,9.9),
    ->     (13,3,8.0),(13,4,7.2),
    ->     (14,2,8.5),(14,3,8.9),(14,4,8.9);
Query OK, 47 rows affected (0.03 sec)
Records: 47  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM reviews;
+----+--------+-----------+-------------+
| id | rating | series_id | reviewer_id |
+----+--------+-----------+-------------+
|  1 |    8.0 |         1 |           1 |
|  2 |    7.5 |         1 |           2 |
|  3 |    8.5 |         1 |           3 |
|  4 |    7.7 |         1 |           4 |
|  5 |    8.9 |         1 |           5 |
|  6 |    8.1 |         2 |           1 |
|  7 |    6.0 |         2 |           4 |
|  8 |    8.0 |         2 |           3 |
|  9 |    8.4 |         2 |           6 |
| 10 |    9.9 |         2 |           5 |
| 11 |    7.0 |         3 |           1 |
| 12 |    7.5 |         3 |           6 |
| 13 |    8.0 |         3 |           4 |
| 14 |    7.1 |         3 |           3 |
| 15 |    8.0 |         3 |           5 |
| 16 |    7.5 |         4 |           1 |
| 17 |    7.8 |         4 |           3 |
| 18 |    8.3 |         4 |           4 |
| 19 |    7.6 |         4 |           2 |
| 20 |    8.5 |         4 |           5 |
| 21 |    9.5 |         5 |           1 |
| 22 |    9.0 |         5 |           3 |
| 23 |    9.1 |         5 |           4 |
| 24 |    9.3 |         5 |           2 |
| 25 |    9.9 |         5 |           5 |
| 26 |    6.5 |         6 |           2 |
| 27 |    7.8 |         6 |           3 |
| 28 |    8.8 |         6 |           4 |
| 29 |    8.4 |         6 |           2 |
| 30 |    9.1 |         6 |           5 |
| 31 |    9.1 |         7 |           2 |
| 32 |    9.7 |         7 |           5 |
| 33 |    8.5 |         8 |           4 |
| 34 |    7.8 |         8 |           2 |
| 35 |    8.8 |         8 |           6 |
| 36 |    9.3 |         8 |           5 |
| 37 |    5.5 |         9 |           2 |
| 38 |    6.8 |         9 |           3 |
| 39 |    5.8 |         9 |           4 |
| 40 |    4.3 |         9 |           6 |
| 41 |    4.5 |         9 |           5 |
| 42 |    9.9 |        10 |           5 |
| 43 |    8.0 |        13 |           3 |
| 44 |    7.2 |        13 |           4 |
| 45 |    8.5 |        14 |           2 |
| 46 |    8.9 |        14 |           3 |
| 47 |    8.9 |        14 |           4 |
+----+--------+-----------+-------------+
47 rows in set (0.00 sec)

mysql> ^C
mysql> ^C
mysql> ^C
mysql> ^C
mysql> ^C
mysql> ^C
mysql> ^C
mysql> SELECT title FROM table
    -> JOIN revie^C
mysql>
mysql> SELECT title FROM series
    -> JOIN reviews
    -> WHERE series.title = reviews.reviewer_id;
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    9
Current database: tv_review_app

Empty set (0.09 sec)

mysql> SELECT title FROM series
    ->      JOIN reviews
    ->      WHERE series.title = reviews.reviewer_id;
Empty set (0.00 sec)

mysql>
mysql> SELECT title FROM series
    ->      JOIN reviews
    ->      ON id = reviews.reviewer_id;
ERROR 1052 (23000): Column 'id' in on clause is ambiguous
mysql>
mysql> SELECT title FROM series
    ->      JOIN reviews
    ->      ON series.id = reviews.reviewer_id;
+----------------------+
| title                |
+----------------------+
| Archer               |
| Archer               |
| Archer               |
| Archer               |
| Archer               |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Curb Your Enthusiasm |
| Curb Your Enthusiasm |
| Curb Your Enthusiasm |
| Curb Your Enthusiasm |
+----------------------+
47 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELECT title FROM series
    ->      JOIN reviews
    ->      ON series.id = reviews.reviewer_id;
+----------------------+
| title                |
+----------------------+
| Archer               |
| Archer               |
| Archer               |
| Archer               |
| Archer               |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Arrested Development |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bob's Burgers        |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Bojack Horseman      |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Breaking Bad         |
| Curb Your Enthusiasm |
| Curb Your Enthusiasm |
| Curb Your Enthusiasm |
| Curb Your Enthusiasm |
+----------------------+
47 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELECT * FROM series
    ->      JOIN reviews
    ->      ON series.id = reviews.reviewer_id;
+----+----------------------+---------------+-----------+----+--------+-----------+-------------+
| id | title                | released_year | genre     | id | rating | series_id | reviewer_id |
+----+----------------------+---------------+-----------+----+--------+-----------+-------------+
|  1 | Archer               |          2009 | Animation |  1 |    8.0 |         1 |           1 |
|  2 | Arrested Development |          2003 | Comedy    |  2 |    7.5 |         1 |           2 |
|  3 | Bob's Burgers        |          2011 | Animation |  3 |    8.5 |         1 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation |  4 |    7.7 |         1 |           4 |
|  5 | Breaking Bad         |          2008 | Drama     |  5 |    8.9 |         1 |           5 |
|  1 | Archer               |          2009 | Animation |  6 |    8.1 |         2 |           1 |
|  4 | Bojack Horseman      |          2014 | Animation |  7 |    6.0 |         2 |           4 |
|  3 | Bob's Burgers        |          2011 | Animation |  8 |    8.0 |         2 |           3 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    |  9 |    8.4 |         2 |           6 |
|  5 | Breaking Bad         |          2008 | Drama     | 10 |    9.9 |         2 |           5 |
|  1 | Archer               |          2009 | Animation | 11 |    7.0 |         3 |           1 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 12 |    7.5 |         3 |           6 |
|  4 | Bojack Horseman      |          2014 | Animation | 13 |    8.0 |         3 |           4 |
|  3 | Bob's Burgers        |          2011 | Animation | 14 |    7.1 |         3 |           3 |
|  5 | Breaking Bad         |          2008 | Drama     | 15 |    8.0 |         3 |           5 |
|  1 | Archer               |          2009 | Animation | 16 |    7.5 |         4 |           1 |
|  3 | Bob's Burgers        |          2011 | Animation | 17 |    7.8 |         4 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 18 |    8.3 |         4 |           4 |
|  2 | Arrested Development |          2003 | Comedy    | 19 |    7.6 |         4 |           2 |
|  5 | Breaking Bad         |          2008 | Drama     | 20 |    8.5 |         4 |           5 |
|  1 | Archer               |          2009 | Animation | 21 |    9.5 |         5 |           1 |
|  3 | Bob's Burgers        |          2011 | Animation | 22 |    9.0 |         5 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 23 |    9.1 |         5 |           4 |
|  2 | Arrested Development |          2003 | Comedy    | 24 |    9.3 |         5 |           2 |
|  5 | Breaking Bad         |          2008 | Drama     | 25 |    9.9 |         5 |           5 |
|  2 | Arrested Development |          2003 | Comedy    | 26 |    6.5 |         6 |           2 |
|  3 | Bob's Burgers        |          2011 | Animation | 27 |    7.8 |         6 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 28 |    8.8 |         6 |           4 |
|  2 | Arrested Development |          2003 | Comedy    | 29 |    8.4 |         6 |           2 |
|  5 | Breaking Bad         |          2008 | Drama     | 30 |    9.1 |         6 |           5 |
|  2 | Arrested Development |          2003 | Comedy    | 31 |    9.1 |         7 |           2 |
|  5 | Breaking Bad         |          2008 | Drama     | 32 |    9.7 |         7 |           5 |
|  4 | Bojack Horseman      |          2014 | Animation | 33 |    8.5 |         8 |           4 |
|  2 | Arrested Development |          2003 | Comedy    | 34 |    7.8 |         8 |           2 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 35 |    8.8 |         8 |           6 |
|  5 | Breaking Bad         |          2008 | Drama     | 36 |    9.3 |         8 |           5 |
|  2 | Arrested Development |          2003 | Comedy    | 37 |    5.5 |         9 |           2 |
|  3 | Bob's Burgers        |          2011 | Animation | 38 |    6.8 |         9 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 39 |    5.8 |         9 |           4 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 40 |    4.3 |         9 |           6 |
|  5 | Breaking Bad         |          2008 | Drama     | 41 |    4.5 |         9 |           5 |
|  5 | Breaking Bad         |          2008 | Drama     | 42 |    9.9 |        10 |           5 |
|  3 | Bob's Burgers        |          2011 | Animation | 43 |    8.0 |        13 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 44 |    7.2 |        13 |           4 |
|  2 | Arrested Development |          2003 | Comedy    | 45 |    8.5 |        14 |           2 |
|  3 | Bob's Burgers        |          2011 | Animation | 46 |    8.9 |        14 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 47 |    8.9 |        14 |           4 |
+----+----------------------+---------------+-----------+----+--------+-----------+-------------+
47 rows in set (0.00 sec)

mysql> SELECT
    -> title,
    -> rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id = reviews.series.id;
ERROR 1054 (42S22): Unknown column 'reviews.series.id' in 'on clause'
mysql>
mysql> SELECT
    ->      title,
    ->      rating
    ->      FROM series
    ->      JOIN reviews
    ->        ON series.id = reviews.series.id;
ERROR 1054 (42S22): Unknown column 'reviews.series.id' in 'on clause'
mysql>
mysql>
mysql> SELECT
    ->      title,
    ->      rating
    ->      FROM series
    ->      JOIN reviews
    ->        ON series.id = reviews.series_id;
+----------------------+--------+
| title                | rating |
+----------------------+--------+
| Archer               |    8.0 |
| Archer               |    7.5 |
| Archer               |    8.5 |
| Archer               |    7.7 |
| Archer               |    8.9 |
| Arrested Development |    8.1 |
| Arrested Development |    6.0 |
| Arrested Development |    8.0 |
| Arrested Development |    8.4 |
| Arrested Development |    9.9 |
| Bob's Burgers        |    7.0 |
| Bob's Burgers        |    7.5 |
| Bob's Burgers        |    8.0 |
| Bob's Burgers        |    7.1 |
| Bob's Burgers        |    8.0 |
| Bojack Horseman      |    7.5 |
| Bojack Horseman      |    7.8 |
| Bojack Horseman      |    8.3 |
| Bojack Horseman      |    7.6 |
| Bojack Horseman      |    8.5 |
| Breaking Bad         |    9.5 |
| Breaking Bad         |    9.0 |
| Breaking Bad         |    9.1 |
| Breaking Bad         |    9.3 |
| Breaking Bad         |    9.9 |
| Curb Your Enthusiasm |    6.5 |
| Curb Your Enthusiasm |    7.8 |
| Curb Your Enthusiasm |    8.8 |
| Curb Your Enthusiasm |    8.4 |
| Curb Your Enthusiasm |    9.1 |
| Fargo                |    9.1 |
| Fargo                |    9.7 |
| Freaks and Geeks     |    8.5 |
| Freaks and Geeks     |    7.8 |
| Freaks and Geeks     |    8.8 |
| Freaks and Geeks     |    9.3 |
| General Hospital     |    5.5 |
| General Hospital     |    6.8 |
| General Hospital     |    5.8 |
| General Hospital     |    4.3 |
| General Hospital     |    4.5 |
| Halt and Catch Fire  |    9.9 |
| Seinfeld             |    8.0 |
| Seinfeld             |    7.2 |
| Stranger Things      |    8.5 |
| Stranger Things      |    8.9 |
| Stranger Things      |    8.9 |
+----------------------+--------+
47 rows in set (0.00 sec)

mysql> SELECT
    ->     title,
    ->     AVG(rating) as avg_rating
    -> FROM series
    -> JOIN reviews
    ->     ON series.id = reviews.series_id
    -> GROUP BY series.id
    -> ORDER BY avg_rating;
+----------------------+------------+
| title                | avg_rating |
+----------------------+------------+
| General Hospital     |    5.38000 |
| Bob's Burgers        |    7.52000 |
| Seinfeld             |    7.60000 |
| Bojack Horseman      |    7.94000 |
| Arrested Development |    8.08000 |
| Archer               |    8.12000 |
| Curb Your Enthusiasm |    8.12000 |
| Freaks and Geeks     |    8.60000 |
| Stranger Things      |    8.76667 |
| Breaking Bad         |    9.36000 |
| Fargo                |    9.40000 |
| Halt and Catch Fire  |    9.90000 |
+----------------------+------------+
12 rows in set (0.01 sec)

mysql> SELECT
    ->     title,
    ->     rating
    -> FROM series
    -> JOIN reviews
    ->     ON series.id = reviews.series_id;
+----------------------+--------+
| title                | rating |
+----------------------+--------+
| Archer               |    8.0 |
| Archer               |    7.5 |
| Archer               |    8.5 |
| Archer               |    7.7 |
| Archer               |    8.9 |
| Arrested Development |    8.1 |
| Arrested Development |    6.0 |
| Arrested Development |    8.0 |
| Arrested Development |    8.4 |
| Arrested Development |    9.9 |
| Bob's Burgers        |    7.0 |
| Bob's Burgers        |    7.5 |
| Bob's Burgers        |    8.0 |
| Bob's Burgers        |    7.1 |
| Bob's Burgers        |    8.0 |
| Bojack Horseman      |    7.5 |
| Bojack Horseman      |    7.8 |
| Bojack Horseman      |    8.3 |
| Bojack Horseman      |    7.6 |
| Bojack Horseman      |    8.5 |
| Breaking Bad         |    9.5 |
| Breaking Bad         |    9.0 |
| Breaking Bad         |    9.1 |
| Breaking Bad         |    9.3 |
| Breaking Bad         |    9.9 |
| Curb Your Enthusiasm |    6.5 |
| Curb Your Enthusiasm |    7.8 |
| Curb Your Enthusiasm |    8.8 |
| Curb Your Enthusiasm |    8.4 |
| Curb Your Enthusiasm |    9.1 |
| Fargo                |    9.1 |
| Fargo                |    9.7 |
| Freaks and Geeks     |    8.5 |
| Freaks and Geeks     |    7.8 |
| Freaks and Geeks     |    8.8 |
| Freaks and Geeks     |    9.3 |
| General Hospital     |    5.5 |
| General Hospital     |    6.8 |
| General Hospital     |    5.8 |
| General Hospital     |    4.3 |
| General Hospital     |    4.5 |
| Halt and Catch Fire  |    9.9 |
| Seinfeld             |    8.0 |
| Seinfeld             |    7.2 |
| Stranger Things      |    8.5 |
| Stranger Things      |    8.9 |
| Stranger Things      |    8.9 |
+----------------------+--------+
47 rows in set (0.00 sec)

mysql> SELECT
    ->      title,
    ->      rating
    ->      FROM series
    ->      JOIN reviews
    ->        ON series.id = reviews.series_id;
+----------------------+--------+
| title                | rating |
+----------------------+--------+
| Archer               |    8.0 |
| Archer               |    7.5 |
| Archer               |    8.5 |
| Archer               |    7.7 |
| Archer               |    8.9 |
| Arrested Development |    8.1 |
| Arrested Development |    6.0 |
| Arrested Development |    8.0 |
| Arrested Development |    8.4 |
| Arrested Development |    9.9 |
| Bob's Burgers        |    7.0 |
| Bob's Burgers        |    7.5 |
| Bob's Burgers        |    8.0 |
| Bob's Burgers        |    7.1 |
| Bob's Burgers        |    8.0 |
| Bojack Horseman      |    7.5 |
| Bojack Horseman      |    7.8 |
| Bojack Horseman      |    8.3 |
| Bojack Horseman      |    7.6 |
| Bojack Horseman      |    8.5 |
| Breaking Bad         |    9.5 |
| Breaking Bad         |    9.0 |
| Breaking Bad         |    9.1 |
| Breaking Bad         |    9.3 |
| Breaking Bad         |    9.9 |
| Curb Your Enthusiasm |    6.5 |
| Curb Your Enthusiasm |    7.8 |
| Curb Your Enthusiasm |    8.8 |
| Curb Your Enthusiasm |    8.4 |
| Curb Your Enthusiasm |    9.1 |
| Fargo                |    9.1 |
| Fargo                |    9.7 |
| Freaks and Geeks     |    8.5 |
| Freaks and Geeks     |    7.8 |
| Freaks and Geeks     |    8.8 |
| Freaks and Geeks     |    9.3 |
| General Hospital     |    5.5 |
| General Hospital     |    6.8 |
| General Hospital     |    5.8 |
| General Hospital     |    4.3 |
| General Hospital     |    4.5 |
| Halt and Catch Fire  |    9.9 |
| Seinfeld             |    8.0 |
| Seinfeld             |    7.2 |
| Stranger Things      |    8.5 |
| Stranger Things      |    8.9 |
| Stranger Things      |    8.9 |
+----------------------+--------+
47 rows in set (0.00 sec)

mysql> SELECT
    ->   title,
    ->   rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id = reviews.series_id;
+----------------------+--------+
| title                | rating |
+----------------------+--------+
| Archer               |    8.0 |
| Archer               |    7.5 |
| Archer               |    8.5 |
| Archer               |    7.7 |
| Archer               |    8.9 |
| Arrested Development |    8.1 |
| Arrested Development |    6.0 |
| Arrested Development |    8.0 |
| Arrested Development |    8.4 |
| Arrested Development |    9.9 |
| Bob's Burgers        |    7.0 |
| Bob's Burgers        |    7.5 |
| Bob's Burgers        |    8.0 |
| Bob's Burgers        |    7.1 |
| Bob's Burgers        |    8.0 |
| Bojack Horseman      |    7.5 |
| Bojack Horseman      |    7.8 |
| Bojack Horseman      |    8.3 |
| Bojack Horseman      |    7.6 |
| Bojack Horseman      |    8.5 |
| Breaking Bad         |    9.5 |
| Breaking Bad         |    9.0 |
| Breaking Bad         |    9.1 |
| Breaking Bad         |    9.3 |
| Breaking Bad         |    9.9 |
| Curb Your Enthusiasm |    6.5 |
| Curb Your Enthusiasm |    7.8 |
| Curb Your Enthusiasm |    8.8 |
| Curb Your Enthusiasm |    8.4 |
| Curb Your Enthusiasm |    9.1 |
| Fargo                |    9.1 |
| Fargo                |    9.7 |
| Freaks and Geeks     |    8.5 |
| Freaks and Geeks     |    7.8 |
| Freaks and Geeks     |    8.8 |
| Freaks and Geeks     |    9.3 |
| General Hospital     |    5.5 |
| General Hospital     |    6.8 |
| General Hospital     |    5.8 |
| General Hospital     |    4.3 |
| General Hospital     |    4.5 |
| Halt and Catch Fire  |    9.9 |
| Seinfeld             |    8.0 |
| Seinfeld             |    7.2 |
| Stranger Things      |    8.5 |
| Stranger Things      |    8.9 |
| Stranger Things      |    8.9 |
+----------------------+--------+
47 rows in set (0.00 sec)

mysql> SELECT
    -> series.id,
    -> tit
    ->
    ->
    -> SELECT
    -> series.id,
    -> title,
    -> rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id = reviews.series_id
    -> GROUP BY id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT
series.id,
title,
rating
FROM series
JOIN reviews
  ON series.id = revi' at line 6
mysql>
mysql>
mysql> SELECT
    ->    id,
    ->    title,
    ->    rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id =  reviews.series_id
    -> GROUP BY series_id;
ERROR 1052 (23000): Column 'id' in field list is ambiguous
mysql>
mysql>
mysql>
mysql> SELECT
    ->    series.id,
    ->    title,
    ->    rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id =  reviews.series_id
    -> GROUP BY series_id;
+----+----------------------+--------+
| id | title                | rating |
+----+----------------------+--------+
|  1 | Archer               |    8.0 |
|  2 | Arrested Development |    8.1 |
|  3 | Bob's Burgers        |    7.0 |
|  4 | Bojack Horseman      |    7.5 |
|  5 | Breaking Bad         |    9.5 |
|  6 | Curb Your Enthusiasm |    6.5 |
|  7 | Fargo                |    9.1 |
|  8 | Freaks and Geeks     |    8.5 |
|  9 | General Hospital     |    5.5 |
| 10 | Halt and Catch Fire  |    9.9 |
| 13 | Seinfeld             |    8.0 |
| 14 | Stranger Things      |    8.5 |
+----+----------------------+--------+
12 rows in set (0.00 sec)

mysql>
mysql> SELECT
    ->    series.id,
    ->    title,
    ->    AVG(rating) AS avg_rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id =  reviews.series_id
    -> GROUP BY series_id;
+----+----------------------+------------+
| id | title                | avg_rating |
+----+----------------------+------------+
|  1 | Archer               |    8.12000 |
|  2 | Arrested Development |    8.08000 |
|  3 | Bob's Burgers        |    7.52000 |
|  4 | Bojack Horseman      |    7.94000 |
|  5 | Breaking Bad         |    9.36000 |
|  6 | Curb Your Enthusiasm |    8.12000 |
|  7 | Fargo                |    9.40000 |
|  8 | Freaks and Geeks     |    8.60000 |
|  9 | General Hospital     |    5.38000 |
| 10 | Halt and Catch Fire  |    9.90000 |
| 13 | Seinfeld             |    7.60000 |
| 14 | Stranger Things      |    8.76667 |
+----+----------------------+------------+
12 rows in set (0.02 sec)

mysql> SELECT
    ->    series.id,
    ->    title,
    ->    AVG(rating) AS avg_rating
    -> FROM series
    -> JOIN reviews
    ->   ON series.id =  reviews.series_id
    -> GROUP BY series_id
    -> ORDER BY avg_rating;
+----+----------------------+------------+
| id | title                | avg_rating |
+----+----------------------+------------+
|  9 | General Hospital     |    5.38000 |
|  3 | Bob's Burgers        |    7.52000 |
| 13 | Seinfeld             |    7.60000 |
|  4 | Bojack Horseman      |    7.94000 |
|  2 | Arrested Development |    8.08000 |
|  1 | Archer               |    8.12000 |
|  6 | Curb Your Enthusiasm |    8.12000 |
|  8 | Freaks and Geeks     |    8.60000 |
| 14 | Stranger Things      |    8.76667 |
|  5 | Breaking Bad         |    9.36000 |
|  7 | Fargo                |    9.40000 |
| 10 | Halt and Catch Fire  |    9.90000 |
+----+----------------------+------------+
12 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> SELECT * FROM reviewers
    -> JOIN reviews
    ->   ON reviewers.id = reviews.reviewer_id;
+----+------------+-----------+----+--------+-----------+-------------+
| id | first_name | last_name | id | rating | series_id | reviewer_id |
+----+------------+-----------+----+--------+-----------+-------------+
|  1 | Thomas     | Stoneman  |  1 |    8.0 |         1 |           1 |
|  1 | Thomas     | Stoneman  |  6 |    8.1 |         2 |           1 |
|  1 | Thomas     | Stoneman  | 11 |    7.0 |         3 |           1 |
|  1 | Thomas     | Stoneman  | 16 |    7.5 |         4 |           1 |
|  1 | Thomas     | Stoneman  | 21 |    9.5 |         5 |           1 |
|  2 | Wyatt      | Skaggs    |  2 |    7.5 |         1 |           2 |
|  2 | Wyatt      | Skaggs    | 19 |    7.6 |         4 |           2 |
|  2 | Wyatt      | Skaggs    | 24 |    9.3 |         5 |           2 |
|  2 | Wyatt      | Skaggs    | 26 |    6.5 |         6 |           2 |
|  2 | Wyatt      | Skaggs    | 29 |    8.4 |         6 |           2 |
|  2 | Wyatt      | Skaggs    | 31 |    9.1 |         7 |           2 |
|  2 | Wyatt      | Skaggs    | 34 |    7.8 |         8 |           2 |
|  2 | Wyatt      | Skaggs    | 37 |    5.5 |         9 |           2 |
|  2 | Wyatt      | Skaggs    | 45 |    8.5 |        14 |           2 |
|  3 | Kimbra     | Masters   |  3 |    8.5 |         1 |           3 |
|  3 | Kimbra     | Masters   |  8 |    8.0 |         2 |           3 |
|  3 | Kimbra     | Masters   | 14 |    7.1 |         3 |           3 |
|  3 | Kimbra     | Masters   | 17 |    7.8 |         4 |           3 |
|  3 | Kimbra     | Masters   | 22 |    9.0 |         5 |           3 |
|  3 | Kimbra     | Masters   | 27 |    7.8 |         6 |           3 |
|  3 | Kimbra     | Masters   | 38 |    6.8 |         9 |           3 |
|  3 | Kimbra     | Masters   | 43 |    8.0 |        13 |           3 |
|  3 | Kimbra     | Masters   | 46 |    8.9 |        14 |           3 |
|  4 | Domingo    | Cortes    |  4 |    7.7 |         1 |           4 |
|  4 | Domingo    | Cortes    |  7 |    6.0 |         2 |           4 |
|  4 | Domingo    | Cortes    | 13 |    8.0 |         3 |           4 |
|  4 | Domingo    | Cortes    | 18 |    8.3 |         4 |           4 |
|  4 | Domingo    | Cortes    | 23 |    9.1 |         5 |           4 |
|  4 | Domingo    | Cortes    | 28 |    8.8 |         6 |           4 |
|  4 | Domingo    | Cortes    | 33 |    8.5 |         8 |           4 |
|  4 | Domingo    | Cortes    | 39 |    5.8 |         9 |           4 |
|  4 | Domingo    | Cortes    | 44 |    7.2 |        13 |           4 |
|  4 | Domingo    | Cortes    | 47 |    8.9 |        14 |           4 |
|  5 | Colt       | Steele    |  5 |    8.9 |         1 |           5 |
|  5 | Colt       | Steele    | 10 |    9.9 |         2 |           5 |
|  5 | Colt       | Steele    | 15 |    8.0 |         3 |           5 |
|  5 | Colt       | Steele    | 20 |    8.5 |         4 |           5 |
|  5 | Colt       | Steele    | 25 |    9.9 |         5 |           5 |
|  5 | Colt       | Steele    | 30 |    9.1 |         6 |           5 |
|  5 | Colt       | Steele    | 32 |    9.7 |         7 |           5 |
|  5 | Colt       | Steele    | 36 |    9.3 |         8 |           5 |
|  5 | Colt       | Steele    | 41 |    4.5 |         9 |           5 |
|  5 | Colt       | Steele    | 42 |    9.9 |        10 |           5 |
|  6 | Pinkie     | Petit     |  9 |    8.4 |         2 |           6 |
|  6 | Pinkie     | Petit     | 12 |    7.5 |         3 |           6 |
|  6 | Pinkie     | Petit     | 35 |    8.8 |         8 |           6 |
|  6 | Pinkie     | Petit     | 40 |    4.3 |         9 |           6 |
+----+------------+-----------+----+--------+-----------+-------------+
47 rows in set (0.06 sec)

mysql> SELECT
    -> frist_name,
    -> last_name,
    -> rating
    -> FROM reviewers
    -> JOIN reviews
    ->   ON reviewers.id = reviews.reviewer_id;
ERROR 1054 (42S22): Unknown column 'frist_name' in 'field list'
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> SELECT
    -> first_name,
    -> last_name,
    -> rating
    -> FROM reviewers
    -> JOIN reviews
    ->   ON reviewers.id = reviews.reviewer_id;
+------------+-----------+--------+
| first_name | last_name | rating |
+------------+-----------+--------+
| Thomas     | Stoneman  |    8.0 |
| Thomas     | Stoneman  |    8.1 |
| Thomas     | Stoneman  |    7.0 |
| Thomas     | Stoneman  |    7.5 |
| Thomas     | Stoneman  |    9.5 |
| Wyatt      | Skaggs    |    7.5 |
| Wyatt      | Skaggs    |    7.6 |
| Wyatt      | Skaggs    |    9.3 |
| Wyatt      | Skaggs    |    6.5 |
| Wyatt      | Skaggs    |    8.4 |
| Wyatt      | Skaggs    |    9.1 |
| Wyatt      | Skaggs    |    7.8 |
| Wyatt      | Skaggs    |    5.5 |
| Wyatt      | Skaggs    |    8.5 |
| Kimbra     | Masters   |    8.5 |
| Kimbra     | Masters   |    8.0 |
| Kimbra     | Masters   |    7.1 |
| Kimbra     | Masters   |    7.8 |
| Kimbra     | Masters   |    9.0 |
| Kimbra     | Masters   |    7.8 |
| Kimbra     | Masters   |    6.8 |
| Kimbra     | Masters   |    8.0 |
| Kimbra     | Masters   |    8.9 |
| Domingo    | Cortes    |    7.7 |
| Domingo    | Cortes    |    6.0 |
| Domingo    | Cortes    |    8.0 |
| Domingo    | Cortes    |    8.3 |
| Domingo    | Cortes    |    9.1 |
| Domingo    | Cortes    |    8.8 |
| Domingo    | Cortes    |    8.5 |
| Domingo    | Cortes    |    5.8 |
| Domingo    | Cortes    |    7.2 |
| Domingo    | Cortes    |    8.9 |
| Colt       | Steele    |    8.9 |
| Colt       | Steele    |    9.9 |
| Colt       | Steele    |    8.0 |
| Colt       | Steele    |    8.5 |
| Colt       | Steele    |    9.9 |
| Colt       | Steele    |    9.1 |
| Colt       | Steele    |    9.7 |
| Colt       | Steele    |    9.3 |
| Colt       | Steele    |    4.5 |
| Colt       | Steele    |    9.9 |
| Pinkie     | Petit     |    8.4 |
| Pinkie     | Petit     |    7.5 |
| Pinkie     | Petit     |    8.8 |
| Pinkie     | Petit     |    4.3 |
+------------+-----------+--------+
47 rows in set (0.00 sec)

mysql>
mysql> SELECT
    -> first_name,
    -> last_name,
    -> rating
    -> FROM reviewers
    -> JOIN reviews
    ->    ON reviewers.id = reviews.reviewer_id
    -> GROUP BY reviewers.id
    -> ORDER BY reviewers.id;
+------------+-----------+--------+
| first_name | last_name | rating |
+------------+-----------+--------+
| Thomas     | Stoneman  |    8.0 |
| Wyatt      | Skaggs    |    7.5 |
| Kimbra     | Masters   |    8.5 |
| Domingo    | Cortes    |    7.7 |
| Colt       | Steele    |    8.9 |
| Pinkie     | Petit     |    8.4 |
+------------+-----------+--------+
6 rows in set (0.02 sec)

mysql> SELECT *
    -> FROM series
    -> INNER JOIN reviews
    ->   ON series.id = reviews.series_id
    ->   WHERE reviews.series_id = NULL
    -> ^C
mysql> SELECT *
    -> FROM series
    -> INNER JOIN reviews
    ->   ON series.id = reviews.series_id
    ->   WHERE reviews.series_id = NULL;
Empty set (0.03 sec)

mysql> SELECT *
    -> FROM series
    -> INNER JOIN reviews
    ->   ON series.id = reviews.series_id;
+----+----------------------+---------------+-----------+----+--------+-----------+-------------+
| id | title                | released_year | genre     | id | rating | series_id | reviewer_id |
+----+----------------------+---------------+-----------+----+--------+-----------+-------------+
|  1 | Archer               |          2009 | Animation |  1 |    8.0 |         1 |           1 |
|  1 | Archer               |          2009 | Animation |  2 |    7.5 |         1 |           2 |
|  1 | Archer               |          2009 | Animation |  3 |    8.5 |         1 |           3 |
|  1 | Archer               |          2009 | Animation |  4 |    7.7 |         1 |           4 |
|  1 | Archer               |          2009 | Animation |  5 |    8.9 |         1 |           5 |
|  2 | Arrested Development |          2003 | Comedy    |  6 |    8.1 |         2 |           1 |
|  2 | Arrested Development |          2003 | Comedy    |  7 |    6.0 |         2 |           4 |
|  2 | Arrested Development |          2003 | Comedy    |  8 |    8.0 |         2 |           3 |
|  2 | Arrested Development |          2003 | Comedy    |  9 |    8.4 |         2 |           6 |
|  2 | Arrested Development |          2003 | Comedy    | 10 |    9.9 |         2 |           5 |
|  3 | Bob's Burgers        |          2011 | Animation | 11 |    7.0 |         3 |           1 |
|  3 | Bob's Burgers        |          2011 | Animation | 12 |    7.5 |         3 |           6 |
|  3 | Bob's Burgers        |          2011 | Animation | 13 |    8.0 |         3 |           4 |
|  3 | Bob's Burgers        |          2011 | Animation | 14 |    7.1 |         3 |           3 |
|  3 | Bob's Burgers        |          2011 | Animation | 15 |    8.0 |         3 |           5 |
|  4 | Bojack Horseman      |          2014 | Animation | 16 |    7.5 |         4 |           1 |
|  4 | Bojack Horseman      |          2014 | Animation | 17 |    7.8 |         4 |           3 |
|  4 | Bojack Horseman      |          2014 | Animation | 18 |    8.3 |         4 |           4 |
|  4 | Bojack Horseman      |          2014 | Animation | 19 |    7.6 |         4 |           2 |
|  4 | Bojack Horseman      |          2014 | Animation | 20 |    8.5 |         4 |           5 |
|  5 | Breaking Bad         |          2008 | Drama     | 21 |    9.5 |         5 |           1 |
|  5 | Breaking Bad         |          2008 | Drama     | 22 |    9.0 |         5 |           3 |
|  5 | Breaking Bad         |          2008 | Drama     | 23 |    9.1 |         5 |           4 |
|  5 | Breaking Bad         |          2008 | Drama     | 24 |    9.3 |         5 |           2 |
|  5 | Breaking Bad         |          2008 | Drama     | 25 |    9.9 |         5 |           5 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 26 |    6.5 |         6 |           2 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 27 |    7.8 |         6 |           3 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 28 |    8.8 |         6 |           4 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 29 |    8.4 |         6 |           2 |
|  6 | Curb Your Enthusiasm |          2000 | Comedy    | 30 |    9.1 |         6 |           5 |
|  7 | Fargo                |          2014 | Drama     | 31 |    9.1 |         7 |           2 |
|  7 | Fargo                |          2014 | Drama     | 32 |    9.7 |         7 |           5 |
|  8 | Freaks and Geeks     |          1999 | Comedy    | 33 |    8.5 |         8 |           4 |
|  8 | Freaks and Geeks     |          1999 | Comedy    | 34 |    7.8 |         8 |           2 |
|  8 | Freaks and Geeks     |          1999 | Comedy    | 35 |    8.8 |         8 |           6 |
|  8 | Freaks and Geeks     |          1999 | Comedy    | 36 |    9.3 |         8 |           5 |
|  9 | General Hospital     |          1963 | Drama     | 37 |    5.5 |         9 |           2 |
|  9 | General Hospital     |          1963 | Drama     | 38 |    6.8 |         9 |           3 |
|  9 | General Hospital     |          1963 | Drama     | 39 |    5.8 |         9 |           4 |
|  9 | General Hospital     |          1963 | Drama     | 40 |    4.3 |         9 |           6 |
|  9 | General Hospital     |          1963 | Drama     | 41 |    4.5 |         9 |           5 |
| 10 | Halt and Catch Fire  |          2014 | Drama     | 42 |    9.9 |        10 |           5 |
| 13 | Seinfeld             |          1989 | Comedy    | 43 |    8.0 |        13 |           3 |
| 13 | Seinfeld             |          1989 | Comedy    | 44 |    7.2 |        13 |           4 |
| 14 | Stranger Things      |          2016 | Drama     | 45 |    8.5 |        14 |           2 |
| 14 | Stranger Things      |          2016 | Drama     | 46 |    8.9 |        14 |           3 |
| 14 | Stranger Things      |          2016 | Drama     | 47 |    8.9 |        14 |           4 |
+----+----------------------+---------------+-----------+----+--------+-----------+-------------+
47 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id;
+----+-----------------------+---------------+-----------+------+--------+-----------+-------------+
| id | title                 | released_year | genre     | id   | rating | series_id | reviewer_id |
+----+-----------------------+---------------+-----------+------+--------+-----------+-------------+
|  1 | Archer                |          2009 | Animation |    1 |    8.0 |         1 |           1 |
|  1 | Archer                |          2009 | Animation |    2 |    7.5 |         1 |           2 |
|  1 | Archer                |          2009 | Animation |    3 |    8.5 |         1 |           3 |
|  1 | Archer                |          2009 | Animation |    4 |    7.7 |         1 |           4 |
|  1 | Archer                |          2009 | Animation |    5 |    8.9 |         1 |           5 |
|  2 | Arrested Development  |          2003 | Comedy    |    6 |    8.1 |         2 |           1 |
|  2 | Arrested Development  |          2003 | Comedy    |    7 |    6.0 |         2 |           4 |
|  2 | Arrested Development  |          2003 | Comedy    |    8 |    8.0 |         2 |           3 |
|  2 | Arrested Development  |          2003 | Comedy    |    9 |    8.4 |         2 |           6 |
|  2 | Arrested Development  |          2003 | Comedy    |   10 |    9.9 |         2 |           5 |
|  3 | Bob's Burgers         |          2011 | Animation |   11 |    7.0 |         3 |           1 |
|  3 | Bob's Burgers         |          2011 | Animation |   12 |    7.5 |         3 |           6 |
|  3 | Bob's Burgers         |          2011 | Animation |   13 |    8.0 |         3 |           4 |
|  3 | Bob's Burgers         |          2011 | Animation |   14 |    7.1 |         3 |           3 |
|  3 | Bob's Burgers         |          2011 | Animation |   15 |    8.0 |         3 |           5 |
|  4 | Bojack Horseman       |          2014 | Animation |   16 |    7.5 |         4 |           1 |
|  4 | Bojack Horseman       |          2014 | Animation |   17 |    7.8 |         4 |           3 |
|  4 | Bojack Horseman       |          2014 | Animation |   18 |    8.3 |         4 |           4 |
|  4 | Bojack Horseman       |          2014 | Animation |   19 |    7.6 |         4 |           2 |
|  4 | Bojack Horseman       |          2014 | Animation |   20 |    8.5 |         4 |           5 |
|  5 | Breaking Bad          |          2008 | Drama     |   21 |    9.5 |         5 |           1 |
|  5 | Breaking Bad          |          2008 | Drama     |   22 |    9.0 |         5 |           3 |
|  5 | Breaking Bad          |          2008 | Drama     |   23 |    9.1 |         5 |           4 |
|  5 | Breaking Bad          |          2008 | Drama     |   24 |    9.3 |         5 |           2 |
|  5 | Breaking Bad          |          2008 | Drama     |   25 |    9.9 |         5 |           5 |
|  6 | Curb Your Enthusiasm  |          2000 | Comedy    |   26 |    6.5 |         6 |           2 |
|  6 | Curb Your Enthusiasm  |          2000 | Comedy    |   27 |    7.8 |         6 |           3 |
|  6 | Curb Your Enthusiasm  |          2000 | Comedy    |   28 |    8.8 |         6 |           4 |
|  6 | Curb Your Enthusiasm  |          2000 | Comedy    |   29 |    8.4 |         6 |           2 |
|  6 | Curb Your Enthusiasm  |          2000 | Comedy    |   30 |    9.1 |         6 |           5 |
|  7 | Fargo                 |          2014 | Drama     |   31 |    9.1 |         7 |           2 |
|  7 | Fargo                 |          2014 | Drama     |   32 |    9.7 |         7 |           5 |
|  8 | Freaks and Geeks      |          1999 | Comedy    |   33 |    8.5 |         8 |           4 |
|  8 | Freaks and Geeks      |          1999 | Comedy    |   34 |    7.8 |         8 |           2 |
|  8 | Freaks and Geeks      |          1999 | Comedy    |   35 |    8.8 |         8 |           6 |
|  8 | Freaks and Geeks      |          1999 | Comedy    |   36 |    9.3 |         8 |           5 |
|  9 | General Hospital      |          1963 | Drama     |   37 |    5.5 |         9 |           2 |
|  9 | General Hospital      |          1963 | Drama     |   38 |    6.8 |         9 |           3 |
|  9 | General Hospital      |          1963 | Drama     |   39 |    5.8 |         9 |           4 |
|  9 | General Hospital      |          1963 | Drama     |   40 |    4.3 |         9 |           6 |
|  9 | General Hospital      |          1963 | Drama     |   41 |    4.5 |         9 |           5 |
| 10 | Halt and Catch Fire   |          2014 | Drama     |   42 |    9.9 |        10 |           5 |
| 11 | Malcolm In The Middle |          2000 | Comedy    | NULL |   NULL |      NULL |        NULL |
| 12 | Pushing Daisies       |          2007 | Comedy    | NULL |   NULL |      NULL |        NULL |
| 13 | Seinfeld              |          1989 | Comedy    |   43 |    8.0 |        13 |           3 |
| 13 | Seinfeld              |          1989 | Comedy    |   44 |    7.2 |        13 |           4 |
| 14 | Stranger Things       |          2016 | Drama     |   45 |    8.5 |        14 |           2 |
| 14 | Stranger Things       |          2016 | Drama     |   46 |    8.9 |        14 |           3 |
| 14 | Stranger Things       |          2016 | Drama     |   47 |    8.9 |        14 |           4 |
+----+-----------------------+---------------+-----------+------+--------+-----------+-------------+
49 rows in set (0.02 sec)

mysql>
mysql>
mysql> SELECT *
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE reviews.series_id = NULL
    -> ^C
mysql>
mysql>
mysql> SELECT *
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE reviews.series_id = NULL;
Empty set (0.00 sec)

mysql>
mysql>
mysql> SELECT *
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE reviews.series_id = NULL
    -> ^C
mysql>
mysql>
mysql> SELECT *
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE reviews.series_id = NULL;
Empty set (0.00 sec)

mysql>
mysql> SELECT
    -> title,
    -> rating
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE rating = NULL
    -> ^C
mysql>
mysql> SELECT
    -> title,
    -> rating
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE rating = NULL;
Empty set (0.00 sec)

mysql>
mysql> SELECT
    -> title,
    -> rating
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE rating IS NULL;
+-----------------------+--------+
| title                 | rating |
+-----------------------+--------+
| Malcolm In The Middle |   NULL |
| Pushing Daisies       |   NULL |
+-----------------------+--------+
2 rows in set (0.03 sec)

mysql>
mysql> SELECT
    -> title,
    -> rating
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE series_id IS NULL;
+-----------------------+--------+
| title                 | rating |
+-----------------------+--------+
| Malcolm In The Middle |   NULL |
| Pushing Daisies       |   NULL |
+-----------------------+--------+
2 rows in set (0.00 sec)

mysql>
mysql> SELECT
    -> title,
    -> rating
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE reviews.series_id IS NULL;
+-----------------------+--------+
| title                 | rating |
+-----------------------+--------+
| Malcolm In The Middle |   NULL |
| Pushing Daisies       |   NULL |
+-----------------------+--------+
2 rows in set (0.02 sec)

mysql> SELECT *
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE rating IS NULL;
+----+-----------------------+---------------+--------+------+--------+-----------+-------------+
| id | title                 | released_year | genre  | id   | rating | series_id | reviewer_id |
+----+-----------------------+---------------+--------+------+--------+-----------+-------------+
| 11 | Malcolm In The Middle |          2000 | Comedy | NULL |   NULL |      NULL |        NULL |
| 12 | Pushing Daisies       |          2007 | Comedy | NULL |   NULL |      NULL |        NULL |
+----+-----------------------+---------------+--------+------+--------+-----------+-------------+
2 rows in set (0.00 sec)

mysql> SELECT
    -> title AS unreviewed_series
    -> FROM series
    -> LEFT JOIN reviews
    ->   ON series.id = reviews.series_id
    -> WHERE rating IS NULL;
+-----------------------+
| unreviewed_series     |
+-----------------------+
| Malcolm In The Middle |
| Pushing Daisies       |
+-----------------------+
2 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>