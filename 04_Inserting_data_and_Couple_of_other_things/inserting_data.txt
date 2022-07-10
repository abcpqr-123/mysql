mysql> CREATE TABLE cats
    -> ^C
mysql> CREATE TABLE cats;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE cats (
    -> name VARCHAR(100),
    -> age INT
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO cats (name, age)
    -> VALUES ('Blue', 1);
Query OK, 1 row affected (0.04 sec)

mysql> SHOW TABLE
    -> ^C
mysql> SHOW TABLES;
+-------------------+
| Tables_in_cat_app |
+-------------------+
| cats              |
+-------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO cats(age, name) VALUES(11, 'Draco');
Query OK, 1 row affected (0.02 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_cat_app |
+-------------------+
| cats              |
+-------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM cats;
+-------+------+
| name  | age  |
+-------+------+
| Blue  |    1 |
| Draco |   11 |
+-------+------+
2 rows in set (0.02 sec)

mysql>
mysql>
mysql> INSERT INTO cats (name, age)
    -> VALUES ('Peanut', 2)
    -> , ('Butter', 4),
    -> (Jelly', 7);
    '> ^C
mysql> INSERT INTO cats (name, age)
    -> VALUES ('Peanut', 2),
    -> ('Butter', 4),
    -> ('Jelly' 7);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '7)' at line 4
mysql> INSERT INTO cats (name, age)
    ->     -> VALUES ('Peanut', 2),
    ->     -> ('Butter', 4),
    ->     -> ('Jelly', 7);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> VALUES ('Peanut', 2),
    -> ('Butter', 4),
    -> ('Jelly', 7)' at line 2
mysql>     -> ('Jelly', 7);^C
mysql> INSERT INTO cats (name, age)
    ->     -> VALUES ('Peanut', 2),
    ->     -> ('Butter', 4),
    ->     -> ('Jelly' 7);^C
mysql> INSERT INTO cats (name, age)
    -> VALUES ('Peanut', 2)
    -> , (Butter', 4)
    '> ^C
mysql> INSERT INTO cats (name, age)
    -> VALUES ('Peanut', 2)
    -> ,('Butter', 4)
    -> ,('Jelly', 7);
Query OK, 3 rows affected (0.03 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO cats (name, age)
    -> VALUES ('Peanut', 2),
    -> ('Butter', 4),
    -> ('Jelly', 7);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM cats;
+--------+------+
| name   | age  |
+--------+------+
| Blue   |    1 |
| Draco  |   11 |
| Peanut |    2 |
| Butter |    4 |
| Jelly  |    7 |
| Peanut |    2 |
| Butter |    4 |
| Jelly  |    7 |
+--------+------+
8 rows in set (0.00 sec)

mysql> CREATE TABLE people
    -> ^C
mysql> CREATE TABLE people (
    -> first_name VARCHAR(20),
    -> last_name VARCHAR(20),
    -> age INT,
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 5
mysql> CREATE TABLE people (
    -> first_name VARCHAR(20),
    -> last_name VARCHAR(20),
    -> age INT );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT * INTO people (^C
mysql> INSERT * INTO people (
    -> ^C
mysql> INSERT * INTO people (frist_name, last_name, age)
    -> VALUES ('Tina', 'Balcher', 13),
    -> (^C
mysql> INSERT * INTO people (frist_name, last_name, age)
    ->  VALUES ('Tina', 'Balcher', 13)
    -> ^C
mysql>  INSERT * INTO people (frist_name, last_name, age)
    -> VALUES ('Tina', 'Balcher', 13);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* INTO people (frist_name, last_name, age)
VALUES ('Tina', 'Balcher', 13)' at line 1
mysql> SHOW DATABASES
    -> ^C
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| cat_app            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> CREATE DATABASE people
    -> ^C
mysql> CREATE DATABASE people;
Query OK, 1 row affected (0.03 sec)

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

mysql> use people
Database changed
mysql> CREATE  TABLE people (
    -> first_name VARCHAR(20)
    -> ^C
mysql> CREATE TABLE people (
    -> first_name VARCHAR(20),
    -> last_name VARCHAR(20),
    -> age INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLE
    -> ^C
mysql> SHOW TABLE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW TABLES;
+------------------+
| Tables_in_people |
+------------------+
| people           |
+------------------+
1 row in set (0.00 sec)

mysql> INSERT * INTO people (first_name, last_name, age)
    -> VALUES ('Bob', 'Belcher', 42)
    -> ^C
mysql> INSERT * INTO people (first_name, last_name, age)
    -> VALUES ('Bob', 'Belcher', 42);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* INTO people (first_name, last_name, age)
VALUES ('Bob', 'Belcher', 42)' at line 1
mysql> DESC people
    -> ^C
mysql> DESC people;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO people(first_name, last_name, age)
    -> VALUES ('Bob', 'Belcher', 42);
Query OK, 1 row affected (0.01 sec)

mysql> DESC people
    -> ^C
mysql> DESC people;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| first_name | varchar(20) | YES  |     | NULL    |       |
| last_name  | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM people
    -> ^C
mysql> SELECT * FROM people;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Bob        | Belcher   |   42 |
+------------+-----------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO people (first_name, last_name, age)
    -> VALUES ('Tina', 'Belcher', 13);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM PEOPLE
    -> ^C
mysql> SELECT * FROM PEOPLE;
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Bob        | Belcher   |   42 |
| Tina       | Belcher   |   13 |
+------------+-----------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO people (first_name, last_name, age)
    -> VALUES ('Linda', 'Belcher', 45),
    -> ('Philip', 'Frond', 38),
    -> ('Calvin', 'Fischoeder', 70);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM people
    -> ^C
mysql> SELECT * FROM people;
+------------+------------+------+
| first_name | last_name  | age  |
+------------+------------+------+
| Bob        | Belcher    |   42 |
| Tina       | Belcher    |   13 |
| Linda      | Belcher    |   45 |
| Philip     | Frond      |   38 |
| Calvin     | Fischoeder |   70 |
+------------+------------+------+
5 rows in set (0.00 sec)

mysql> DROP TABLE people;
Query OK, 0 rows affected (0.03 sec)

mysql> SELECT * FROM people;
ERROR 1146 (42S02): Table 'people.people' doesn't exist
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
mysql> DESC cats
    -> ^C
mysql> DESC cats;
ERROR 1146 (42S02): Table 'people.cats' doesn't exist
mysql> show tables
    -> ^C
mysql> show tables;
Empty set (0.00 sec)

mysql> CREATE TABLE cats;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> SHOW DATABASES
    -> ^C
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
mysql> ^C
mysql> SHOW TABLES
    -> ^C
mysql> SHOW TABLES;
+-------------------+
| Tables_in_cat_app |
+-------------------+
| cats              |
| people            |
+-------------------+
2 rows in set (0.00 sec)

mysql> DROP TABLE people
    -> ^C
mysql> DROP TABLE people;
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW TABLES
    -> ^C
mysql> SHOW TABLES;
+-------------------+
| Tables_in_cat_app |
+-------------------+
| cats              |
+-------------------+
1 row in set (0.00 sec)

mysql> DESC CATS
    -> ^C
mysql> DESC CATS;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO cats (name, age)
    -> VALUES ('This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact', 10)
    -> ^C
mysql> VALUES ('This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact', 10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('This cat is named charlie which is also a human name. infact i know couple of ' at line 1
mysql> VALUES ('This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact', 10);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('This cat is named charlie which is also a human name. infact i know couple of ' at line 1
mysql> SHOW WARNINGS
    -> ^C
mysql> SHOW WARNINGS;
+-------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Level | Code | Message                                                                                                                                                                                                                            |
+-------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Error | 1064 | You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('This cat is named charlie which is also a human name. infact i know couple of ' at line 1 |
+-------+------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO cats (name, age)^C
mysql> INSERT INTO cats (name, age)
    -> ^C
mysql> INSERT INTO cats (name, age);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO cats (name, age)
    -> VALUES ('This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact', 10);
Query OK, 1 row affected (0.01 sec)

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
mysql>
mysql>  insert INTO cats (name, age) VALUES('Lima', 'fljsfljsdkfjlsd')
    -> ^C
mysql>  insert INTO cats (name, age) VALUES('Lima', 'fljsfljsdkfjlsd');
ERROR 1366 (HY000): Incorrect integer value: 'fljsfljsdkfjlsd' for column 'age' at row 1
mysql> SHOW WANRNINGS
    -> ^C
mysql> SHOW WANRNINGS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WANRNINGS' at line 1
mysql> SHOW WARNINGS;
+-------+------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Level | Code | Message                                                                                                                                                     |
+-------+------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Error | 1064 | You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WANRNINGS' at line 1 |
+-------+------+-------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM cats
    -> ^C
mysql> SELECT * FROM cats;
+-------------------------------------------------------------------------------------------------+------+
| name                                                                                            | age  |
+-------------------------------------------------------------------------------------------------+------+
| Blue                                                                                            |    1 |
| Draco                                                                                           |   11 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact |   10 |
+-------------------------------------------------------------------------------------------------+------+
9 rows in set (0.00 sec)

mysql>  insert INTO cats (name, age) VALUES('Lima', 'fljsfljsdkfjlsd');
ERROR 1366 (HY000): Incorrect integer value: 'fljsfljsdkfjlsd' for column 'age' at row 1
mysql> SELECT * FROM cats;
+-------------------------------------------------------------------------------------------------+------+
| name                                                                                            | age  |
+-------------------------------------------------------------------------------------------------+------+
| Blue                                                                                            |    1 |
| Draco                                                                                           |   11 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact |   10 |
+-------------------------------------------------------------------------------------------------+------+
9 rows in set (0.00 sec)

mysql> INSERT INTO cats (name)
    -> VALUE ('Bikku');
Query OK, 1 row affected (0.01 sec)

mysql> DESC cats
    -> ^C
mysql> DESC cats;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM cats
    -> ^C
mysql> SELECT * FROM cats;
+-------------------------------------------------------------------------------------------------+------+
| name                                                                                            | age  |
+-------------------------------------------------------------------------------------------------+------+
| Blue                                                                                            |    1 |
| Draco                                                                                           |   11 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact |   10 |
| Bikku                                                                                           | NULL |
+-------------------------------------------------------------------------------------------------+------+
10 rows in set (0.00 sec)

mysql> INSERT INTO cats
    -> ^C
mysql> INSERT INTO cats ()
    -> ^C
mysql> INSERT INTO cats ();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO cats();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO cats()
    -> VALUES ();
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM cats
    -> ^C
mysql> SELECT * FROM cats;
+-------------------------------------------------------------------------------------------------+------+
| name                                                                                            | age  |
+-------------------------------------------------------------------------------------------------+------+
| Blue                                                                                            |    1 |
| Draco                                                                                           |   11 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact |   10 |
| Bikku                                                                                           | NULL |
| NULL                                                                                            | NULL |
+-------------------------------------------------------------------------------------------------+------+
11 rows in set (0.00 sec)

mysql> CREATE TABLE cats2(
    -> name VARCHAR(100) NOT NULL,
    -> age INT NOT NULL
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> DW
    -> ^C
mysql> DESC cats2;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | NULL    |       |
| age   | int          | NO   |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO cats2(name)
    -> VALUE ('Karnataka');
ERROR 1364 (HY000): Field 'age' doesn't have a default value
mysql> SELECT * FROM cats2;
Empty set (0.00 sec)

mysql> INSERT INTO cats2(name)
    -> VALUES ('Karnataka');
ERROR 1364 (HY000): Field 'age' doesn't have a default value
mysql> SELECT * FROM cats2;
Empty set (0.00 sec)

mysql> INSERT INTO cats2(name)
    -> VALUES('Karnataka');
ERROR 1364 (HY000): Field 'age' doesn't have a default value
mysql> SELECT * FROM cats2;
Empty set (0.00 sec)

mysql> CREATE TABLE cats3
    -> (
    -> name VARCHAR(100),
    -> ^C
mysql> CREATE TABLE cats3(
    -> name VARCHAR(100) DEFAULT 'no name provided',
    -> age  INT DEFAULT '99');
Query OK, 0 rows affected (0.04 sec)

mysql> DESC cats
    -> ^C
mysql> DESC cats;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

mysql> DECS cats3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DECS cats3' at line 1
mysql> DESC cats3;\
+-------+--------------+------+-----+------------------+-------+
| Field | Type         | Null | Key | Default          | Extra |
+-------+--------------+------+-----+------------------+-------+
| name  | varchar(100) | YES  |     | no name provided |       |
| age   | int          | YES  |     | 99               |       |
+-------+--------------+------+-----+------------------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM cats3;
Empty set (0.00 sec)

mysql> INSEERT INTO cats3()
    -> VALUES();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSEERT INTO cats3()
VALUES()' at line 1
mysql> INSERT INTO cats3()
    -> VALUES();
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM cats3;
+------------------+------+
| name             | age  |
+------------------+------+
| no name provided |   99 |
+------------------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO cats3
    -> VALUES ^C
mysql> INSERT INTO cats3 (name, age)
    -> VALUES ('Montana', NULL);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM cats3;
+------------------+------+
| name             | age  |
+------------------+------+
| no name provided |   99 |
| Montana          | NULL |
+------------------+------+
2 rows in set (0.00 sec)

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
mysql>
mysql>
mysql> CREATE TABLE cats4 (
    -> name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
    -> age INT NOT NULL DEFAULT 99
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> SELECT * FROM cats4;
Empty set (0.00 sec)

mysql> DESC cats4
    -> ^C
mysql> DESC cats4;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(20) | NO   |     | unnamed |       |
| age   | int         | NO   |     | 99      |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> INSERT INTO cats4
    ->  VALUES ^C
mysql> INSERT INTO cats4 (name , age)
    -> VALUES ('cali', NULL);
ERROR 1048 (23000): Column 'age' cannot be null
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
mysql> SELECT * FROM cats
    -> ^C
mysql> SELECT * FROM cats ;
+-------------------------------------------------------------------------------------------------+------+
| name                                                                                            | age  |
+-------------------------------------------------------------------------------------------------+------+
| Blue                                                                                            |    1 |
| Draco                                                                                           |   11 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact |   10 |
| Bikku                                                                                           | NULL |
| NULL                                                                                            | NULL |
+-------------------------------------------------------------------------------------------------+------+
11 rows in set (0.00 sec)

mysql> INSERT INTO cats (name, age)
    -> VALUES ('Helena', 6);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO cats (name, age)
    -> VALUES ('Helena', 12).
    -> ^C
mysql> INSERT INTO cats (name, age)
    -> VALUES ('Helena', 12),
    -> ('Helena', 12),
    -> ('Helena', 12),
    -> ('Helena', 12),
    -> ('Helena', 12);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM cats;
+-------------------------------------------------------------------------------------------------+------+
| name                                                                                            | age  |
+-------------------------------------------------------------------------------------------------+------+
| Blue                                                                                            |    1 |
| Draco                                                                                           |   11 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| Peanut                                                                                          |    2 |
| Butter                                                                                          |    4 |
| Jelly                                                                                           |    7 |
| This cat is named charlie which is also a human name. infact i know couple of chalies. fun fact |   10 |
| Bikku                                                                                           | NULL |
| NULL                                                                                            | NULL |
| Helena                                                                                          |    6 |
| Helena                                                                                          |   12 |
| Helena                                                                                          |   12 |
| Helena                                                                                          |   12 |
| Helena                                                                                          |   12 |
| Helena                                                                                          |   12 |
+-------------------------------------------------------------------------------------------------+------+
17 rows in set (0.00 sec)

mysql> CARATE TABLE unique_cats (
    -> cat_id INT NOT NULL,
    -> name VARCHAR(20),
    -> age INT,
    -> PRIMARY KEY (cat_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CARATE TABLE unique_cats (
cat_id INT NOT NULL,
name VARCHAR(20),
age INT,
PRIMA' at line 1
mysql> CREATE TABLE unique_cats (
    -> cat_id INT NOT NULL,
    -> name VARCHAR(2O),
    -> age INT,
    -> PRIMARY KEY (cat_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2O),
age INT,
PRIMARY KEY (cat_id))' at line 3
mysql> CREATE TABLE unique_cats (
    -> cat_id INT NOT NULL,
    -> name VARCHAR(2O),
    -> age INT,
    -> PRIMARY KEY (cat_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2O),
age INT,
PRIMARY KEY (cat_id))' at line 3
mysql> CREATE TABLE unique_cats(cat_id INT NOT NULL,
    -> name VARCHAR(2O),
    -> name VARCHAR(2O),
    -> age INT,
    -> PRIMARY KEY (cat_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2O),
name VARCHAR(2O),
age INT,
PRIMARY KEY (cat_id))' at line 2
mysql> CREATE TABLE unique_cats(cat_id INT NOT NULL
    -> ,name VARCHAR(2O)
    -> ,name VARCHAR(2O)^C
mysql> CREATE TABLE unique_cats(cat_id INT NOT NULL,
    -> name VARCHAR(2O),
    -> age INT,
    -> PRIMARY KEY (cat_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2O),
age INT,
PRIMARY KEY (cat_id))' at line 2
mysql> CREATE TABLE unique_cats(cat_id INT NOT NULL
    -> ,name VARCHAR(2O)
    -> ,
    -> ^C
mysql> CREATE TABLE unique_cats(cat_id INT NOT NULL
    -> ,name VARCHAR(2O)
    -> ,age INT
    -> ,PRIMARY KEY (cat_id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2O)
,age INT
,PRIMARY KEY (cat_id))' at line 2
mysql> CREATE TABLE unique_cats (cat_id INT NOT NULL
    -> ,name VARCHAR(100)
    -> ,age^C
mysql> CREATE TABLE unique_cats (cat_id INT NOT NULL
    -> ,name VARCHAR(20)
    -> ,age INT
    -> ,PRIMARY KEY (cat_id));
Query OK, 0 rows affected (0.06 sec)

mysql> DESC unique_cats
    -> ^C
mysql> DESC unique_cats;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| cat_id | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| age    | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> INSERT INTO unique_cats (id, name, age)
    -> VALUES (1, 'Fred', 23);
ERROR 1054 (42S22): Unknown column 'id' in 'field list'
mysql> INSERT INTO unique_cats (cat_id, name, age)
    -> VALUES (1, 'Fred', 23);
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM unique_cats;
+--------+------+------+
| cat_id | name | age  |
+--------+------+------+
|      1 | Fred |   23 |
+--------+------+------+
1 row in set (0.00 sec)

mysql> INSERT INTO unique_cats (cat_id, name, age)
    -> VALUES (1, 'Louise', 3);
ERROR 1062 (23000): Duplicate entry '1' for key 'unique_cats.PRIMARY'
mysql> ^C
mysql> INSERT INTO unique_cats (cat_id, name, age)
    -> VALUES (2, 'Louise', 3);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM unique_cats;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Fred   |   23 |
|      2 | Louise |    3 |
+--------+--------+------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE unique_cats2 (
    -> cat_id INT NOT NULL AUTO_INCREMENT,
    -> name VARCHAR(20),
    -> age INT,
    -> PRIMARY KEY (cat_id));
Query OK, 0 rows affected (0.05 sec)

mysql> SELECT * FROM unique_cats2;
Empty set (0.00 sec)

mysql> DESC unique_cats2;
+--------+-------------+------+-----+---------+----------------+
| Field  | Type        | Null | Key | Default | Extra          |
+--------+-------------+------+-----+---------+----------------+
| cat_id | int         | NO   | PRI | NULL    | auto_increment |
| name   | varchar(20) | YES  |     | NULL    |                |
| age    | int         | YES  |     | NULL    |                |
+--------+-------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO cats2 (name, age)
    -> VALUES ('Skippy', 4);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM unique_cats2;
Empty set (0.00 sec)

mysql> SELECT * FROM unique_cats2;
Empty set (0.00 sec)

mysql> INSERT INTO unique_cats2(name, age)
    -> VALUES ('Skyppy', 4);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM unique_cats2;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Skyppy |    4 |
+--------+--------+------+
1 row in set (0.00 sec)

mysql> INSERT FROM unique_cats2
    -> VALUES ^C
mysql> INSERT FROM unique_cats2 (name, age)
    -> VALUES ('Jiff', 3);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM unique_cats2 (name, age)
VALUES ('Jiff', 3)' at line 1
mysql> INSERT INTO unique_cats2 (name, age)
    -> VALUES ('Jiff', 3);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM unique_cats2;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Skyppy |    4 |
|      2 | Jiff   |    3 |
+--------+--------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO unique_cats2 (name, age)
    -> VALUES ('Jiff', 3);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO unique_cats2 (name, age)
    -> VALUES ('Jiff', 3);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM unique_cats2;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Skyppy |    4 |
|      2 | Jiff   |    3 |
|      3 | Jiff   |    3 |
|      4 | Jiff   |    3 |
+--------+--------+------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE Employees;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE Employees(
    -> id INT NOT NULL AUTO_INCREMENT,
    -> last_name VARCHAR(20) NOT NULL,
    -> first_name VARCHAR(20) NOT NULL,
    -> middle_name VARCHAR(20),
    -> age INT NOT NULL,
    -> current_status VARCHAR(100) NOT NULL,
    -> PRIMARY KEY (id));^C
mysql> CREATE TABLE Employees(
    -> id INT NOT NULL AUTO_INCREMENT,
    -> last_name VARCHAR(20) NOT NULL,
    -> first_name VARCHAR(20) NOT NULL,
    -> middle_name VARCHAR(20),
    -> age INT NOT NULL,
    -> urrent_status VARCHAR(100) NOT NULL, DEFAULT 'employed',
    -> PRIMARY KEY (id));^C
mysql> CREATE TABLE Employees(
    -> id INT NOT NULL AUTO_INCREMENT,
    -> last_name VARCHAR(20) NOT NULL,
    ->
    -> first_name VARCHAR(20) NOT NULL,
    -> middle_name VARCHAR(20),
    -> age INT NOT NULL,
    -> urrent_status VARCHAR(100) NOT NULL DEFAULT 'employed',
    ->   PRIMARY KEY (id));
Query OK, 0 rows affected (0.06 sec)

mysql> DESC Employees;
+---------------+--------------+------+-----+----------+----------------+
| Field         | Type         | Null | Key | Default  | Extra          |
+---------------+--------------+------+-----+----------+----------------+
| id            | int          | NO   | PRI | NULL     | auto_increment |
| last_name     | varchar(20)  | NO   |     | NULL     |                |
| first_name    | varchar(20)  | NO   |     | NULL     |                |
| middle_name   | varchar(20)  | YES  |     | NULL     |                |
| age           | int          | NO   |     | NULL     |                |
| urrent_status | varchar(100) | NO   |     | employed |                |
+---------------+--------------+------+-----+----------+----------------+
6 rows in set (0.00 sec)

mysql> INSERT INTO Employees (first_name, last_name, age)
    -> VALUES ('Surya', 'Gaonkar', 20);
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM Employees
    -> ^C
mysql> SELECT * FROM Employees;
+----+-----------+------------+-------------+-----+---------------+
| id | last_name | first_name | middle_name | age | urrent_status |
+----+-----------+------------+-------------+-----+---------------+
|  1 | Gaonkar   | Surya      | NULL        |  20 | employed      |
+----+-----------+------------+-------------+-----+---------------+
1 row in set (0.00 sec)