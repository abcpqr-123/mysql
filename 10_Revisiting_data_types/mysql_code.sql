





mysql>
mysql>
mysql> CREATE TABLE dogs (name CHAR(5) breed VARCHAR(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'breed VARCHAR(10))' at line 1
mysql> CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO dogs (name, breed) VALUES ('bob', 'beagle');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO dogs (name, breed) VALUES ('robby', 'corgi');
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO dogs (name, breed) VALUES ('Princess Jane', 'Retriever');
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql> SELECT dogs FROM books;
ERROR 1054 (42S22): Unknown column 'dogs' in 'field list'
mysql> SHOW DATABASE();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE()' at line 1
mysql> SELECT * FROM DOGS;
+-------+--------+
| name  | breed  |
+-------+--------+
| bob   | beagle |
| robby | corgi  |
+-------+--------+
2 rows in set (0.00 sec)

mysql> INSERT INTO dogs (name, breed) VALUES ('Pricess Jene', 'Retriever');
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql>
mysql> INSERT INTO dogs (name, breed) VALUES ('Pricess Jene', 'Retricevekdffjsdlfjsldffsljf');
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql>
mysql> CREATE DATABASE new_testing_db;
Query OK, 1 row affected (0.03 sec)

mysql> use new_testing_db;
Database changed
mysql> CREATE TABLE dogs (name CHAR(5) breed VARCHAR(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'breed VARCHAR(10))' at line 1
mysql> ^C
mysql> SELECT DATABASE();
+----------------+
| DATABASE()     |
+----------------+
| new_testing_db |
+----------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE dogs (name CHAR(5) breed VARCHAR(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'breed VARCHAR(10))' at line 1
mysql>
mysql> CREATE TABLE dogs (name CHAR(5) breed VARCHAR(10));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'breed VARCHAR(10))' at line 1
mysql> CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));
Query OK, 0 rows affected (0.04 sec)

mysql>  INSERT INTO dogs (name, breed)
    ->  VALUES ('bob', 'beagle')
    -> ('robby', 'corgi')
    -> ^C
mysql> INSERT INTO dogs (name, breed)
    -> VALUES ('bob', 'beagle')
    ->  ('robby', 'corgi');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('robby', 'corgi')' at line 3
mysql> INSERT INTO dogs (name, breed)
    ->
    -> ^C
mysql> INSERT INTO dogs (name, breed)
    ->  VALUES ('bob', 'beagle'),
    ->  ('robby', 'corgi');
Query OK, 2 rows affected (0.03 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql>  INSERT INTO dogs (name, breed) VALUES ('Pricess Jene', 'Retriever'),
    ->  ('Pricess Jene', 'Retricevekdffjsdlfjsldffsljf');
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql> SELECT * FROM DOGS;
+-------+--------+
| name  | breed  |
+-------+--------+
| bob   | beagle |
| robby | corgi  |
+-------+--------+
2 rows in set (0.00 sec)

mysql> INSERT INTO dogs (name, breed) VALUES ('Pricess Jene', 'Retriever');
ERROR 1406 (22001): Data too long for column 'name' at row 1
mysql> INSERT INTO dogs (name, breed) VALUES ('Jene', 'Retricevekdffjsdlfjsldffsljf');
ERROR 1406 (22001): Data too long for column 'breed' at row 1
mysql> INSERT INTO dogs (name, breed) VALUES ('Jene', 'Retricevef');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM DOGS;
+-------+------------+
| name  | breed      |
+-------+------------+
| bob   | beagle     |
| robby | corgi      |
| Jene  | Retricevef |
+-------+------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE items (price DECIMAL(5,2));
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO items(price) VALUES(7);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM items;
+-------+
| price |
+-------+
|  7.00 |
+-------+
1 row in set (0.00 sec)

mysql> INSERT INTO items(price) VALUES(4732948);
ERROR 1264 (22003): Out of range value for column 'price' at row 1
mysql> INSERT INTO items(price) VALUES(298.9999);
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> INSERT INTO items(price) VALUES(1.9999);
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> SELECT * FROM items;
+--------+
| price  |
+--------+
|   7.00 |
| 299.00 |
|   2.00 |
+--------+
3 rows in set (0.00 sec)

mysql> INSERT INTO items(price) VALUES(34.88);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM itemsl
    -> ^C
mysql> SELECT * FROM items;
+--------+
| price  |
+--------+
|   7.00 |
| 299.00 |
|   2.00 |
|  34.88 |
+--------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>  CREATE TABLE thingies (price FLOAT);
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO thingies VALUES (88.45);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM thingies;
+-------+
| price |
+-------+
| 88.45 |
+-------+
1 row in set (0.00 sec)

mysql> INSERT INTO thingies(price) VALUES (8877.45);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM thingies;
+---------+
| price   |
+---------+
|   88.45 |
| 8877.45 |
+---------+
2 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> CREATE TABLE people (
    -> name VARCHAR(100),
    -> birthday DATE,
    -> birthtime TIME,
    -> birthdt DATETIME
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO people (name, birthdate, birthtime, birthdt);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DROP TABLE pleople;
ERROR 1051 (42S02): Unknown table 'new_testing_db.pleople'
mysql> DROP TABLE plople;
ERROR 1051 (42S02): Unknown table 'new_testing_db.plople'
mysql> DROP TABLE people;
Query OK, 0 rows affected (0.06 sec)

mysql>  CREATE TABLE people (
    ->     -> name VARCHAR(100),
    ->     -> birthday DATE,
    ->     -> birthtime TIME,
    ->     -> birthdt DATETIME
    ->     -> );^C
mysql> CREATE TABLE people (
    -> name VARCHAR(100),
    -> birthdate DATE,
    ->  birthtime TIME,
    ->  birthdt DATETIME
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO people (name, birthdate, birthtime, birthdt)
    -> VALUES('Surya', '2001-12-30', '10:07:35','2001-12-30 10:07:35');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO people (name, birthdate, birthtime, birthdt)
    ->  VALUES('Soorya', '2002-12-30', '10:06:35','2002-12-30 10:00:05');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM people;
+--------+------------+-----------+---------------------+
| name   | birthdate  | birthtime | birthdt             |
+--------+------------+-----------+---------------------+
| Surya  | 2001-12-30 | 10:07:35  | 2001-12-30 10:07:35 |
| Soorya | 2002-12-30 | 10:06:35  | 2002-12-30 10:00:05 |
+--------+------------+-----------+---------------------+
2 rows in set (0.00 sec)

mysql> SELECT CURDATE;
ERROR 1054 (42S22): Unknown column 'CURDATE' in 'field list'
mysql> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2022-07-24 |
+------------+
1 row in set (0.02 sec)

mysql> SELECT NOW()'
    '> ^C
mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2022-07-24 16:29:13 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM people;
+--------+------------+-----------+---------------------+
| name   | birthdate  | birthtime | birthdt             |
+--------+------------+-----------+---------------------+
| Surya  | 2001-12-30 | 10:07:35  | 2001-12-30 10:07:35 |
| Soorya | 2002-12-30 | 10:06:35  | 2002-12-30 10:00:05 |
+--------+------------+-----------+---------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO people (name, birthdate, birthtime, birthdt)
    -> VALUES('Toaster', '2022-01-01', '19:12:43', '2022-01-01 19:12:43';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> INSERT INTO people (name, birthdate, birthtime, birthdt)
    ->  VALUES('Toaster', '2022-01-01', '19:12:43', '2022-01-01 19:12:43');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM people;
+---------+------------+-----------+---------------------+
| name    | birthdate  | birthtime | birthdt             |
+---------+------------+-----------+---------------------+
| Surya   | 2001-12-30 | 10:07:35  | 2001-12-30 10:07:35 |
| Soorya  | 2002-12-30 | 10:06:35  | 2002-12-30 10:00:05 |
| Toaster | 2022-01-01 | 19:12:43  | 2022-01-01 19:12:43 |
+---------+------------+-----------+---------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO people (name, birthdate, birthtime, birthdt)
    -> VALUES('Toaster', CURDATE(), CURTIME(), NOW());
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM people;
+---------+------------+-----------+---------------------+
| name    | birthdate  | birthtime | birthdt             |
+---------+------------+-----------+---------------------+
| Surya   | 2001-12-30 | 10:07:35  | 2001-12-30 10:07:35 |
| Soorya  | 2002-12-30 | 10:06:35  | 2002-12-30 10:00:05 |
| Toaster | 2022-01-01 | 19:12:43  | 2022-01-01 19:12:43 |
| Toaster | 2022-07-24 | 16:37:40  | 2022-07-24 16:37:40 |
+---------+------------+-----------+---------------------+
4 rows in set (0.00 sec)

mysql> DELETE FROM people where name = 'Toaster';
Query OK, 2 rows affected (0.03 sec)

mysql> INSERT INTO people (name, birthdate, birthtime, birthdt)
    ->  VALUES('Toaster', '2022-01-01', '19:12:43', '2022-01-01 19:12:43');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM people;
+---------+------------+-----------+---------------------+
| name    | birthdate  | birthtime | birthdt             |
+---------+------------+-----------+---------------------+
| Surya   | 2001-12-30 | 10:07:35  | 2001-12-30 10:07:35 |
| Soorya  | 2002-12-30 | 10:06:35  | 2002-12-30 10:00:05 |
| Toaster | 2022-01-01 | 19:12:43  | 2022-01-01 19:12:43 |
+---------+------------+-----------+---------------------+
3 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> SELECT name,birthdate FROM people;
+---------+------------+
| name    | birthdate  |
+---------+------------+
| Surya   | 2001-12-30 |
| Soorya  | 2002-12-30 |
| Toaster | 2022-01-01 |
+---------+------------+
3 rows in set (0.00 sec)

mysql> SELECT name, DAY(birthdate) FROM people;
+---------+----------------+
| name    | DAY(birthdate) |
+---------+----------------+
| Surya   |             30 |
| Soorya  |             30 |
| Toaster |              1 |
+---------+----------------+
3 rows in set (0.02 sec)

mysql> SELECT name, birtdate, DAYNAME(birthdate) FROM people;
ERROR 1054 (42S22): Unknown column 'birtdate' in 'field list'
mysql> SELECT name, birthdate, DAYNAME(birthdate) FROM people;
+---------+------------+--------------------+
| name    | birthdate  | DAYNAME(birthdate) |
+---------+------------+--------------------+
| Surya   | 2001-12-30 | Sunday             |
| Soorya  | 2002-12-30 | Monday             |
| Toaster | 2022-01-01 | Saturday           |
+---------+------------+--------------------+
3 rows in set (0.02 sec)

mysql> SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
+---------+------------+----------------------+
| name    | birthdate  | DAYOFWEEK(birthdate) |
+---------+------------+----------------------+
| Surya   | 2001-12-30 |                    1 |
| Soorya  | 2002-12-30 |                    2 |
| Toaster | 2022-01-01 |                    7 |
+---------+------------+----------------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;
+---------+------------+----------------------+
| name    | birthdate  | DAYOFYEAR(birthdate) |
+---------+------------+----------------------+
| Surya   | 2001-12-30 |                  364 |
| Soorya  | 2002-12-30 |                  364 |
| Toaster | 2022-01-01 |                    1 |
+---------+------------+----------------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
+---------+-----------+----------------------+
| name    | birthtime | DAYOFYEAR(birthtime) |
+---------+-----------+----------------------+
| Surya   | 10:07:35  |                  205 |
| Soorya  | 10:06:35  |                  205 |
| Toaster | 19:12:43  |                  205 |
+---------+-----------+----------------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthtime, DAYOFYEAR(birthtime) FROM people;
+---------+-----------+----------------------+
| name    | birthtime | DAYOFYEAR(birthtime) |
+---------+-----------+----------------------+
| Surya   | 10:07:35  |                  205 |
| Soorya  | 10:06:35  |                  205 |
| Toaster | 19:12:43  |                  205 |
+---------+-----------+----------------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;
+---------+---------------------+--------------------+
| name    | birthdt             | DAYOFYEAR(birthdt) |
+---------+---------------------+--------------------+
| Surya   | 2001-12-30 10:07:35 |                364 |
| Soorya  | 2002-12-30 10:00:05 |                364 |
| Toaster | 2022-01-01 19:12:43 |                  1 |
+---------+---------------------+--------------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthdt, MONTHOFYEAR(birthdt) FROM people;
ERROR 1305 (42000): FUNCTION new_testing_db.MONTHOFYEAR does not exist
mysql> SELECT name, birthdt, MONTH(birthdt) FROM people;
+---------+---------------------+----------------+
| name    | birthdt             | MONTH(birthdt) |
+---------+---------------------+----------------+
| Surya   | 2001-12-30 10:07:35 |             12 |
| Soorya  | 2002-12-30 10:00:05 |             12 |
| Toaster | 2022-01-01 19:12:43 |              1 |
+---------+---------------------+----------------+
3 rows in set (0.02 sec)

mysql> SELECT name, birthdt, MONTHNAME(birthdt) FROM people;
+---------+---------------------+--------------------+
| name    | birthdt             | MONTHNAME(birthdt) |
+---------+---------------------+--------------------+
| Surya   | 2001-12-30 10:07:35 | December           |
| Soorya  | 2002-12-30 10:00:05 | December           |
| Toaster | 2022-01-01 19:12:43 | January            |
+---------+---------------------+--------------------+
3 rows in set (0.02 sec)

mysql> SELECT name, birthdt, HOUR(birthdt) FROM people;
+---------+---------------------+---------------+
| name    | birthdt             | HOUR(birthdt) |
+---------+---------------------+---------------+
| Surya   | 2001-12-30 10:07:35 |            10 |
| Soorya  | 2002-12-30 10:00:05 |            10 |
| Toaster | 2022-01-01 19:12:43 |            19 |
+---------+---------------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthdt, TIME(birthtime) FROM people;
+---------+---------------------+-----------------+
| name    | birthdt             | TIME(birthtime) |
+---------+---------------------+-----------------+
| Surya   | 2001-12-30 10:07:35 | 10:07:35        |
| Soorya  | 2002-12-30 10:00:05 | 10:06:35        |
| Toaster | 2022-01-01 19:12:43 | 19:12:43        |
+---------+---------------------+-----------------+
3 rows in set (0.02 sec)

mysql> MONTHNAME(birthdate) DAY(birthdate) YEAR(birthdate)
    -> ^C
mysql> CONCAT(MONTHNAME(birthdate), ' ',  DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT(MONTHNAME(birthdate), ' ',  DAY(birthdate), ' ', YEAR(birthdate)) FROM pe' at line 1
mysql> SELECT CONCAT(MONTHNAME(birthdate), ' ',  DAY(birthdate), ' ', YEAR(birthdate)) FROM people;
+--------------------------------------------------------------------------+
| CONCAT(MONTHNAME(birthdate), ' ',  DAY(birthdate), ' ', YEAR(birthdate)) |
+--------------------------------------------------------------------------+
| December 30 2001                                                         |
| December 30 2002                                                         |
| January 1 2022                                                           |
+--------------------------------------------------------------------------+
3 rows in set (0.02 sec)

mysql> SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y');
+------------------------------------------------+
| DATE_FORMAT('2009-10-04 22:23:00', '%W %M %Y') |
+------------------------------------------------+
| Sunday October 2009                            |
+------------------------------------------------+
1 row in set (0.02 sec)

mysql> SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W-%M-%Y');
+------------------------------------------------+
| DATE_FORMAT('2009-10-04 22:23:00', '%W-%M-%Y') |
+------------------------------------------------+
| Sunday-October-2009                            |
+------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_FROMAT(birthdt, '%W') FROM people;
ERROR 1305 (42000): FUNCTION new_testing_db.DATE_FROMAT does not exist
mysql> SELECT DATE_FORMAT(birthdt, '%W') FROM people;
+----------------------------+
| DATE_FORMAT(birthdt, '%W') |
+----------------------------+
| Sunday                     |
| Monday                     |
| Saturday                   |
+----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT DATE_FORMAT(birthdt, 'Was Born On A %W') FROM people;
+------------------------------------------+
| DATE_FORMAT(birthdt, 'Was Born On A %W') |
+------------------------------------------+
| Was Born On A Sunday                     |
| Was Born On A Monday                     |
| Was Born On A Saturday                   |
+------------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT DATE_FROMAT(birthdt, '%m/%d/%y') FROM people;
ERROR 1305 (42000): FUNCTION new_testing_db.DATE_FROMAT does not exist
mysql> SELECT DATE_FORMAT(birthdt, '%m/%d/%y') FROM people;
+----------------------------------+
| DATE_FORMAT(birthdt, '%m/%d/%y') |
+----------------------------------+
| 12/30/01                         |
| 12/30/02                         |
| 01/01/22                         |
+----------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT DATE_FORMAT(birthdt, '%M/%D/%Y') FROM people;
+----------------------------------+
| DATE_FORMAT(birthdt, '%M/%D/%Y') |
+----------------------------------+
| December/30th/2001               |
| December/30th/2002               |
| January/1st/2022                 |
+----------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;
+----------------------------------+
| DATE_FORMAT(birthdt, '%m/%d/%Y') |
+----------------------------------+
| 12/30/2001                       |
| 12/30/2002                       |
| 01/01/2022                       |
+----------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT DATE_FROMAT(birthdt, '%m/%d/%Y' at %h:%m) FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%h:%m) FROM people' at line 1
mysql> SELECT DATE_FORMAT(birthdt, '%m/%d/%Y' at %h:%m) FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%h:%m) FROM people' at line 1
mysql> SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%m') FROM people;
+-------------------------------------------+
| DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%m') |
+-------------------------------------------+
| 12/30/2001 at 10:12                       |
| 12/30/2002 at 10:12                       |
| 01/01/2022 at 07:01                       |
+-------------------------------------------+
3 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> SELECT name, birthday FROM people;
ERROR 1054 (42S22): Unknown column 'birthday' in 'field list'
mysql> SELECT name, birthdate FROM people;
+---------+------------+
| name    | birthdate  |
+---------+------------+
| Surya   | 2001-12-30 |
| Soorya  | 2002-12-30 |
| Toaster | 2022-01-01 |
+---------+------------+
3 rows in set (0.00 sec)

mysql> SELECT name, birthdate, DAYNAME(birthdt) FROM books;
ERROR 1146 (42S02): Table 'new_testing_db.books' doesn't exist
mysql> SELECT name, birthdate, DAYNAME(birthdt) FROM people;
+---------+------------+------------------+
| name    | birthdate  | DAYNAME(birthdt) |
+---------+------------+------------------+
| Surya   | 2001-12-30 | Sunday           |
| Soorya  | 2002-12-30 | Monday           |
| Toaster | 2022-01-01 | Saturday         |
+---------+------------+------------------+
3 rows in set (0.00 sec)

mysql> SELECT
    ->
    ->
    -> ^C
mysql>
mysql>
mysql> SELECT * FROM people;
+---------+------------+-----------+---------------------+
| name    | birthdate  | birthtime | birthdt             |
+---------+------------+-----------+---------------------+
| Surya   | 2001-12-30 | 10:07:35  | 2001-12-30 10:07:35 |
| Soorya  | 2002-12-30 | 10:06:35  | 2002-12-30 10:00:05 |
| Toaster | 2022-01-01 | 19:12:43  | 2022-01-01 19:12:43 |
+---------+------------+-----------+---------------------+
3 rows in set (0.00 sec)

mysql> SELECT DATEDIFF(NOW(), birthdate) FROM people;
+----------------------------+
| DATEDIFF(NOW(), birthdate) |
+----------------------------+
|                       7512 |
|                       7147 |
|                        205 |
+----------------------------+
3 rows in set (0.02 sec)

mysql> SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;
+---------+------------+----------------------------+
| name    | birthdate  | DATEDIFF(NOW(), birthdate) |
+---------+------------+----------------------------+
| Surya   | 2001-12-30 |                       7512 |
| Soorya  | 2002-12-30 |                       7147 |
| Toaster | 2022-01-01 |                        205 |
+---------+------------+----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt FROM people;
+---------------------+
| birthdt             |
+---------------------+
| 2001-12-30 10:07:35 |
| 2002-12-30 10:00:05 |
| 2022-01-01 19:12:43 |
+---------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM people' at line 1
mysql> SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
+---------------------+-------------------------------------+
| birthdt             | DATE_ADD(birthdt, INTERVAL 1 MONTH) |
+---------------------+-------------------------------------+
| 2001-12-30 10:07:35 | 2002-01-30 10:07:35                 |
| 2002-12-30 10:00:05 | 2003-01-30 10:00:05                 |
| 2022-01-01 19:12:43 | 2022-02-01 19:12:43                 |
+---------------------+-------------------------------------+
3 rows in set (0.02 sec)

mysql> SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 SECOND) FROM people;
+---------------------+--------------------------------------+
| birthdt             | DATE_ADD(birthdt, INTERVAL 1 SECOND) |
+---------------------+--------------------------------------+
| 2001-12-30 10:07:35 | 2001-12-30 10:07:36                  |
| 2002-12-30 10:00:05 | 2002-12-30 10:00:06                  |
| 2022-01-01 19:12:43 | 2022-01-01 19:12:44                  |
+---------------------+--------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTEER) FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'QUARTEER) FROM people' at line 1
mysql> SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;
+---------------------+---------------------------------------+
| birthdt             | DATE_ADD(birthdt, INTERVAL 3 QUARTER) |
+---------------------+---------------------------------------+
| 2001-12-30 10:07:35 | 2002-09-30 10:07:35                   |
| 2002-12-30 10:00:05 | 2003-09-30 10:00:05                   |
| 2022-01-01 19:12:43 | 2022-10-01 19:12:43                   |
+---------------------+---------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt, DATE_ADD(birthdt, INTERVAL 3 QUARTER) FROM people;
+---------------------+---------------------------------------+
| birthdt             | DATE_ADD(birthdt, INTERVAL 3 QUARTER) |
+---------------------+---------------------------------------+
| 2001-12-30 10:07:35 | 2002-09-30 10:07:35                   |
| 2002-12-30 10:00:05 | 2003-09-30 10:00:05                   |
| 2022-01-01 19:12:43 | 2022-10-01 19:12:43                   |
+---------------------+---------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt, birthdt - INTERVAL 1 MONTH FROM people;
+---------------------+----------------------------+
| birthdt             | birthdt - INTERVAL 1 MONTH |
+---------------------+----------------------------+
| 2001-12-30 10:07:35 | 2001-11-30 10:07:35        |
| 2002-12-30 10:00:05 | 2002-11-30 10:00:05        |
| 2022-01-01 19:12:43 | 2021-12-01 19:12:43        |
+---------------------+----------------------------+
3 rows in set (0.02 sec)

mysql> SELECT birthdt, birthdt + INTERVAL 1 MONTH FROM people;
+---------------------+----------------------------+
| birthdt             | birthdt + INTERVAL 1 MONTH |
+---------------------+----------------------------+
| 2001-12-30 10:07:35 | 2002-01-30 10:07:35        |
| 2002-12-30 10:00:05 | 2003-01-30 10:00:05        |
| 2022-01-01 19:12:43 | 2022-02-01 19:12:43        |
+---------------------+----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt, birthdt - INTERVAL 1 MONTH FROM people;
+---------------------+----------------------------+
| birthdt             | birthdt - INTERVAL 1 MONTH |
+---------------------+----------------------------+
| 2001-12-30 10:07:35 | 2001-11-30 10:07:35        |
| 2002-12-30 10:00:05 | 2002-11-30 10:00:05        |
| 2022-01-01 19:12:43 | 2021-12-01 19:12:43        |
+---------------------+----------------------------+
3 rows in set (0.00 sec)

mysql> SLECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SLECT birthdt, birthdt - INTERVAL 5 MONTH FROM people' at line 1
mysql> SELECT birthdt, birthdt - INTERVAL 5 MONTH FROM people;
+---------------------+----------------------------+
| birthdt             | birthdt - INTERVAL 5 MONTH |
+---------------------+----------------------------+
| 2001-12-30 10:07:35 | 2001-07-30 10:07:35        |
| 2002-12-30 10:00:05 | 2002-07-30 10:00:05        |
| 2022-01-01 19:12:43 | 2021-08-01 19:12:43        |
+---------------------+----------------------------+
3 rows in set (0.00 sec)

mysql> SELECT birthdt, birthdt + INTERVAL 5 MONTH + INTERVAL 10 HOUR FROM people';
    '> ^C
mysql> SELECT birthdt, birthdt + INTERVAL 5 MONTH + INTERVAL 10 HOUR FROM people;
+---------------------+-----------------------------------------------+
| birthdt             | birthdt + INTERVAL 5 MONTH + INTERVAL 10 HOUR |
+---------------------+-----------------------------------------------+
| 2001-12-30 10:07:35 | 2002-05-30 20:07:35                           |
| 2002-12-30 10:00:05 | 2003-05-30 20:00:05                           |
| 2022-01-01 19:12:43 | 2022-06-02 05:12:43                           |
+---------------------+-----------------------------------------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE comments (
    -> content VARCHAR(100),
    -> created_at TIMESTAMP DEFAULT NOW()
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO comments (content) VALUES ('Hey! whats up?);
    '> ^C
mysql> INSERT INTO comments (content) VALUES('Hey! whats up?);
    '> ^C
mysql> INSERT INTO comments (content) VALUES('Hey! whats up?');
Query OK, 1 row affected (0.03 sec)

mysql> INSERT INTO comments (content) VALUES('I AM fine');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM comments;
+----------------+---------------------+
| content        | created_at          |
+----------------+---------------------+
| Hey! whats up? | 2022-07-25 08:40:17 |
| I AM fine      | 2022-07-25 08:41:08 |
+----------------+---------------------+
2 rows in set (0.00 sec)

mysql> INSERT INTO comments (content) VALUES('what about u? ');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM comments;
+----------------+---------------------+
| content        | created_at          |
+----------------+---------------------+
| Hey! whats up? | 2022-07-25 08:40:17 |
| I AM fine      | 2022-07-25 08:41:08 |
| what about u?  | 2022-07-25 08:41:58 |
+----------------+---------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM comments ORDER BY created_at;
+----------------+---------------------+
| content        | created_at          |
+----------------+---------------------+
| Hey! whats up? | 2022-07-25 08:40:17 |
| I AM fine      | 2022-07-25 08:41:08 |
| what about u?  | 2022-07-25 08:41:58 |
+----------------+---------------------+
3 rows in set (0.02 sec)

mysql> SELECT * FROM comments ORDER BY created_at DESC;
+----------------+---------------------+
| content        | created_at          |
+----------------+---------------------+
| what about u?  | 2022-07-25 08:41:58 |
| I AM fine      | 2022-07-25 08:41:08 |
| Hey! whats up? | 2022-07-25 08:40:17 |
+----------------+---------------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE comments2 (
    -> content VARCHAR(100),
    -> changed_at TIMESTAMP DEFAULT NOW() UPDATE CURRENT_TIMESTAMP
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UPDATE CURRENT_TIMESTAMP
)' at line 3
mysql>  CREATE TABLE comments2 (
    -> content VARCHAR(100),
    -> changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO comments2(content) VALUES('I like cats and dogs');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO comments2(content)
    -> VALUES('I am Surya'),
    -> ('I am typing');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM comments2;
+----------------------+---------------------+
| content              | changed_at          |
+----------------------+---------------------+
| I like cats and dogs | 2022-07-25 08:49:50 |
| I am Surya           | 2022-07-25 08:51:56 |
| I am typing          | 2022-07-25 08:51:56 |
+----------------------+---------------------+
3 rows in set (0.00 sec)

mysql> UPDATE comments2 SET content = 'i am looking at screen now' WHERE content = 'I am typing';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM comments2;
+----------------------------+---------------------+
| content                    | changed_at          |
+----------------------------+---------------------+
| I like cats and dogs       | 2022-07-25 08:49:50 |
| I am Surya                 | 2022-07-25 08:51:56 |
| i am looking at screen now | 2022-07-25 08:54:26 |
+----------------------------+---------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM comments2 ORDER BY changed_at;
+----------------------------+---------------------+
| content                    | changed_at          |
+----------------------------+---------------------+
| I like cats and dogs       | 2022-07-25 08:49:50 |
| I am Surya                 | 2022-07-25 08:51:56 |
| i am looking at screen now | 2022-07-25 08:54:26 |
+----------------------------+---------------------+
3 rows in set (0.00 sec)

mysql> 



mysql> EXERCISE
    -> ^C
mysql> show the current time
    -> ^C
mysql>
mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2022-07-25 10:37:08 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT CURTIME();
+-----------+
| CURTIME() |
+-----------+
| 10:37:37  |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2022-07-25 |
+------------+
1 row in set (0.00 sec)

mysql> select day of the week
    -> ^C
mysql>
mysql> SELECT DAYOFWEEK(CURDATE()):
    -> ^C
mysql> SELECT DAYOFWEEK(CURDATE()):
    -> ^C
mysql> SELECT DAYOFWEEK(CURDATE());
+----------------------+
| DAYOFWEEK(CURDATE()) |
+----------------------+
|                    2 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT DAY_FORMAT(NOW(), '%W');
ERROR 1305 (42000): FUNCTION new_testing_db.DAY_FORMAT does not exist
mysql> SELECT DADE_FORMAT(NOW(), '%W');
ERROR 1305 (42000): FUNCTION new_testing_db.DADE_FORMAT does not exist
mysql> SELECT DATE_FORMAT(NOW(), '%W');
+--------------------------+
| DATE_FORMAT(NOW(), '%W') |
+--------------------------+
| Monday                   |
+--------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_FORMAT(NOW(), '%W') + 1;
+------------------------------+
| DATE_FORMAT(NOW(), '%W') + 1 |
+------------------------------+
|                            1 |
+------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT DATE_FORMAT(NOW(), '%w') + 1;
+------------------------------+
| DATE_FORMAT(NOW(), '%w') + 1 |
+------------------------------+
|                            2 |
+------------------------------+
1 row in set (0.00 sec)

mysql> format the date by  mmm/dd/yyyy
    -> ^C
mysql> SELECT DATE_FROMAT(CURDATE(), '%m/%d/%Y');
ERROR 1305 (42000): FUNCTION new_testing_db.DATE_FROMAT does not exist
mysql> SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
+------------------------------------+
| DATE_FORMAT(CURDATE(), '%m/%d/%Y') |
+------------------------------------+
| 07/25/2022                         |
+------------------------------------+
1 row in set (0.00 sec)

mysql> print out the current day and time using the format:
    -> January 1st at 4:20
    -> August 2nd at 5:30
    -> ^C
mysql> SELECT DATE_FORMAT(CURDATE(), '%M %D');
+---------------------------------+
| DATE_FORMAT(CURDATE(), '%M %D') |
+---------------------------------+
| July 25th                       |
+---------------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_FORMAT(NOW(), '%M %D');
+-----------------------------+
| DATE_FORMAT(NOW(), '%M %D') |
+-----------------------------+
| July 25th                   |
+-----------------------------+
1 row in set (0.00 sec)

mysql> SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
+--------------------------------------+
| DATE_FORMAT(NOW(), '%M %D at %h:%i') |
+--------------------------------------+
| July 25th at 10:57                   |
+--------------------------------------+
1 row in set (0.00 sec)

mysql> CREATE A TWEETS TABLE
    -> that stores:
    -> the tweet content
    -> A username
    -> Time it was created ^C
mysql>
mysql> CREATE TABLE tweets (
    -> content VARCHAR(140),
    -> username VARCHAR(20),
    -> created_at TIMESTAMP DEFAULT NOW
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NOW
)' at line 4
mysql>  CREATE TABLE tweets (
    ->  content VARCHAR(140),
    -> username VARCHAR(20),
    ->  created_at TIMESTAMP DEFAULT NOW()
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO tweets (
    -> VALUES ^C
mysql> INSERT INTO tweets (content, username)
    -> VALUES('This is my first tweet', 'surya');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM tweets;
+------------------------+----------+---------------------+
| content                | username | created_at          |
+------------------------+----------+---------------------+
| This is my first tweet | surya    | 2022-07-25 11:04:07 |
+------------------------+----------+---------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO tweets(
    -> ^C
mysql> INSERT INTO tweets(content, username, created_at)
    -> VALUES('i am surya', 'surya');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> INSERT INTO tweets(content, username)
    -> VALUES('i am surya', 'surya');
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM tweets;
+------------------------+----------+---------------------+
| content                | username | created_at          |
+------------------------+----------+---------------------+
| This is my first tweet | surya    | 2022-07-25 11:04:07 |
| i am surya             | surya    | 2022-07-25 11:07:33 |
+------------------------+----------+---------------------+
2 rows in set (0.00 sec)

mysql>