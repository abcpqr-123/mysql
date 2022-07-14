mysql>
mysql>
mysql>
mysql> CREATE database shirts_db
    -> ^X^C
mysql> CREATE database shirts_db;
Query OK, 1 row affected (0.03 sec)

mysql> SHOW DATABASE
    -> ^C
mysql> ^C
mysql> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| cat_app            |
| information_schema |
| mysql              |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
7 rows in set (0.02 sec)

mysql> USE shirts_db
Database changed
mysql> CREATE TABLE shrits (
    -> shirt_id INT NOT NULL PRIMARY KEY,
    -> article VARCHAR(20),
    -> color VARCHAR(20,
    -> ^C
mysql> CREATE TABLE shrits (
    -> shirt_id INT NOT NULL PRIMARY KEY,
    -> article VARCHAR(20),
    ->
    -> color VARCHAR(20),
    -> shirt_size VARCHAR(20),
    -> last_worn INT);
Query OK, 0 rows affected (0.06 sec)

mysql> DESC shirts_db
    -> ^X^C
mysql> ^C
mysql> DESC shirts_db;
ERROR 1146 (42S02): Table 'shirts_db.shirts_db' doesn't exist
mysql> DESC shirts;
ERROR 1146 (42S02): Table 'shirts_db.shirts' doesn't exist
mysql> SELECT * FROM shirts;\
ERROR 1146 (42S02): Table 'shirts_db.shirts' doesn't exist
mysql> ^C
mysql> SELECT * FROM shirts;
ERROR 1146 (42S02): Table 'shirts_db.shirts' doesn't exist
mysql> SELECT DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT DATABASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASES' at line 1
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| shirts_db  |
+------------+
1 row in set (0.00 sec)

mysql> DESC shirts;
ERROR 1146 (42S02): Table 'shirts_db.shirts' doesn't exist
mysql> CREATE TABLE shirts (
    -> shirt_id INT NOT NULL,
    -> article VARCHAR(20),
    -> color VARCHAR(20),
    ->  shirt_size VARCHAR(20),
    -> last_worn INT
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> DESC shirts;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| shirt_id   | int         | NO   |     | NULL    |       |
| article    | varchar(20) | YES  |     | NULL    |       |
| color      | varchar(20) | YES  |     | NULL    |       |
| shirt_size | varchar(20) | YES  |     | NULL    |       |
| last_worn  | int         | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> DROP Shirts;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Shirts' at line 1
mysql> DROP TABLE Shirts;
Query OK, 0 rows affected (0.06 sec)

mysql> CREATE TABLE shirts (
    -> shirt_id INT NOT NULL AUTO_INCREMENT,
    -> article VARCHAR(20),
    -> color VARCHAR(20),
    -> shirt_size VARCHAR(20),
    -> ^C
mysql> CREATE TABLE shirts (
    -> shirt_id INT NOT NULL AUTO_INCREMENT,
    ->  article VARCHAR(20),
    -> color VARCHAR(20),
    ->  shirt_size VARCHAR(20),
    -> last_worn INT,
    -> );^C
mysql> CREATE TABLE shirts (
    -> shirt_id INT NOT NULL AUTO_INCREMENT,
    -> article VARCHAR(20),
    -> color VARCHAR(20),
    -> shirt_size VARCHAR(20),
    -> last_worn INT,
    -> PRIMARY KEY (shirt_id)
    -> );
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    15
Current database: shirts_db

Query OK, 0 rows affected (0.14 sec)

mysql>  CREATE TABLE shirts (
    ->     -> shirt_id INT NOT NULL AUTO_INCREMENT,
    ->     -> article VARCHAR(20),
    ->     -> color VARCHAR(20),
    ->     -> shirt_size VARCHAR(20),
    ->     -> last_worn INT,
    ->     -> PRIMARY KEY (shirt_id)
    ->     -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> shirt_id INT NOT NULL AUTO_INCREMENT,
    -> article VARCHAR(20),
    -> colo' at line 2
mysql> CREATE TABLE shirts (
    ->     ->     -> shirt_id INT NOT NULL AUTO_INCREMENT,
    ->     ->     -> article VARCHAR(20),
    ->     ->     -> color VARCHAR(20),
    ->     ->     -> shirt_size VARCHAR(20),
    ->     ->     -> last_worn INT,
    ->     ->     -> PRIMARY KEY (shirt_id)
    ->     ->     -> );^C
mysql> CREATE TABLE shirts (
    ->     -> shirt_id INT NOT NULL AUTO_INCREMENT,
    ->     -> article VARCHAR(20),
    ->     -> color VARCHAR(20),
    ->     -> shirt_size VARCHAR(20),
    ->     -> last_worn INT,
    ->     -> PRIMARY KEY (shirt_id)
    ->     -> );^C
mysql> CREATE TABLE shirts (
    -> shirt_id INT NOT NULL AUTO_INCREMENT,
    ->  article VARCHAR(20),
    -> color VARCHAR(20),
    -> shirt_size VARCHAR(20),
    -> last_worn INT,
    -> PRIMARY KEY (shirt_id)
    -> );
ERROR 1050 (42S01): Table 'shirts' already exists
mysql> SELECT * FROM shirts
    -> ^C
mysql> SELECT * FROM shirts;\
Empty set (0.00 sec)

mysql> ^C
mysql> SELECT * FROM shirts;
Empty set (0.00 sec)

mysql> DESC shirts;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| shirt_id   | int         | NO   | PRI | NULL    | auto_increment |
| article    | varchar(20) | YES  |     | NULL    |                |
| color      | varchar(20) | YES  |     | NULL    |                |
| shirt_size | varchar(20) | YES  |     | NULL    |                |
| last_worn  | int         | YES  |     | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)

mysql> INSERT INTO shirts;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> ^C
mysql> INSERT INTO shirts
    -> ^C
mysql> INSERT INTO shirts (Type, ^C
mysql> INSERT INTO shirts (article, color, shirt_size, last_worn)
    -> VALUES ('t-shirt', 'white', 'S', 10),
    -> ('t-shirt', 'green', 'S', 200),
    -> ('polo shirt', 'black', 'M', 10),
    -> ('tank top', 'blue', 'S', 50),
    -> ('t-Shirt',  'pink', 'S', 0),
    -> ('polo shirt', 'red', 'M', 5),
    -> ('tank top', 'white', 'S', 200),
    -> ('tank top', 'blue', 'M', 15);
Query OK, 8 rows affected (0.02 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM shirts
    -> ^C
mysql> SELECT * FROM shirts;
+----------+------------+-------+------------+-----------+
| shirt_id | article    | color | shirt_size | last_worn |
+----------+------------+-------+------------+-----------+
|        1 | t-shirt    | white | S          |        10 |
|        2 | t-shirt    | green | S          |       200 |
|        3 | polo shirt | black | M          |        10 |
|        4 | tank top   | blue  | S          |        50 |
|        5 | t-Shirt    | pink  | S          |         0 |
|        6 | polo shirt | red   | M          |         5 |
|        7 | tank top   | white | S          |       200 |
|        8 | tank top   | blue  | M          |        15 |
+----------+------------+-------+------------+-----------+
8 rows in set (0.00 sec)

mysql> INSERT INTO shirt (article, color, shirt_size, last_worn)
    -> VALUES ('polo shirt', 'Purple', 'M', 50);
ERROR 1146 (42S02): Table 'shirts_db.shirt' doesn't exist
mysql> INSERT INTO shirts (article, color, shirt_size, last_worn)
    -> VALUES (polo shirt', 'purple', 'M', 50);
    '>
    '> ^C
mysql> INSERT INTO shirts (article, color, shirt_size, last_worn)
    -> VALUES (polo shirt', 'purple', 'M', 50);
    '> ^C
mysql> INSERT INTO shirts (article, color, shirt_size, last_worn)
    ->  VALUES (polo shirt', 'purple', 'M', 50);
    '> ^C
mysql> INSERT INTO shirts (article, color, shirt_size, last_worn)
    ->  VALUES ('polo shirt', 'purple', 'M', 50);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | S          |        10 |
|        2 | t-shirt    | green  | S          |       200 |
|        3 | polo shirt | black  | M          |        10 |
|        4 | tank top   | blue   | S          |        50 |
|        5 | t-Shirt    | pink   | S          |         0 |
|        6 | polo shirt | red    | M          |         5 |
|        7 | tank top   | white  | S          |       200 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT article, color FROM shirts;
+------------+--------+
| article    | color  |
+------------+--------+
| t-shirt    | white  |
| t-shirt    | green  |
| polo shirt | black  |
| tank top   | blue   |
| t-Shirt    | pink   |
| polo shirt | red    |
| tank top   | white  |
| tank top   | blue   |
| polo shirt | purple |
+------------+--------+
9 rows in set (0.00 sec)

mysql> SELECT shirt_size FROM shirts WHERE shirt_size ='M'
    -> ^C
mysql> SELECT shirt_size FROM shirts WHERE shirt_size ='M';
+------------+
| shirt_size |
+------------+
| M          |
| M          |
| M          |
| M          |
+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM shirts WHERE shirt_size ='M';
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | M          |        10 |
|        6 | polo shirt | red    | M          |         5 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT article, color, shirt_size, last_worn FROM shirts;
+------------+--------+------------+-----------+
| article    | color  | shirt_size | last_worn |
+------------+--------+------------+-----------+
| t-shirt    | white  | S          |        10 |
| t-shirt    | green  | S          |       200 |
| polo shirt | black  | M          |        10 |
| tank top   | blue   | S          |        50 |
| t-Shirt    | pink   | S          |         0 |
| polo shirt | red    | M          |         5 |
| tank top   | white  | S          |       200 |
| tank top   | blue   | M          |        15 |
| polo shirt | purple | M          |        50 |
+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_id = 'M';
Empty set, 1 warning (0.02 sec)

mysql> SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';
+------------+--------+------------+-----------+
| article    | color  | shirt_size | last_worn |
+------------+--------+------------+-----------+
| polo shirt | black  | M          |        10 |
| polo shirt | red    | M          |         5 |
| tank top   | blue   | M          |        15 |
| polo shirt | purple | M          |        50 |
+------------+--------+------------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM shirts SET shirt_size = 'L'
    -> ^C
mysql> SELECT * FROM shirts WHERE article = 'polo shirt';
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | M          |        10 |
|        6 | polo shirt | red    | M          |         5 |
|        9 | polo shirt | purple | M          |        50 |
+----------+------------+--------+------------+-----------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM shirts shirt_size = 'L',
    -> WHERE article = 'polo shirt';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '= 'L',
WHERE article = 'polo shirt'' at line 1
mysql> SELECT * FROM shirts shirt_size = 'L'
    -> WHERE article = 'polo shirt';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '= 'L'
WHERE article = 'polo shirt'' at line 1
mysql> SELECT * FROM shirts SET shirt_size = 'L'
    -> WHERE article = 'polo shirt';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SET shirt_size = 'L'
WHERE article = 'polo shirt'' at line 1
mysql> SELECT * FROM shirts SET shirt_size = 'L',
    ->  WHERE article = 'polo shirt';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SET shirt_size = 'L',
 WHERE article = 'polo shirt'' at line 1
mysql> UPDATE shirts SET shirt_size = 'L'
    ->  WHERE article = 'polo shirt';
Query OK, 3 rows affected (0.02 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | S          |        10 |
|        2 | t-shirt    | green  | S          |       200 |
|        3 | polo shirt | black  | L          |        10 |
|        4 | tank top   | blue   | S          |        50 |
|        5 | t-Shirt    | pink   | S          |         0 |
|        6 | polo shirt | red    | L          |         5 |
|        7 | tank top   | white  | S          |       200 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | purple | L          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM shirts WHERE last_worn = 15;
+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        8 | tank top | blue  | M          |        15 |
+----------+----------+-------+------------+-----------+
1 row in set (0.00 sec)

mysql> UPDATE shirts SET last_worn = 15
    -> WHERE shirt_id = 8;
Query OK, 0 rows affected (0.02 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql> UPDATE shirts SET last_worn = 0
    -> WHERE shirt_id = 8;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | S          |        10 |
|        2 | t-shirt    | green  | S          |       200 |
|        3 | polo shirt | black  | L          |        10 |
|        4 | tank top   | blue   | S          |        50 |
|        5 | t-Shirt    | pink   | S          |         0 |
|        6 | polo shirt | red    | L          |         5 |
|        7 | tank top   | white  | S          |       200 |
|        8 | tank top   | blue   | M          |         0 |
|        9 | polo shirt | purple | L          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM shirts WHERE color = 'white';
+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        1 | t-shirt  | white | S          |        10 |
|        7 | tank top | white | S          |       200 |
+----------+----------+-------+------------+-----------+
2 rows in set (0.00 sec)

mysql> UPDATE shirts SET shirt_size = 'XS', color = 'off white'
    -> WHERE color = 'white';
Query OK, 2 rows affected (0.02 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        2 | t-shirt    | green     | S          |       200 |
|        3 | polo shirt | black     | L          |        10 |
|        4 | tank top   | blue      | S          |        50 |
|        5 | t-Shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        7 | tank top   | off white | XS         |       200 |
|        8 | tank top   | blue      | M          |         0 |
|        9 | polo shirt | purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
9 rows in set (0.00 sec)

mysql> SELECT * FROM shirts WHERE last_worn = 200;
+----------+----------+-----------+------------+-----------+
| shirt_id | article  | color     | shirt_size | last_worn |
+----------+----------+-----------+------------+-----------+
|        2 | t-shirt  | green     | S          |       200 |
|        7 | tank top | off white | XS         |       200 |
+----------+----------+-----------+------------+-----------+
2 rows in set (0.00 sec)

mysql> DELETE shirts WHERE last_worn = 200;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE last_worn = 200' at line 1
mysql> DROP shirts WHERE last_worn = 200;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'shirts WHERE last_worn = 200' at line 1
mysql>
mysql> DELETE * FROM shirts WHERE last_worn = 200;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* FROM shirts WHERE last_worn = 200' at line 1
mysql> DROM * FROM shirts WHERE last_worn = 200;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DROM * FROM shirts WHERE last_worn = 200' at line 1
mysql> DROP * FROM shirts WHERE last_worn = 200;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* FROM shirts WHERE last_worn = 200' at line 1
mysql> DELETE FROM shirts WHERE last_worn = 200;
Query OK, 2 rows affected (0.02 sec)

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        3 | polo shirt | black     | L          |        10 |
|        4 | tank top   | blue      | S          |        50 |
|        5 | t-Shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        8 | tank top   | blue      | M          |         0 |
|        9 | polo shirt | purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM shirts WHERE article = 'tank top';
+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        4 | tank top | blue  | S          |        50 |
|        8 | tank top | blue  | M          |         0 |
+----------+----------+-------+------------+-----------+
2 rows in set (0.00 sec)

mysql> DELETE FROM shirts WHERE article = 'tank top';
Query OK, 2 rows affected (0.03 sec)

mysql> SELECT * FROM shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off white | XS         |        10 |
|        3 | polo shirt | black     | L          |        10 |
|        5 | t-Shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        9 | polo shirt | purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)

mysql> DELETE shirts;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> DELETE * FROM Shirts;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* FROM Shirts' at line 1
mysql> DELETE FROM shirts;
Query OK, 5 rows affected (0.03 sec)

mysql> DROP TABLE shirts;
Query OK, 0 rows affected (0.05 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| cat_app            |
| information_schema |
| mysql              |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
7 rows in set (0.00 sec)

mysql>
mysql>
mysql>