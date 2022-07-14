# creating database and tables 

no: 0-38


mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.01 sec)

mysql> CREATE DATABASE hello_world_db
    -> ^C
mysql> CREATE DATABASE hello_world_db;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| hello_world_db     |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> create database testing_db;
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| hello_world_db     |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| testing_db         |
+--------------------+
6 rows in set (0.00 sec)

mysql> DROP DATABASE hello_world_db
    -> ^C
mysql> DROP DATABASE hello_world_db;
Query OK, 0 rows affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| testing_db         |
+--------------------+
5 rows in set (0.00 sec)

mysql> DELETE DATABASE testing_db
    -> ^C
mysql> DELETE DATABASE testing_db;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE testing_db' at line 1
mysql> DROP DATABASE testing_db
    -> ^C
mysql> DROP DATABASE testing_db;
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql> ^C
mysql> CREATE DATABASE dog_walking_app
    -> ^C
mysql> CREATE DATABASE dog_walking_app;
Query OK, 1 row affected (0.02 sec)

mysql> SHOW DATABASES
    -> ^C
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| dog_walking_app    |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> USE dog_walking_app
Database changed
mysql> SELECT database()
    -> ^C
mysql> SELECT database();
+-----------------+
| database()      |
+-----------------+
| dog_walking_app |
+-----------------+
1 row in set (0.00 sec)

mysql> DROP DATABASE dog_walking_app;
Query OK, 0 rows affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> SELECT database(
    -> ^C
mysql> SELECT database();
+------------+
| database() |
+------------+
| NULL       |
+------------+
1 row in set (0.00 sec)

mysql> CREATE DATABASE ^C
mysql> SHOW DATABASES
    -> ^C
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.03 sec)

mysql> CREATE DATABASE cat_app
    -> ^C
mysql> CREATE DATABASE cat_app;
Query OK, 1 row affected (0.03 sec)

mysql> SHOW DATATBASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATATBASES' at line 1
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

mysql> USE cat_app
Database changed
mysql> CREATE TABLE cats (
    -> name VARCHAR(100),
    -> age INT
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_cat_app |
+-------------------+
| cats              |
+-------------------+
1 row in set (0.04 sec)

mysql> SHOW COLUMNS FROM cats
    -> ^C
mysql> SHOW COLUMNS FROM cats;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DESC cats;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| age   | int          | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> DROP TABLE cats;
Query OK, 0 rows affected (0.06 sec)

mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> DESC cats
    -> ^C
mysql> DESC cats;
ERROR 1146 (42S02): Table 'cat_app.cats' doesn't exist
mysql> CREATE TABLE pastries;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE pastries (
    -> name VARCHAR(100),
    -> quantity int
    -> ^C
mysql> CREATE DATABASE pastries (
    -> name VARCHAR(100),
    -> quantity INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(
name VARCHAR(100),
quantity INT
)' at line 1
mysql> CREATE TABLE pastries (
    -> name VARCHAR(100),
    -> quantity INT
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> DESC pastries
    -> ^C
mysql> DESC pastries;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| name     | varchar(100) | YES  |     | NULL    |       |
| quantity | int          | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DROP TABLE pastries
    -> ^C
mysql> DROP TABLE pastries;
Query OK, 0 rows affected (0.03 sec)

mysql> DESC pastries
    -> ^C
mysql> DESC pastries;
ERROR 1146 (42S02): Table 'cat_app.pastries' doesn't exist
mysql> SHOW TABLES
    -> ^C
mysql> SHOW TABLES;
Empty set (0.00 sec)