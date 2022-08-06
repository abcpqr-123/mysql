
mysql>
mysql>
mysql> SELECT TABLE()
    -> ^C
mysql> SELECT TABLE();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE()' at line 1
mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW table();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '()' at line 1
mysql> SELECT DATABASE()
    -> ^C
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| book_shop  |
+------------+
1 row in set (0.00 sec)

mysql> CREATE DATABASE customers_and_orders;
Query OK, 1 row affected (0.03 sec)

mysql> SHOW DATABASES;
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
10 rows in set (0.02 sec)

mysql> USE customers_and_order;
ERROR 1049 (42000): Unknown database 'customers_and_order'
mysql> USE customers_and_orders;
Database changed
mysql>
mysql>
mysql> CREATE TABLE customers (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     first_name VARCHAR(100),
    ->     last_name VARCHAR(100),
    ->     email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE orders(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE,
    ->     amount DECIMAL(8,2)
    ->     customer_id INT
    -> )
    -> ^C
mysql>
mysql>
mysql> CREATE TABLE orders(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE,
    ->     amount DECIMAL(8,2)
    ->     customer_id INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'customer_id INT
)' at line 5
mysql>
mysql> CREATE TABLE orders(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE,
    ->     amount DECIMAL(8,2),
    ->     customer_id INT
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> DESC customers_and_order;
--ERROR 1146 (42S02): Table 'customers_and_orders.customers_and_order' doesn't exist
mysql>
mysql>
mysql> INSERT INTO customers (first_name, last_name, email)
     VALUES ('Boy', 'George', 'george@gmail.com'),
            ('George', 'Michael', 'gm@gmail.com'),
            ('David', 'Bowie', 'david@gmail.com'),
            ('Blue', 'Steele', 'blue@gmail.com'),
            ('Bette', 'Davis', 'bette@aol.com');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM customers;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@aol.com    |
+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO orders (order_date, amount, customer_id)
    -> VALUES ('2016/02/10', 99.99, 1),
    ->        ('2017/11/11', 35.50, 1),
    ->        ('2014/12/12', 800.67, 2),
    ->        ('2015/01/03', 12.50, 2),
    ->        ('1999/04/11', 450.25, 5);
Query OK, 5 rows affected, 5 warnings (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 5

mysql> SELECT * FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO orders(first_name, last_name, email)
    -> VALUES ('Boy', 'George', george@gmail.com),^C
mysql>        ('1999/04/11', 450.25, 5);^C
mysql>
mysql>
mysql> INSERT INTO orders(order_date, amount, customer_id)
    -> VALUES ('2016/02/10', 33.67, 98);
Query OK, 1 row affected, 1 warning (0.02 sec)

mysql> SELECT *  FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
|  6 | 2016-02-10 |  33.67 |          98 |
+----+------------+--------+-------------+
6 rows in set (0.00 sec)

mysql> DROP TABLE customers, orders;
Query OK, 0 rows affected (0.09 sec)

mysql> SHOW TABLES;
Empty set (0.02 sec)

mysql> CREATE TABLE orders(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE,
    ->     amount DECIMAL(8,2),
    ->     customer_id INT,
    ->     FORIGN KEY(customer_id) REFERENCES customers(id)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY(customer_id) REFERENCES customers(id)
)' at line 6
mysql> CREATE TABLE orders(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE,
    ->     amount DECIMAL(8,2),
    ->     customer_id INT,
    ->     FOREIGN KEY(customer_id) REFERENCES customers(id)
    -> );
ERROR 1824 (HY000): Failed to open the referenced table 'customers'
mysql>
mysql>
mysql>
mysql> CREATE TABLE customers (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     first_name VARCHAR(100),
    ->     last_name VARCHAR(100),
    ->     email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE orders(
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     order_date DATE,
    ->     amount DECIMAL(8,2),
    ->     customer_id INT,
    ->     FOREIGN KEY(customer_id) REFERENCES customers(id)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql>
mysql>
mysql> INSERT INTO customers (first_name, last_name, email)
    -> VALUES ('Boy', 'George', 'george@gmail.com'),
    ->        ('George', 'Michael', 'gm@gmail.com'),
    ->        ('David', 'Bowie', 'david@gmail.com'),
    ->        ('Blue', 'Steele', 'blue@gmail.com'),
    ->        ('Bette', 'Davis', 'bette@aol.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM CUSTOMERS;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@aol.com    |
+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO orders (order_date, amount, customer_id)
    -> VALUES ('2016/02/10', 99.99, 1),
    ->        ('2017/11/11', 35.50, 1),
    ->        ('2014/12/12', 800.67, 2),
    ->        ('2015/01/03', 12.50, 2),
    ->        ('1999/04/11', 450.25, 5);
Query OK, 5 rows affected, 5 warnings (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 5

mysql> SELECT * FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO orders (order_date, amount, customer_id)
    -> VALUES('2016/06/06', 33.67, 98);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`customers_and_orders`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`))
mysql>
mysql>
mysql> SELECT * FROM customers WHERE last_name = 'George';
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
+----+------------+-----------+------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM order WHERE customer_id = 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order WHERE customer_id = 1' at line 1
mysql>
mysql> SELECT * FROM order WHERE customer_id = 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order WHERE customer_id = 1' at line 1
mysql> SELECT * FROM orders WHERE customer_id = 1;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
+----+------------+--------+-------------+
2 rows in set (0.02 sec)

mysql> SELECT id FROM customers
    -> ^C
mysql>
mysql> SELECT * FROM orders WHERE customer_id = (
    ->    SELECT id FROM customers
    ->    WHERE last_name = 'George'
    -> );
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
+----+------------+--------+-------------+
2 rows in set (0.02 sec)

mysql> SELECT * FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM customers, orders;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  5 | Bette      | Davis     | bette@aol.com    |  1 | 2016-02-10 |  99.99 |           1 |
|  4 | Blue       | Steele    | blue@gmail.com   |  1 | 2016-02-10 |  99.99 |           1 |
|  3 | David      | Bowie     | david@gmail.com  |  1 | 2016-02-10 |  99.99 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  5 | Bette      | Davis     | bette@aol.com    |  2 | 2017-11-11 |  35.50 |           1 |
|  4 | Blue       | Steele    | blue@gmail.com   |  2 | 2017-11-11 |  35.50 |           1 |
|  3 | David      | Bowie     | david@gmail.com  |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  2 | 2017-11-11 |  35.50 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  5 | Bette      | Davis     | bette@aol.com    |  3 | 2014-12-12 | 800.67 |           2 |
|  4 | Blue       | Steele    | blue@gmail.com   |  3 | 2014-12-12 | 800.67 |           2 |
|  3 | David      | Bowie     | david@gmail.com  |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  1 | Boy        | George    | george@gmail.com |  3 | 2014-12-12 | 800.67 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  4 | 2015-01-03 |  12.50 |           2 |
|  4 | Blue       | Steele    | blue@gmail.com   |  4 | 2015-01-03 |  12.50 |           2 |
|  3 | David      | Bowie     | david@gmail.com  |  4 | 2015-01-03 |  12.50 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  1 | Boy        | George    | george@gmail.com |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
|  4 | Blue       | Steele    | blue@gmail.com   |  5 | 1999-04-11 | 450.25 |           5 |
|  3 | David      | Bowie     | david@gmail.com  |  5 | 1999-04-11 | 450.25 |           5 |
|  2 | George     | Michael   | gm@gmail.com     |  5 | 1999-04-11 | 450.25 |           5 |
|  1 | Boy        | George    | george@gmail.com |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
25 rows in set (0.00 sec)

mysql> SELECT * FROM customers, orders WHERE customers.id = orders.customers_id;
ERROR 1054 (42S22): Unknown column 'orders.customers_id' in 'where clause'
mysql> SELECT * FROM customers, orders WHERE customers.id = orders.coustomers_id;
ERROR 1054 (42S22): Unknown column 'orders.coustomers_id' in 'where clause'
mysql> SELECT * FROM customers, orders WHERE customers.id = orders.customers_id;
ERROR 1054 (42S22): Unknown column 'orders.customers_id' in 'where clause'
mysql> SELECT * FROM customers, orders WHERE customers.id = orders.customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELCT * FROM customers, orders WHERE customers.id =  order.customers.id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCT * FROM customers, orders WHERE customers.id =  order.customers.id' at line 1
mysql> SELCT * FROM customers, orders WHERE customers.id =  order.customer.id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCT * FROM customers, orders WHERE customers.id =  order.customer.id' at line 1
mysql>
mysql>
mysql> SELECT * FROM customers, orders WHERE customers.id =  order.customer.id;
ERROR 1054 (42S22): Unknown column 'order.customer.id' in 'where clause'
mysql>
mysql>
mysql>  SELECT * FROM customers, orders WHERE customers.id =  orders.customer.id;
ERROR 1054 (42S22): Unknown column 'orders.customer.id' in 'where clause'
mysql>
mysql>
mysql> SELECT * FROM customers, orders WHERE customers.id =  orders.customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount FROM customers, orders
    ->  WHERE customers.id =  orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount
    -> FROM customers
    -> JOIN orders
    ->   ON customers.id = customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM customers
    -> JOIN orders
    -> ON customers.id = customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM orders, customers;
+----+------------+--------+-------------+----+------------+-----------+------------------+
| id | order_date | amount | customer_id | id | first_name | last_name | email            |
+----+------------+--------+-------------+----+------------+-----------+------------------+
|  5 | 1999-04-11 | 450.25 |           5 |  1 | Boy        | George    | george@gmail.com |
|  4 | 2015-01-03 |  12.50 |           2 |  1 | Boy        | George    | george@gmail.com |
|  3 | 2014-12-12 | 800.67 |           2 |  1 | Boy        | George    | george@gmail.com |
|  2 | 2017-11-11 |  35.50 |           1 |  1 | Boy        | George    | george@gmail.com |
|  1 | 2016-02-10 |  99.99 |           1 |  1 | Boy        | George    | george@gmail.com |
|  5 | 1999-04-11 | 450.25 |           5 |  2 | George     | Michael   | gm@gmail.com     |
|  4 | 2015-01-03 |  12.50 |           2 |  2 | George     | Michael   | gm@gmail.com     |
|  3 | 2014-12-12 | 800.67 |           2 |  2 | George     | Michael   | gm@gmail.com     |
|  2 | 2017-11-11 |  35.50 |           1 |  2 | George     | Michael   | gm@gmail.com     |
|  1 | 2016-02-10 |  99.99 |           1 |  2 | George     | Michael   | gm@gmail.com     |
|  5 | 1999-04-11 | 450.25 |           5 |  3 | David      | Bowie     | david@gmail.com  |
|  4 | 2015-01-03 |  12.50 |           2 |  3 | David      | Bowie     | david@gmail.com  |
|  3 | 2014-12-12 | 800.67 |           2 |  3 | David      | Bowie     | david@gmail.com  |
|  2 | 2017-11-11 |  35.50 |           1 |  3 | David      | Bowie     | david@gmail.com  |
|  1 | 2016-02-10 |  99.99 |           1 |  3 | David      | Bowie     | david@gmail.com  |
|  5 | 1999-04-11 | 450.25 |           5 |  4 | Blue       | Steele    | blue@gmail.com   |
|  4 | 2015-01-03 |  12.50 |           2 |  4 | Blue       | Steele    | blue@gmail.com   |
|  3 | 2014-12-12 | 800.67 |           2 |  4 | Blue       | Steele    | blue@gmail.com   |
|  2 | 2017-11-11 |  35.50 |           1 |  4 | Blue       | Steele    | blue@gmail.com   |
|  1 | 2016-02-10 |  99.99 |           1 |  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | 1999-04-11 | 450.25 |           5 |  5 | Bette      | Davis     | bette@aol.com    |
|  4 | 2015-01-03 |  12.50 |           2 |  5 | Bette      | Davis     | bette@aol.com    |
|  3 | 2014-12-12 | 800.67 |           2 |  5 | Bette      | Davis     | bette@aol.com    |
|  2 | 2017-11-11 |  35.50 |           1 |  5 | Bette      | Davis     | bette@aol.com    |
|  1 | 2016-02-10 |  99.99 |           1 |  5 | Bette      | Davis     | bette@aol.com    |
+----+------------+--------+-------------+----+------------+-----------+------------------+
25 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount
    -> FROM orders
    -> JOIN  customers
    ->   ON customers.id = customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM orders
    -> JOIN  customers
    ->   ON customers.id = customer_id;
+----+------------+--------+-------------+----+------------+-----------+------------------+
| id | order_date | amount | customer_id | id | first_name | last_name | email            |
+----+------------+--------+-------------+----+------------+-----------+------------------+
|  1 | 2016-02-10 |  99.99 |           1 |  1 | Boy        | George    | george@gmail.com |
|  2 | 2017-11-11 |  35.50 |           1 |  1 | Boy        | George    | george@gmail.com |
|  3 | 2014-12-12 | 800.67 |           2 |  2 | George     | Michael   | gm@gmail.com     |
|  4 | 2015-01-03 |  12.50 |           2 |  2 | George     | Michael   | gm@gmail.com     |
|  5 | 1999-04-11 | 450.25 |           5 |  5 | Bette      | Davis     | bette@aol.com    |
+----+------------+--------+-------------+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM customers
    -> JOIN orders
    ->   ON customers.id = customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT first_name,
    ->         last_name,
    ->         order_date,
    ->         SUM(amount) AS total_spent
    -> FROM orders
    -> JOIN  customers
    ->   ON customers.id = customer_id
    -> GROUP BY  orders.customer_id
    -> ORDER BY total_spent;
+------------+-----------+------------+-------------+
| first_name | last_name | order_date | total_spent |
+------------+-----------+------------+-------------+
| Boy        | George    | 2016-02-10 |      135.49 |
| Bette      | Davis     | 1999-04-11 |      450.25 |
| George     | Michael   | 2014-12-12 |      813.17 |
+------------+-----------+------------+-------------+
3 rows in set (0.02 sec)

mysql> SELECT first_name,
    ->         last_name,
    ->         order_date,
    ->         SUM(amount) AS total_spent
    -> FROM orders
    -> JOIN  customers
    ->   ON customers.id = customer_id
    -> GROUP BY  orders.customer_id
    -> ORDER BY total_spent DESC;
+------------+-----------+------------+-------------+
| first_name | last_name | order_date | total_spent |
+------------+-----------+------------+-------------+
| George     | Michael   | 2014-12-12 |      813.17 |
| Bette      | Davis     | 1999-04-11 |      450.25 |
| Boy        | George    | 2016-02-10 |      135.49 |
+------------+-----------+------------+-------------+
3 rows in set (0.02 sec)

mysql>
mysql> SELECT * FROM customers
    -> INNER JOIN orders
    ->    ON customer_id = orders.customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  5 | 1999-04-11 | 450.25 |           5 |
|  1 | Boy        | George    | george@gmail.com |  4 | 2015-01-03 |  12.50 |           2 |
|  1 | Boy        | George    | george@gmail.com |  3 | 2014-12-12 | 800.67 |           2 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  5 | 1999-04-11 | 450.25 |           5 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  1 | 2016-02-10 |  99.99 |           1 |
|  3 | David      | Bowie     | david@gmail.com  |  5 | 1999-04-11 | 450.25 |           5 |
|  3 | David      | Bowie     | david@gmail.com  |  4 | 2015-01-03 |  12.50 |           2 |
|  3 | David      | Bowie     | david@gmail.com  |  3 | 2014-12-12 | 800.67 |           2 |
|  3 | David      | Bowie     | david@gmail.com  |  2 | 2017-11-11 |  35.50 |           1 |
|  3 | David      | Bowie     | david@gmail.com  |  1 | 2016-02-10 |  99.99 |           1 |
|  4 | Blue       | Steele    | blue@gmail.com   |  5 | 1999-04-11 | 450.25 |           5 |
|  4 | Blue       | Steele    | blue@gmail.com   |  4 | 2015-01-03 |  12.50 |           2 |
|  4 | Blue       | Steele    | blue@gmail.com   |  3 | 2014-12-12 | 800.67 |           2 |
|  4 | Blue       | Steele    | blue@gmail.com   |  2 | 2017-11-11 |  35.50 |           1 |
|  4 | Blue       | Steele    | blue@gmail.com   |  1 | 2016-02-10 |  99.99 |           1 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
|  5 | Bette      | Davis     | bette@aol.com    |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  3 | 2014-12-12 | 800.67 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  2 | 2017-11-11 |  35.50 |           1 |
|  5 | Bette      | Davis     | bette@aol.com    |  1 | 2016-02-10 |  99.99 |           1 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
25 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM customers
    -> INNER JOIN orders
    ->    ON customer_id = orders.customer_id;^C
mysql>
mysql>
mysql> SELECT * FROM customers
    -> LEFT JOIN orders
    ->    ON customer_id = orders.customer_id;
+----+------------+-----------+------------------+------+------------+--------+-------------+
| id | first_name | last_name | email            | id   | order_date | amount | customer_id |
+----+------------+-----------+------------------+------+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |    5 | 1999-04-11 | 450.25 |           5 |
|  1 | Boy        | George    | george@gmail.com |    4 | 2015-01-03 |  12.50 |           2 |
|  1 | Boy        | George    | george@gmail.com |    3 | 2014-12-12 | 800.67 |           2 |
|  1 | Boy        | George    | george@gmail.com |    2 | 2017-11-11 |  35.50 |           1 |
|  1 | Boy        | George    | george@gmail.com |    1 | 2016-02-10 |  99.99 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |    5 | 1999-04-11 | 450.25 |           5 |
|  2 | George     | Michael   | gm@gmail.com     |    4 | 2015-01-03 |  12.50 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |    3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |    2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |    1 | 2016-02-10 |  99.99 |           1 |
|  3 | David      | Bowie     | david@gmail.com  |    5 | 1999-04-11 | 450.25 |           5 |
|  3 | David      | Bowie     | david@gmail.com  |    4 | 2015-01-03 |  12.50 |           2 |
|  3 | David      | Bowie     | david@gmail.com  |    3 | 2014-12-12 | 800.67 |           2 |
|  3 | David      | Bowie     | david@gmail.com  |    2 | 2017-11-11 |  35.50 |           1 |
|  3 | David      | Bowie     | david@gmail.com  |    1 | 2016-02-10 |  99.99 |           1 |
|  4 | Blue       | Steele    | blue@gmail.com   |    5 | 1999-04-11 | 450.25 |           5 |
|  4 | Blue       | Steele    | blue@gmail.com   |    4 | 2015-01-03 |  12.50 |           2 |
|  4 | Blue       | Steele    | blue@gmail.com   |    3 | 2014-12-12 | 800.67 |           2 |
|  4 | Blue       | Steele    | blue@gmail.com   |    2 | 2017-11-11 |  35.50 |           1 |
|  4 | Blue       | Steele    | blue@gmail.com   |    1 | 2016-02-10 |  99.99 |           1 |
|  5 | Bette      | Davis     | bette@aol.com    |    5 | 1999-04-11 | 450.25 |           5 |
|  5 | Bette      | Davis     | bette@aol.com    |    4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |    3 | 2014-12-12 | 800.67 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |    2 | 2017-11-11 |  35.50 |           1 |
|  5 | Bette      | Davis     | bette@aol.com    |    1 | 2016-02-10 |  99.99 |           1 |
+----+------------+-----------+------------------+------+------------+--------+-------------+
25 rows in set (0.02 sec)

mysql> SELECT first_name, last_name, order_date, amount FROM customers
    -> LEFT JOIN orders
    ->    ON customer_id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 1999-04-11 | 450.25 |
| Boy        | George    | 2015-01-03 |  12.50 |
| Boy        | George    | 2014-12-12 | 800.67 |
| Boy        | George    | 2017-11-11 |  35.50 |
| Boy        | George    | 2016-02-10 |  99.99 |
| George     | Michael   | 1999-04-11 | 450.25 |
| George     | Michael   | 2015-01-03 |  12.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2017-11-11 |  35.50 |
| George     | Michael   | 2016-02-10 |  99.99 |
| David      | Bowie     | 1999-04-11 | 450.25 |
| David      | Bowie     | 2015-01-03 |  12.50 |
| David      | Bowie     | 2014-12-12 | 800.67 |
| David      | Bowie     | 2017-11-11 |  35.50 |
| David      | Bowie     | 2016-02-10 |  99.99 |
| Blue       | Steele    | 1999-04-11 | 450.25 |
| Blue       | Steele    | 2015-01-03 |  12.50 |
| Blue       | Steele    | 2014-12-12 | 800.67 |
| Blue       | Steele    | 2017-11-11 |  35.50 |
| Blue       | Steele    | 2016-02-10 |  99.99 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
| Bette      | Davis     | 2015-01-03 |  12.50 |
| Bette      | Davis     | 2014-12-12 | 800.67 |
| Bette      | Davis     | 2017-11-11 |  35.50 |
| Bette      | Davis     | 2016-02-10 |  99.99 |
+------------+-----------+------------+--------+
25 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount FROM customers
    -> LEFT JOIN orders
    ->    ON customer.id = orders.customer_id;
ERROR 1054 (42S22): Unknown column 'customer.id' in 'on clause'
mysql>
mysql>
mysql> SELECT first_name, last_name, order_date, amount FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| David      | Bowie     | NULL       |   NULL |
| Blue       | Steele    | NULL       |   NULL |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id;
+----+------------+-----------+------------------+------+------------+--------+-------------+
| id | first_name | last_name | email            | id   | order_date | amount | customer_id |
+----+------------+-----------+------------------+------+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |    1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |    2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |    3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |    4 | 2015-01-03 |  12.50 |           2 |
|  3 | David      | Bowie     | david@gmail.com  | NULL | NULL       |   NULL |        NULL |
|  4 | Blue       | Steele    | blue@gmail.com   | NULL | NULL       |   NULL |        NULL |
|  5 | Bette      | Davis     | bette@aol.com    |    5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+------+------------+--------+-------------+
7 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| David      | Bowie     | NULL       |   NULL |
| Blue       | Steele    | NULL       |   NULL |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
7 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id
    -> GROUP BY customers.id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| George     | Michael   | 2014-12-12 | 800.67 |
| David      | Bowie     | NULL       |   NULL |
| Blue       | Steele    | NULL       |   NULL |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
5 rows in set (0.02 sec)

mysql>
mysql> SELECT first_name, last_name, order_date, SUM(amount) FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id
    -> GROUP BY customers.id;
+------------+-----------+------------+-------------+
| first_name | last_name | order_date | SUM(amount) |
+------------+-----------+------------+-------------+
| Boy        | George    | 2016-02-10 |      135.49 |
| George     | Michael   | 2014-12-12 |      813.17 |
| David      | Bowie     | NULL       |        NULL |
| Blue       | Steele    | NULL       |        NULL |
| Bette      | Davis     | 1999-04-11 |      450.25 |
+------------+-----------+------------+-------------+
5 rows in set (0.02 sec)

mysql>  SELECT first_name,
    ->         last_name,
    ->         order_date,
    ->         IFNULL(SUM(amount), 0) AS total_spent
    ->         FROM customers
    ->      LEFT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->      GROUP BY customers.id;
+------------+-----------+------------+-------------+
| first_name | last_name | order_date | total_spent |
+------------+-----------+------------+-------------+
| Boy        | George    | 2016-02-10 |      135.49 |
| George     | Michael   | 2014-12-12 |      813.17 |
| David      | Bowie     | NULL       |        0.00 |
| Blue       | Steele    | NULL       |        0.00 |
| Bette      | Davis     | 1999-04-11 |      450.25 |
+------------+-----------+------------+-------------+
5 rows in set (0.00 sec)

mysql>  SELECT first_name,
    ->         last_name,
    ->         order_date,
    ->         IFNULL(SUM(amount), 0) AS total_spent
    ->         FROM customers
    ->      LEFT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->      GROUP BY customers.id
    ->      ORDER BY total_spent;
+------------+-----------+------------+-------------+
| first_name | last_name | order_date | total_spent |
+------------+-----------+------------+-------------+
| David      | Bowie     | NULL       |        0.00 |
| Blue       | Steele    | NULL       |        0.00 |
| Boy        | George    | 2016-02-10 |      135.49 |
| Bette      | Davis     | 1999-04-11 |      450.25 |
| George     | Michael   | 2014-12-12 |      813.17 |
+------------+-----------+------------+-------------+
5 rows in set (0.02 sec)

mysql> ^C
mysql> ^C
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> SELECT * FROM customers
    -> LEFT JOIN orders
    ->  ON customers.id = oriders.customer_id;
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    9
Current database: customers_and_orders

ERROR 1054 (42S22): Unknown column 'oriders.customer_id' in 'on clause'
mysql>  SELECT * FROM customers
    ->     -> LEFT JOIN orders
    -> ^C
mysql> SELECT * FROM customers
    ->     -> LEFT JOIN orders
    ->     ->  ON customers.id = oriders.customer_id;^C
mysql>
mysql>
mysql>
mysql> SELECT * FROM customers
    -> LEFT JOIN orders
    -> ON customers.id = oriders.customer_id;
ERROR 1054 (42S22): Unknown column 'oriders.customer_id' in 'on clause'
mysql> SELECT * FROM customers
    ->
    -> LEFT JOIN orders
    ->
    -> ON customers.id = orders.customer_id;
+----+------------+-----------+------------------+------+------------+--------+-------------+
| id | first_name | last_name | email            | id   | order_date | amount | customer_id |
+----+------------+-----------+------------------+------+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |    2 | 2017-11-11 |  35.50 |           1 |
|  1 | Boy        | George    | george@gmail.com |    1 | 2016-02-10 |  99.99 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |    4 | 2015-01-03 |  12.50 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |    3 | 2014-12-12 | 800.67 |           2 |
|  3 | David      | Bowie     | david@gmail.com  | NULL | NULL       |   NULL |        NULL |
|  4 | Blue       | Steele    | blue@gmail.com   | NULL | NULL       |   NULL |        NULL |
|  5 | Bette      | Davis     | bette@aol.com    |    5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+------+------------+--------+-------------+
7 rows in set (0.04 sec)

mysql>  SELECT
    -> first_name,
    -> last_name,
    -> IFNULL(SUM(amount), 0) AS total_spent
    -> FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id
    -> GROUP BY customers.id
    -> ORDER BY total_spent;
+------------+-----------+-------------+
| first_name | last_name | total_spent |
+------------+-----------+-------------+
| David      | Bowie     |        0.00 |
| Blue       | Steele    |        0.00 |
| Boy        | George    |      135.49 |
| Bette      | Davis     |      450.25 |
| George     | Michael   |      813.17 |
+------------+-----------+-------------+
5 rows in set (0.04 sec)

mysql> SELECT
    -> first name,
    -> last name,
    -> IFNULL(SUM(amount), 0) AS total_spent
    -> FROM customers
    -> LEFT JOIN orders
    ->    ON customers.id = orders.customer_id
    -> GROUP BY customers.id
    -> ORDER BY total_spent;
ERROR 1054 (42S22): Unknown column 'first' in 'field list'
mysql>
mysql>
mysql>
mysql>
mysql>
mysql> rigiht join
    ->
    -> ^C
mysql>
mysql>
mysql> SELECT * FROM customers
    -> INNER JOIN orders
    ->   ON customers.id = orders.customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+
5 rows in set (0.03 sec)

mysql> SELECT first_name, last_name, order_date, amount
    -> FROM customers
    -> JOIN orders
    ->   ON customer.id = orders.customer_id;
ERROR 1054 (42S22): Unknown column 'customer.id' in 'on clause'
mysql> SELECT frist_name, last_name, order_date, amount\
    -> ^C
mysql> SELECT first_name, last_name, order_date, amount
    -> FROM orders
    -> ^C
mysql>
mysql> SELECT first_name, last_name, order_date, amount
    -> FROM customers
    -> JOIN orders
    ->  ON customers.id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql> DELETE FROM customers WHERE first_name = 'boy';
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`customers_and_orders`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`))
mysql>
mysql>
mysql> DROP table ORDERS, CUSTOMERS;
Query OK, 0 rows affected (0.20 sec)

mysql> SHOW table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW TABLES;
Empty set (0.04 sec)

mysql> CREATE TABLE customers(
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> first_name VARCHAR(100),
    -> last_name VARCHAR(100),
    -> email VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> CREATE TABLE orders(
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> order_date DATE,
    -> amount DECIMAL(8,2)
    -> ^C
mysql>  CREATE TABLE orders(
    ->  id INT AUTO_INCREMENT PRIMARY KEY,
    ->  order_date DATE,
    -> amount DECIMAL(8,2),
    -> customer_id INT
    -> );\
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO customers (first_name, last_name, email)
    -> VALUES ('Boy', 'George','george@gmail.com'),
    -> ('George', 'Michael', 'gm@gmail.com'),
    -> ('David', 'Bowie', 'david@gmail.com'),
    -> ('Blue', 'Steele', blue@gmail.com'),
    '> ('Bette', 'Davis', bette@aol.com');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '@gmail.com'),
('Bette', 'Davis', bette@aol.com')' at line 5
mysql> mysql> INSERT INTO customers (first_name, last_name, email)
    -> VALUES ('Boy', 'George','george@gmail.com'),
    -> -> ('George', 'Michael', 'gm@gmail.com'),
    -> ('David', 'Bowie', 'david@gmail.com'),
    ->
    ->
    ->
    ->  ('Blue', 'Steele', 'blue@gmail.com'),
    -> ('Bette', 'Davis', 'bette@aol.com');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql> INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'Geor' at line 1
mysql>
mysql>
mysql>
mysql>
mysql> INSERT INTO customers (first_name, last_name, email)
    ->      VALUES ('Boy', 'George','george@gmail.com'),
    ->      ('George', 'Michael', 'gm@gmail.com'),
    ->      ('David', 'Bowie', 'david@gmail.com'),
    ->      ('Blue', 'Steele', 'blue@gmail.com'),
    ->      ('Bette', 'Davis', 'bette@ael.com');
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO orders (order_date, amount, customer_id)
    -> VALUES ('2016/02/10', 99.99, 1),
    -> ('2017/11/11', 35.50, 1),
    -> ('2014/12/12', 800.67, 2),
    -> ('2015/01/03', 12.50, 2),
    -> ('1999/04/11', 450.25, 5);
Query OK, 5 rows affected, 5 warnings (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 5

mysql> SELECT * FROM customers;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@ael.com    |
+----+------------+-----------+------------------+
5 rows in set (0.02 sec)

mysql> INSERT INTO ORDERS(order_date, amount, customer_id)
    -> VALUES('2017//11/05', 23.45, 45),
    -> (CURDATE(), 777.77, 109);
Query OK, 2 rows affected, 1 warning (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 1

mysql> SELECT CURDATE();
+------------+
| CURDATE()  |
+------------+
| 2022-08-05 |
+------------+
1 row in set (0.02 sec)

mysql> SELECT * FROM order;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order' at line 1
mysql> SELECT * FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
|  6 | 2017-11-05 |  23.45 |          45 |
|  7 | 2022-08-05 | 777.77 |         109 |
+----+------------+--------+-------------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM customers;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@ael.com    |
+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql> SELECT first_name, last_name, order_date, amount
    -> FROM customers
    -> JOIN orders
    ->   ON customers.id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
5 rows in set (0.02 sec)

mysql> SELECT first_name, last_name, order_date, amount
    -> FROM customers
    -> LEFT JOIN orders
    ->   ON customers.id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2017-11-11 |  35.50 |
| Boy        | George    | 2016-02-10 |  99.99 |
| George     | Michael   | 2015-01-03 |  12.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| David      | Bowie     | NULL       |   NULL |
| Blue       | Steele    | NULL       |   NULL |
| Bette      | Davis     | 1999-04-11 | 450.25 |
+------------+-----------+------------+--------+
7 rows in set (0.02 sec)

mysql>
mysql>
mysql>
mysql>      SELECT first_name, last_name, order_date, amount
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
| NULL       | NULL      | 2017-11-05 |  23.45 |
| NULL       | NULL      | 2022-08-05 | 777.77 |
+------------+-----------+------------+--------+
7 rows in set (0.01 sec)

mysql>   SELECT first_name, last_name, order_date, amount
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     ORDER BY first_name;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| NULL       | NULL      | 2017-11-05 |  23.45 |
| NULL       | NULL      | 2022-08-05 | 777.77 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
+------------+-----------+------------+--------+
7 rows in set (0.01 sec)

mysql>         SELECT first_name, last_name, order_date, amount
    -> ^C
mysql>         SELECT first_name, last_name, order_date, amount
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY customer_id;
+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| George     | Michael   | 2014-12-12 | 800.67 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
| NULL       | NULL      | 2017-11-05 |  23.45 |
| NULL       | NULL      | 2022-08-05 | 777.77 |
+------------+-----------+------------+--------+
5 rows in set (0.01 sec)

mysql>  SELECT IFFULL(first_name, 'MISSING'),
    ->      IFFULL(last_name, 'USER'),
    ->      order_date,
    ->      amount,
    ->      SUM(amount),
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY customer_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM customers
     RIGHT JOIN orders
        ON customers.id = orders.customer' at line 6
mysql> SELECT IFNULL(first_name, 'MISSING'),
    ->      IFNULL(last_name, 'USER'),
    ->      order_date,
    ->      amount,
    ->      SUM(amount),
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY customer_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM customers
     RIGHT JOIN orders
        ON customers.id = orders.customer' at line 6
mysql> SELECT IFNULL(first_name, 'MISSING'),
    ->      IFNULL(last_name, 'USER'),
    ->      order_date,
    ->      amount,
    ->      SUM(amount),
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY customer_id;^C
mysql> C^C
mysql>
mysql>
mysql>
mysql>
mysql> SELECT
    ->     IFNULL(first_name, 'MISSING'),
    ->     IFNULL(last_name, 'USER'),
    ->     order_date,
    ->     amount,
    ->     SUM(amount),
    -> FROM customers
    -> RIGHT JOIN orders
    ->     ON customers.id = orders.customer_id
    -> GROUP BY customer_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM customers
RIGHT JOIN orders
    ON customers.id = orders.customer_id
GROUP ' at line 7
mysql>
mysql>
mysql>
mysql>
mysql>
mysql>      SELECT IFNULL(first_name, 'MISSING'),
    ->      IFNULL(last_name, 'USER'),
    ->      order_date,
    ->      amount,
    ->      SUM(amount)
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY customer_id;
+-------------------------------+---------------------------+------------+--------+-------------+
| IFNULL(first_name, 'MISSING') | IFNULL(last_name, 'USER') | order_date | amount | SUM(amount) |
+-------------------------------+---------------------------+------------+--------+-------------+
| Boy                           | George                    | 2016-02-10 |  99.99 |      135.49 |
| George                        | Michael                   | 2014-12-12 | 800.67 |      813.17 |
| Bette                         | Davis                     | 1999-04-11 | 450.25 |      450.25 |
| MISSING                       | USER                      | 2017-11-05 |  23.45 |       23.45 |
| MISSING                       | USER                      | 2022-08-05 | 777.77 |      777.77 |
+-------------------------------+---------------------------+------------+--------+-------------+
5 rows in set (0.01 sec)

mysql>
mysql>      SELECT IFNULL(first_name, 'MISSING') AS first,
    ->      IFNULL(last_name, 'USER') AS last,
    ->      order_date,
    ->      amount,
    ->      SUM(amount)
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY customer_id;
+---------+---------+------------+--------+-------------+
| first   | last    | order_date | amount | SUM(amount) |
+---------+---------+------------+--------+-------------+
| Boy     | George  | 2016-02-10 |  99.99 |      135.49 |
| George  | Michael | 2014-12-12 | 800.67 |      813.17 |
| Bette   | Davis   | 1999-04-11 | 450.25 |      450.25 |
| MISSING | USER    | 2017-11-05 |  23.45 |       23.45 |
| MISSING | USER    | 2022-08-05 | 777.77 |      777.77 |
+---------+---------+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql>
mysql>      SELECT IFNULL(first_name, 'MISSING') AS first,
    ->      IFNULL(last_name, 'USER') AS last,
    ->      order_date,
    ->      amount,
    ->      SUM(amount)
    ->      FROM customers
    ->      RIGHT JOIN orders
    ->         ON customers.id = orders.customer_id
    ->     GROUP BY first_name, last_name;
+---------+---------+------------+--------+-------------+
| first   | last    | order_date | amount | SUM(amount) |
+---------+---------+------------+--------+-------------+
| Boy     | George  | 2016-02-10 |  99.99 |      135.49 |
| George  | Michael | 2014-12-12 | 800.67 |      813.17 |
| Bette   | Davis   | 1999-04-11 | 450.25 |      450.25 |
| MISSING | USER    | 2017-11-05 |  23.45 |      801.22 |
+---------+---------+------------+--------+-------------+
4 rows in set (0.00 sec)

mysql>     SELECT * FROM customers;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@ael.com    |
+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql>
mysql>     SELECT * FROM  orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
|  6 | 2017-11-05 |  23.45 |          45 |
|  7 | 2022-08-05 | 777.77 |         109 |
+----+------------+--------+-------------+
7 rows in set (0.00 sec)

mysql> DELETE FROM CUSTOMERS WHERE email = 'george@gmail.com';
Query OK, 1 row affected (0.02 sec)

mysql> DELETE TABLE orders, customers;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TABLE orders, customers' at line 1
mysql> DROP TABLE orders, customers;
Query OK, 0 rows affected (0.09 sec)

mysql>     CREATE TABLE customers(
    ->      id INT AUTO_INCREMENT PRIMARY KEY,
    ->      first_name VARCHAR(100),
    ->      last_name VARCHAR(100),
    ->      email VARCHAR(100)
    ->      );
Query OK, 0 rows affected (0.04 sec)

mysql>      CREATE TABLE orders(
    ->       id INT AUTO_INCREMENT PRIMARY KEY,
    ->       order_date DATE,
    ->      amount DECIMAL(8,2),
    ->      customer_id INT
    ->      FORIGN KEY (customer_id)
    ->      REFERENCES customer_id
    ->      ON DELETE CASCADE
    ->      );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FORIGN KEY (customer_id)
     REFERENCES customer_id
     ON DELETE CASCADE
    ' at line 6
mysql>
mysql>
mysql>     CREATE TABLE orders(
    ->       id INT AUTO_INCREMENT PRIMARY KEY,
    ->       order_date DATE,
    ->      amount DECIMAL(8,2),
    ->      customer_id INT
    ->      FORIGN KEY (customer_id)
    ->      REFERENCES customerS(id)
    ->      ON DELETE CASCADE
    ->      );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FORIGN KEY (customer_id)
     REFERENCES customerS(id)
     ON DELETE CASCADE
  ' at line 6
mysql>
mysql>      CREATE TABLE orders(
    ->       id INT AUTO_INCREMENT PRIMARY KEY,
    ->       order_date DATE,
    ->      amount DECIMAL(8,2),
    ->      customer_id INT,
    ->      FORIGN KEY (customer_id)
    ->      REFERENCES customerS(id)
    ->      ON DELETE CASCADE
    ->      );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'KEY (customer_id)
     REFERENCES customerS(id)
     ON DELETE CASCADE
     )' at line 6
mysql>      CREATE TABLE orders(
    ->       id INT AUTO_INCREMENT PRIMARY KEY,
    ->       order_date DATE,
    ->      amount DECIMAL(8,2),
    ->      customer_id INT,
    ->      FOREIGN KEY (customer_id)
    ->      REFERENCES customerS(id)
    ->      ON DELETE CASCADE
    ->      );
Query OK, 0 rows affected (0.08 sec)

mysql> ^C
mysql>  INSERT INTO customers (first_name, last_name, email)
    ->           VALUES ('Boy', 'George','george@gmail.com'),
    ->           ('George', 'Michael', 'gm@gmail.com'),
    ->           ('David', 'Bowie', 'david@gmail.com'),
    ->           ('Blue', 'Steele', 'blue@gmail.com'),
    ->           ('Bette', 'Davis', 'bette@ael.com');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>    INSERT INTO orders (order_date, amount, customer_id)
    ->      VALUES ('2016/02/10', 99.99, 1),
    ->      ('2017/11/11', 35.50, 1),
    ->      ('2014/12/12', 800.67, 2),
    ->      ('2015/01/03', 12.50, 2),
    ->      ('1999/04/11', 450.25, 5);
Query OK, 5 rows affected, 5 warnings (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 5

mysql> SELECT * FROM customers;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@ael.com    |
+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM orders;
+----+------------+--------+-------------+
| id | order_date | amount | customer_id |
+----+------------+--------+-------------+
|  1 | 2016-02-10 |  99.99 |           1 |
|  2 | 2017-11-11 |  35.50 |           1 |
|  3 | 2014-12-12 | 800.67 |           2 |
|  4 | 2015-01-03 |  12.50 |           2 |
|  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> DELETE FROM customers WHERE email = ' george@gmail.com';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM customers;
+----+------------+-----------+------------------+
| id | first_name | last_name | email            |
+----+------------+-----------+------------------+
|  1 | Boy        | George    | george@gmail.com |
|  2 | George     | Michael   | gm@gmail.com     |
|  3 | David      | Bowie     | david@gmail.com  |
|  4 | Blue       | Steele    | blue@gmail.com   |
|  5 | Bette      | Davis     | bette@ael.com    |
+----+------------+-----------+------------------+
5 rows in set (0.00 sec)

mysql> DELETE FROM customers WHERE email = 'george@gmail.com';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM customers;
+----+------------+-----------+-----------------+
| id | first_name | last_name | email           |
+----+------------+-----------+-----------------+
|  2 | George     | Michael   | gm@gmail.com    |
|  3 | David      | Bowie     | david@gmail.com |
|  4 | Blue       | Steele    | blue@gmail.com  |
|  5 | Bette      | Davis     | bette@ael.com   |
+----+------------+-----------+-----------------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> note: DO NOT LEAVE SPACE IN STRING(in sentence) BEACUSE SPACE WILL NOT BE NEGLECTED IN MYSQL
    ->       IT WILL BE CONSIDERED.
    ->       SOMETIME THE NAMES IN THE TABEL ALSO WONT MATCH THE CHARECTER, just beacuse u left some
    ->       space in the starting place or at the end.
    ->
    -> ^C
mysql>
mysql>
mysql> SELECT * FROM customers
    -> LEFT JOIN orders
    ->   ON customers.id = orders.customer_id;
+----+------------+-----------+-----------------+------+------------+--------+-------------+
| id | first_name | last_name | email           | id   | order_date | amount | customer_id |
+----+------------+-----------+-----------------+------+------------+--------+-------------+
|  2 | George     | Michael   | gm@gmail.com    |    3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com    |    4 | 2015-01-03 |  12.50 |           2 |
|  3 | David      | Bowie     | david@gmail.com | NULL | NULL       |   NULL |        NULL |
|  4 | Blue       | Steele    | blue@gmail.com  | NULL | NULL       |   NULL |        NULL |
|  5 | Bette      | Davis     | bette@ael.com   |    5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+-----------------+------+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM orders
    ->         LEFT JOIN customerS
    ->         ON customers.id = orders.customer_id;
+----+------------+--------+-------------+------+------------+-----------+---------------+
| id | order_date | amount | customer_id | id   | first_name | last_name | email         |
+----+------------+--------+-------------+------+------------+-----------+---------------+
|  3 | 2014-12-12 | 800.67 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  4 | 2015-01-03 |  12.50 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  5 | 1999-04-11 | 450.25 |           5 |    5 | Bette      | Davis     | bette@ael.com |
+----+------------+--------+-------------+------+------------+-----------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM orders
    ->         LEFT JOIN customerS
    ->         ON orders.customer_id = customers.id;
+----+------------+--------+-------------+------+------------+-----------+---------------+
| id | order_date | amount | customer_id | id   | first_name | last_name | email         |
+----+------------+--------+-------------+------+------------+-----------+---------------+
|  3 | 2014-12-12 | 800.67 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  4 | 2015-01-03 |  12.50 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  5 | 1999-04-11 | 450.25 |           5 |    5 | Bette      | Davis     | bette@ael.com |
+----+------------+--------+-------------+------+------------+-----------+---------------+
3 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> SELECT * FROM orders
    ->         RIGHT JOIN customerS
    ->         ON  customers.id = orders.customer_id;
+------+------------+--------+-------------+----+------------+-----------+-----------------+
| id   | order_date | amount | customer_id | id | first_name | last_name | email           |
+------+------------+--------+-------------+----+------------+-----------+-----------------+
|    3 | 2014-12-12 | 800.67 |           2 |  2 | George     | Michael   | gm@gmail.com    |
|    4 | 2015-01-03 |  12.50 |           2 |  2 | George     | Michael   | gm@gmail.com    |
| NULL | NULL       |   NULL |        NULL |  3 | David      | Bowie     | david@gmail.com |
| NULL | NULL       |   NULL |        NULL |  4 | Blue       | Steele    | blue@gmail.com  |
|    5 | 1999-04-11 | 450.25 |           5 |  5 | Bette      | Davis     | bette@ael.com   |
+------+------------+--------+-------------+----+------------+-----------+-----------------+
5 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM orders
    ->             RIGHT JOIN customerS
    ->             ON  customers.id = orders.customer_id;
+------+------------+--------+-------------+----+------------+-----------+-----------------+
| id   | order_date | amount | customer_id | id | first_name | last_name | email           |
+------+------------+--------+-------------+----+------------+-----------+-----------------+
|    3 | 2014-12-12 | 800.67 |           2 |  2 | George     | Michael   | gm@gmail.com    |
|    4 | 2015-01-03 |  12.50 |           2 |  2 | George     | Michael   | gm@gmail.com    |
| NULL | NULL       |   NULL |        NULL |  3 | David      | Bowie     | david@gmail.com |
| NULL | NULL       |   NULL |        NULL |  4 | Blue       | Steele    | blue@gmail.com  |
|    5 | 1999-04-11 | 450.25 |           5 |  5 | Bette      | Davis     | bette@ael.com   |
+------+------------+--------+-------------+----+------------+-----------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM orders
    ->             left JOIN customerS
    ->             ON  customers.id = orders.customer_id;
+----+------------+--------+-------------+------+------------+-----------+---------------+
| id | order_date | amount | customer_id | id   | first_name | last_name | email         |
+----+------------+--------+-------------+------+------------+-----------+---------------+
|  3 | 2014-12-12 | 800.67 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  4 | 2015-01-03 |  12.50 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  5 | 1999-04-11 | 450.25 |           5 |    5 | Bette      | Davis     | bette@ael.com |
+----+------------+--------+-------------+------+------------+-----------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM customerS
    ->             left JOIN orders
    ->             ON  customers.id = orders.customer_id;
+----+------------+-----------+-----------------+------+------------+--------+-------------+
| id | first_name | last_name | email           | id   | order_date | amount | customer_id |
+----+------------+-----------+-----------------+------+------------+--------+-------------+
|  2 | George     | Michael   | gm@gmail.com    |    3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com    |    4 | 2015-01-03 |  12.50 |           2 |
|  3 | David      | Bowie     | david@gmail.com | NULL | NULL       |   NULL |        NULL |
|  4 | Blue       | Steele    | blue@gmail.com  | NULL | NULL       |   NULL |        NULL |
|  5 | Bette      | Davis     | bette@ael.com   |    5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+-----------------+------+------------+--------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM customerS
    ->             right JOIN orders
    ->             ON  customers.id = orders.customer_id;
+------+------------+-----------+---------------+----+------------+--------+-------------+
| id   | first_name | last_name | email         | id | order_date | amount | customer_id |
+------+------------+-----------+---------------+----+------------+--------+-------------+
|    2 | George     | Michael   | gm@gmail.com  |  3 | 2014-12-12 | 800.67 |           2 |
|    2 | George     | Michael   | gm@gmail.com  |  4 | 2015-01-03 |  12.50 |           2 |
|    5 | Bette      | Davis     | bette@ael.com |  5 | 1999-04-11 | 450.25 |           5 |
+------+------------+-----------+---------------+----+------------+--------+-------------+
3 rows in set (0.00 sec)

mysql>
mysql> SELECT * FROM orders
    ->             left JOIN customerS
    ->             ON  customers.id = orders.customer_id;^C
mysql> \
mysql>
mysql>
mysql>
mysql> SELECT * FROM orders
    ->             left JOIN customerS
    ->             ON  customers.id = orders.customer_id;
+----+------------+--------+-------------+------+------------+-----------+---------------+
| id | order_date | amount | customer_id | id   | first_name | last_name | email         |
+----+------------+--------+-------------+------+------------+-----------+---------------+
|  3 | 2014-12-12 | 800.67 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  4 | 2015-01-03 |  12.50 |           2 |    2 | George     | Michael   | gm@gmail.com  |
|  5 | 1999-04-11 | 450.25 |           5 |    5 | Bette      | Davis     | bette@ael.com |
+----+------------+--------+-------------+------+------------+-----------+---------------+
3 rows in set (0.00 sec)

mysql>




C:\Users\hp\Desktop>cd mysql\mysql

C:\Users\hp\Desktop\mysql\mysql>mysql -u root -p
