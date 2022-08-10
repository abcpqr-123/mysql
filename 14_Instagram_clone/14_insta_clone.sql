mysql>
mysql> instagearam
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    -> ^C
mysql> source 14_Instagram_clone/14_ig_clone.sql
mysql> source 14_Instagram_clone/14_ig_clone.sql;
mysql> show database()
    -> ^C
mysql> show database();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database()' at line 1
mysql> SELECT DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT DATABASE();
+---------------+
| DATABASE()    |
+---------------+
| tv_review_app |
+---------------+
1 row in set (0.02 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 1 row affected (0.04 sec)

Database changed
Query OK, 0 rows affected (0.11 sec)

mysql> DESC users;
+------------+--------------+------+-----+-------------------+-------------------+
| Field      | Type         | Null | Key | Default           | Extra             |
+------------+--------------+------+-----+-------------------+-------------------+
| id         | int          | NO   | PRI | NULL              | auto_increment    |
| username   | varchar(255) | NO   | UNI | NULL              |                   |
| created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+--------------+------+-----+-------------------+-------------------+
3 rows in set (0.05 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
ERROR 1007 (HY000): Can't create database 'ig_clone'; database exists
Database changed
ERROR 1050 (42S01): Table 'users' already exists
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 1 row affected (0.05 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO user (username)
VALUES ('Bluethecat'),
('CharlieBrown'),
('ColtStee' at line 7
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 0 rows affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO users (username)
VALUES ('Bluethecat'),
('CharlieBrown'),
('ColtSte' at line 7
mysql> SELECT * FROM users;
ERROR 1146 (42S02): Table 'ig_clone.users' doesn't exist
mysql>
mysql>
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 0 rows affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO users (username)
VALUES ('Bluethecat'),
('CharlieBrown'),
('ColtSte' at line 7
ERROR 1146 (42S02): Table 'ig_clone.users' doesn't exist
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 0 rows affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO users (username) VALUES
 ('Bluethecat'),
('CharlieBrown'),
('ColtSte' at line 7
ERROR 1146 (42S02): Table 'ig_clone.users' doesn't exist
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 0 rows affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO users (username) VALUES
 ('Bluethecat'),
('CharlieBrown'),
('ColtSte' at line 7
mysql> SELECT DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| ig_clone   |
+------------+
1 row in set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 0 rows affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSERT INTO users (username) VALUES
 ('Bluethecat'),
('CharlieBrown'),
('ColtSte' at line 7
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 0 rows affected (0.03 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM users;
+----+--------------+---------------------+
| id | username     | created_at          |
+----+--------------+---------------------+
|  1 | Bluethecat   | 2022-08-09 14:13:01 |
|  2 | CharlieBrown | 2022-08-09 14:13:01 |
|  3 | ColtSteele   | 2022-08-09 14:13:01 |
+----+--------------+---------------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE photos (
    -> id INTEGER AUTO_ICREMENT PRIMARY KEY,
    -> image_url VARCHAR(255) NOT NULL,
    -> user_id INTEGER NOT NULL,
    -> created_at TIMESTAMP DEFAULT NOW()
    ->
    ->  CREATE TABLE photos (
    ->      id INTEGER AUTO_ICREMENT PRIMARY KEY,
    ->      image_url VARCHAR(255) NOT NULL,
    ->      user_id INTEGER NOT NULL,
    ->      created_at TIMESTAMP DEFAULT NOW(),
    ->      FOREIGN KEY (user_id) REFERENCES users(id)
    ->  );^C
mysql>
mysql>
mysql>
mysql>  CREATE TABLE photos (
    ->      id INTEGER AUTO_ICREMENT PRIMARY KEY,
    ->      image_url VARCHAR(255) NOT NULL,
    ->      user_id INTEGER NOT NULL,
    ->      created_at TIMESTAMP DEFAULT NOW(),
    ->      FOREIGN KEY (user_id) REFERENCES users(id)
    ->  );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_ICREMENT PRIMARY KEY,
     image_url VARCHAR(255) NOT NULL,
     user_id IN' at line 2
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 1 row affected (0.07 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SHOW TABLES;
+--------------------+
| Tables_in_ig_clone |
+--------------------+
| users              |
+--------------------+
1 row in set (0.03 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 1 row affected (0.06 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_ICREMENT PRIMARY KEY,
     image_url VARCHAR(255) NOT NULL,
     user_id IN' at line 2
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 1 row affected (0.04 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.08 sec)

mysql> SHOW TABLES;
+--------------------+
| Tables_in_ig_clone |
+--------------------+
| photos             |
| users              |
+--------------------+
2 rows in set (0.02 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 2 rows affected (0.07 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
+--------------------+
| Tables_in_ig_clone |
+--------------------+
| photos             |
| users              |
+--------------------+
2 rows in set (0.02 sec)

mysql> SELECT * FROM photos;
Empty set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 2 rows affected (0.09 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.07 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.04 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM photos;
+----+-----------+---------+---------------------+
| id | image_url | user_id | created_at          |
+----+-----------+---------+---------------------+
|  1 | /alskjd76 |       1 | 2022-08-09 15:11:43 |
|  2 | /lkajsd98 |       2 | 2022-08-09 15:11:43 |
|  3 | /90jddlkj |       2 | 2022-08-09 15:11:43 |
+----+-----------+---------+---------------------+
3 rows in set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 2 rows affected (0.09 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM photos.image_url, users.username
FROM photos
JOIN users
    ON photos.user_' at line 1
mysql> SELECT * FROM photos;
+----+-----------+---------+---------------------+
| id | image_url | user_id | created_at          |
+----+-----------+---------+---------------------+
|  1 | /alskjd76 |       1 | 2022-08-09 15:18:32 |
|  2 | /lkajsd98 |       2 | 2022-08-09 15:18:32 |
|  3 | /90jddlkj |       2 | 2022-08-09 15:18:32 |
+----+-----------+---------+---------------------+
3 rows in set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 2 rows affected (0.06 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

+-----------+--------------+
| image_url | username     |
+-----------+--------------+
| /alskjd76 | Bluethecat   |
| /lkajsd98 | CharlieBrown |
| /90jddlkj | CharlieBrown |
+-----------+--------------+
3 rows in set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 2 rows affected (0.08 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--SELECT photos.image_url, users.username
--FROM photos
--JOIN users' at line 1
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 3 rows affected (0.12 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--SELECT photos.image_url, users.username
--FROM photos
--JOIN users' at line 1
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 3 rows affected (0.06 sec)

Query OK, 1 row affected (0.00 sec)

Database changed
Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> DESC comments;
+--------------+--------------+------+-----+-------------------+-------------------+
| Field        | Type         | Null | Key | Default           | Extra             |
+--------------+--------------+------+-----+-------------------+-------------------+
| id           | int          | NO   | PRI | NULL              | auto_increment    |
| comment_text | varchar(255) | NO   |     | NULL              |                   |
| user_id      | int          | NO   | MUL | NULL              |                   |
| photo_id     | int          | NO   | MUL | NULL              |                   |
| created_at   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+--------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0.03 sec)

mysql> SHOW TABLES;
+--------------------+
| Tables_in_ig_clone |
+--------------------+
| comments           |
| photos             |
| users              |
+--------------------+
3 rows in set (0.01 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 3 rows affected (0.06 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.03 sec)

Query OK, 0 rows affected (0.07 sec)

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM comments;
+----+----------------+---------+----------+---------------------+
| id | comment_text   | user_id | photo_id | created_at          |
+----+----------------+---------+----------+---------------------+
|  1 | Meow!          |       1 |        2 | 2022-08-09 20:04:01 |
|  2 | Amezing shoot! |       3 |        2 | 2022-08-09 20:04:01 |
|  3 | I <3 This      |       2 |        1 | 2022-08-09 20:04:01 |
+----+----------------+---------+----------+---------------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM phtos;
ERROR 1146 (42S02): Table 'ig_clone.phtos' doesn't exist
mysql> SELECT * FROM photos;
+----+-----------+---------+---------------------+
| id | image_url | user_id | created_at          |
+----+-----------+---------+---------------------+
|  1 | /alskjd76 |       1 | 2022-08-09 20:04:01 |
|  2 | /lkajsd98 |       2 | 2022-08-09 20:04:01 |
|  3 | /90jddlkj |       2 | 2022-08-09 20:04:01 |
+----+-----------+---------+---------------------+
3 rows in set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 3 rows affected (0.10 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.07 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO LIKES(user_id, photo_id) VALUES (1,1);
ERROR 1062 (23000): Duplicate entry '1-1' for key 'likes.PRIMARY'
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
mysql> \\\\\^C
mysql>
mysql>
mysql> CREATE TABLE follows (
    -> ^C
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 4 rows affected (0.13 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.07 sec)

Query OK, 0 rows affected (0.04 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(follower_id, followee_id)
)' at line 7
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 4 rows affected (0.11 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC followers;
ERROR 1146 (42S02): Table 'ig_clone.followers' doesn't exist
mysql> DESC follows;
+-------------+-----------+------+-----+-------------------+-------------------+
| Field       | Type      | Null | Key | Default           | Extra             |
+-------------+-----------+------+-----+-------------------+-------------------+
| follower_id | int       | NO   | PRI | NULL              |                   |
| followee_id | int       | NO   | PRI | NULL              |                   |
| created_at  | timestamp | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+-------------+-----------+------+-----+-------------------+-------------------+
3 rows in set (0.03 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 5 rows affected (0.10 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM FOLLOWS;
+-------------+-------------+---------------------+
| follower_id | followee_id | created_at          |
+-------------+-------------+---------------------+
|           1 |           2 | 2022-08-09 22:22:45 |
|           1 |           3 | 2022-08-09 22:22:45 |
|           2 |           3 | 2022-08-09 22:22:45 |
|           3 |           1 | 2022-08-09 22:22:45 |
+-------------+-------------+---------------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO follows (follower_id, followee_id) VALUES (1,3);
ERROR 1062 (23000): Duplicate entry '1-3' for key 'follows.PRIMARY'
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 5 rows affected (0.12 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM follows;
+-------------+-------------+---------------------+
| follower_id | followee_id | created_at          |
+-------------+-------------+---------------------+
|           1 |           2 | 2022-08-10 00:32:16 |
|           1 |           3 | 2022-08-10 00:32:16 |
|           2 |           1 | 2022-08-10 00:32:16 |
|           2 |           3 | 2022-08-10 00:32:16 |
|           3 |           1 | 2022-08-10 00:32:16 |
+-------------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;\
Query OK, 5 rows affected (0.14 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.07 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.05 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_ICREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIME' at line 2
ERROR 1824 (HY000): Failed to open the referenced table 'tags'
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;\
Query OK, 5 rows affected (0.13 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_ICREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE
    created_at TIMES' at line 2
ERROR 1824 (HY000): Failed to open the referenced table 'tags'
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 5 rows affected (0.13 sec)

Query OK, 1 row affected (0.00 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.09 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.05 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_ICREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE
    created_at TIMES' at line 2
ERROR 1824 (HY000): Failed to open the referenced table 'tags'
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 5 rows affected (0.09 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AUTO_ICREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIME' at line 2
ERROR 1824 (HY000): Failed to open the referenced table 'tags'
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 5 rows affected (0.12 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 7 rows affected (0.17 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.00 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('sunrise')' at line 4
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ig_clone`.`photo_tags`, CONSTRAINT `photo_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`))
mysql> source 14_Instagram_clone/14_ig_clone.sql;
Query OK, 7 rows affected (0.16 sec)

Query OK, 1 row affected (0.01 sec)

Database changed
Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 0 rows affected (0.04 sec)

Query OK, 0 rows affected (0.06 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

Query OK, 1 row affected (0.01 sec)

Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM photo_tags;
+----------+--------+
| photo_id | tag_id |
+----------+--------+
|        1 |      1 |
|        1 |      2 |
|        3 |      2 |
|        2 |      3 |
+----------+--------+
4 rows in set (0.00 sec)
