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