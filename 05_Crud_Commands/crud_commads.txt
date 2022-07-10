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
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> DROP TABLE cats;
Query OK, 0 rows affected (0.03 sec)

mysql> DESC cats
    -> ^C
mysql> DESC cats;
ERROR 1146 (42S02): Table 'cat_app.cats' doesn't exist
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| cat_app            |
| information_schema |
| mysql              |
| people             |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> use cat_app
Database changed
mysql> SELECT * FROM cats_app
    -> ^C
mysql> SELECT * FROM cats_app;
ERROR 1146 (42S02): Table 'cat_app.cats_app' doesn't exist
mysql> DESC cats_app
    -> ^C
mysql> DESC cats_app;
ERROR 1146 (42S02): Table 'cat_app.cats_app' doesn't exist
mysql> DESC cats
    -> ^C
mysql> DESC cats;
ERROR 1146 (42S02): Table 'cat_app.cats' doesn't exist
mysql> CREATE TABLE cats (
    -> cat_id INT NOT NULL AUTO_INCREMENT,
    -> name VARCHAR(100),
    -> breed VARCHAR(100),
    -> age INT,
    -> PRIMARY KEY (cat_id)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> DESC cats;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| cat_id | int          | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| breed  | varchar(100) | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO cats (name, breed, age)
    -> VALUES ('Ringo', 'Tabby', 4),
    -> ('Cindy', Maine Coon', 11),
    '> ^C
mysql> INSERT INTO cats (name, breed, age)
    ->  VALUES ('Ringo', 'Tabby', 4),
    ->  ('Cindy', 'Maine Coon', 11),
    -> ('Dumbledore', 'Maine Coon', 1^C
mysql> INSERT INTO cats (name, breed, age)
    -> VALUES ('Ringo', 'Tabby', 4),
    -> ('Cindy', 'Maine Coon', 10),
    -> ('Dumbledore', 'Maine Coon', 11),
    -> ('Egg', Persian', 4),
    '> ('^Cstry'
mysql> INSERT INTO cats (name, breed, age)
    -> VALUES ('Ringo', 'Tabby', 4),
    -> ('Cindy', 'Maine Coon', 10),
    -> ('Dumbledore', 'Maine Coon', 11),
    -> ('Egg', 'Persian', 4),
    -> ('Misty', 'Tabby', 13),
    -> ('George Michael', 'Ragdoll', 9),
    -> ('Jackson', 'Sphynx', 7);
Query OK, 7 rows affected (0.01 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT name FROM cats;
+----------------+
| name           |
+----------------+
| Ringo          |
| Cindy          |
| Dumbledore     |
| Egg            |
| Misty          |
| George Michael |
| Jackson        |
+----------------+
7 rows in set (0.00 sec)

mysql> SELECT age FROM cats;
+------+
| age  |
+------+
|    4 |
|   10 |
|   11 |
|    4 |
|   13 |
|    9 |
|    7 |
+------+
7 rows in set (0.00 sec)

mysql> SELECT name, age FROM cats;
+----------------+------+
| name           | age  |
+----------------+------+
| Ringo          |    4 |
| Cindy          |   10 |
| Dumbledore     |   11 |
| Egg            |    4 |
| Misty          |   13 |
| George Michael |    9 |
| Jackson        |    7 |
+----------------+------+
7 rows in set (0.00 sec)

mysql> SELECT cat_id, name, age FROM cats;
+--------+----------------+------+
| cat_id | name           | age  |
+--------+----------------+------+
|      1 | Ringo          |    4 |
|      2 | Cindy          |   10 |
|      3 | Dumbledore     |   11 |
|      4 | Egg            |    4 |
|      5 | Misty          |   13 |
|      6 | George Michael |    9 |
|      7 | Jackson        |    7 |
+--------+----------------+------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM cats
    -> ^C
mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> SELECT age, breed, name, cat_id FROM cats;
+------+------------+----------------+--------+
| age  | breed      | name           | cat_id |
+------+------------+----------------+--------+
|    4 | Tabby      | Ringo          |      1 |
|   10 | Maine Coon | Cindy          |      2 |
|   11 | Maine Coon | Dumbledore     |      3 |
|    4 | Persian    | Egg            |      4 |
|   13 | Tabby      | Misty          |      5 |
|    9 | Ragdoll    | George Michael |      6 |
|    7 | Sphynx     | Jackson        |      7 |
+------+------------+----------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE age = 4;
+--------+-------+---------+------+
| cat_id | name  | breed   | age  |
+--------+-------+---------+------+
|      1 | Ringo | Tabby   |    4 |
|      4 | Egg   | Persian |    4 |
+--------+-------+---------+------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE name = 'Egg';
+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+
1 row in set (0.00 sec)

mysql> SELECT * FROM cats WHERE name = 'EGG';
+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+
1 row in set (0.00 sec)

mysql> SELECT cat_id FROM cats;
+--------+
| cat_id |
+--------+
|      1 |
|      2 |
|      3 |
|      4 |
|      5 |
|      6 |
|      7 |
+--------+
7 rows in set (0.00 sec)

mysql> SELECT name, breed FROM cats;
+----------------+------------+
| name           | breed      |
+----------------+------------+
| Ringo          | Tabby      |
| Cindy          | Maine Coon |
| Dumbledore     | Maine Coon |
| Egg            | Persian    |
| Misty          | Tabby      |
| George Michael | Ragdoll    |
| Jackson        | Sphynx     |
+----------------+------------+
7 rows in set (0.00 sec)

mysql> SELECT name, age FROM cats WHERE name = 'Ringo', 'Misty';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', 'Misty'' at line 1
mysql> SELECT name, age FROM cats WHERE name = 'Ringo', name = 'Misty';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', name = 'Misty'' at line 1
mysql> SELECT name, age FROM cats WHERE breed = 'Tabby'
    -> ^C
mysql> SELECT name, age FROM cats WHERE breed = 'Tabby';
+-------+------+
| name  | age  |
+-------+------+
| Ringo |    4 |
| Misty |   13 |
+-------+------+
2 rows in set (0.00 sec)

mysql> SELECT cat_id, age  FROM  cats WHERE cat_id = age;
+--------+------+
| cat_id | age  |
+--------+------+
|      4 |    4 |
|      7 |    7 |
+--------+------+
2 rows in set (0.00 sec)

mysql> SELECT cat_id AS id FROM cats;
+----+
| id |
+----+
|  1 |
|  2 |
|  3 |
|  4 |
|  5 |
|  6 |
|  7 |
+----+
7 rows in set (0.00 sec)

mysql> SELECT cat_id AS id, name AS cat_name FROM cats;
+----+----------------+
| id | cat_name       |
+----+----------------+
|  1 | Ringo          |
|  2 | Cindy          |
|  3 | Dumbledore     |
|  4 | Egg            |
|  5 | Misty          |
|  6 | George Michael |
|  7 | Jackson        |
+----+----------------+
7 rows in set (0.00 sec)

mysql> DESC cats;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| cat_id | int          | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| breed  | varchar(100) | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> UDATE cats SET breed = 'Shorthair'
    -> wHERE breed = 'Tabby';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UDATE cats SET breed = 'Shorthair'
wHERE breed = 'Tabby'' at line 1
mysql> UDATE cats SET breed = 'Shorthair'
    -> WHERE breed = 'Tabby';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby'' at line 1
mysql> UPDATE cats SET breed = 'Shorthair'
    -> WHERE breed = 'Tabby';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Shorthair  |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Shorthair  |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET age = 14
    -> WHERE name = 'Misty';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT name, age FROM cats;
+----------------+------+
| name           | age  |
+----------------+------+
| Ringo          |    4 |
| Cindy          |   10 |
| Dumbledore     |   11 |
| Egg            |    4 |
| Misty          |   14 |
| George Michael |    9 |
| Jackson        |    7 |
+----------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET Ringo = 'Brititsh Shorthair'
    -> WHERE Ringo  = 'Shorthauir';
ERROR 1054 (42S22): Unknown column 'Ringo' in 'where clause'
mysql> UPDATE cats SET breed = 'British Shorthair'
    -> WHERE Ringo = 'Shorthair';
ERROR 1054 (42S22): Unknown column 'Ringo' in 'where clause'
mysql> UPDATE cats SET breed = 'British Shorthair'
    -> WHERE breed = 'Shorthair';
Query OK, 2 rows affected (0.02 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   10 |
|      3 | Dumbledore     | Maine Coon        |   11 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | British Shorthair |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jackson        | Sphynx            |    7 |
+--------+----------------+-------------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET age = 12
    -> WHERE name = 'Maine Coons';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE cats SET age = 17
    -> WHERE breed = 'Maine Coons';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE cats SET age = 12
    -> WHERE breed = Maine Coon;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Coon' at line 2
mysql> UPDATE cats SET age = 12
    -> WHERE breed = 'Main Coon';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE cats SET age = 12
    -> WHERE breed = 'Maine Coon';
Query OK, 2 rows affected (0.02 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT breed, age FROM cats;
+-------------------+------+
| breed             | age  |
+-------------------+------+
| British Shorthair |    4 |
| Maine Coon        |   12 |
| Maine Coon        |   12 |
| Persian           |    4 |
| British Shorthair |   14 |
| Ragdoll           |    9 |
| Sphynx            |    7 |
+-------------------+------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | British Shorthair |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jackson        | Sphynx            |    7 |
+--------+----------------+-------------------+------+
7 rows in set (0.00 sec)

mysql> UPDATE cats SET name = 'Jak'
    -> WHERE name = 'Jackson';
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> Select name FROM cats;
+----------------+
| name           |
+----------------+
| Ringo          |
| Cindy          |
| Dumbledore     |
| Egg            |
| Misty          |
| George Michael |
| Jak            |
+----------------+
7 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM cats WHERE breed = 'Maine Coon';
+--------+------------+------------+------+
| cat_id | name       | breed      | age  |
+--------+------------+------------+------+
|      2 | Cindy      | Maine Coon |   12 |
|      3 | Dumbledore | Maine Coon |   12 |
+--------+------------+------------+------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE name = Egg;
ERROR 1054 (42S22): Unknown column 'Egg' in 'where clause'
mysql> SELECT * FROM cats WHERE name = 'Egg';
+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+
1 row in set (0.00 sec)

mysql> DELETE FROM cats WHERE name = 'egg';
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      5 | Misty          | British Shorthair |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jak            | Sphynx            |    7 |
+--------+----------------+-------------------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE age = 4;
+--------+-------+-------------------+------+
| cat_id | name  | breed             | age  |
+--------+-------+-------------------+------+
|      1 | Ringo | British Shorthair |    4 |
+--------+-------+-------------------+------+
1 row in set (0.00 sec)

mysql> DELETE FROM cats WHERE age = 4;
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      5 | Misty          | British Shorthair |   14 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jak            | Sphynx            |    7 |
+--------+----------------+-------------------+------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM cats WHERE cat_id = age;
+--------+------+--------+------+
| cat_id | name | breed  | age  |
+--------+------+--------+------+
|      7 | Jak  | Sphynx |    7 |
+--------+------+--------+------+
1 row in set (0.00 sec)

mysql> DELETE FROM cats WHERE cat_id = age;
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      5 | Misty          | British Shorthair |   14 |
|      6 | George Michael | Ragdoll           |    9 |
+--------+----------------+-------------------+------+
4 rows in set (0.00 sec)

mysql> DELETE FROM cats;
Query OK, 4 rows affected (0.02 sec)

mysql> SELECT * FROM cats;
Empty set (0.00 sec)

mysql>
