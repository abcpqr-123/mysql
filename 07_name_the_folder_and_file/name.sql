
mysql> source first_file.sql
ERROR 1046 (3D000): No database selected
mysql> use cat_app;
Database changed
mysql> source first_file.sql
Query OK, 0 rows affected (0.06 sec)

mysql> DESC cats;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| cat_id | int          | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| age    | int          | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
3 rows in set (0.03 sec)

mysql> SOURCE testing/Insert.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSEERT INTO cats (name, age)
VALUES ('Anubhav', 17)' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSEERT INTO cats (name, age)
VALUES('Surya', 17)' at line 1
Empty set (0.00 sec)

mysql> SOURCE testing/Insert.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSEERT INTO cats (name, age)
VALUES ('Anubhav', 17)' at line 1
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INSEERT INTO cats (name, age)
VALUES('Surya', 17)' at line 1
Empty set (0.00 sec)

mysql> SOURCE testing/Insert.sql;
Query OK, 1 row affected (0.01 sec)

Query OK, 1 row affected (0.01 sec)

+--------+---------+------+
| cat_id | name    | age  |
+--------+---------+------+
|      1 | Anubhav |   17 |
|      2 | Surya   |   17 |
+--------+---------+------+
2 rows in set (0.00 sec)

mysql> SELECT DATABASE()
    -> ^C
mysql> SELECT DATABASE();
ERROR 2013 (HY000): Lost connection to MySQL server during query
No connection. Trying to reconnect...
Connection id:    19
Current database: cat_app

+------------+
| DATABASE() |
+------------+
| cat_app    |
+------------+
1 row in set (0.06 sec)

mysql>  SELECT DATABASE()
    -> ^C
mysql>  SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| cat_app    |
+------------+
1 row in set (0.00 sec)

mysql> CREATE DATABASE Book_shop;
Query OK, 1 row affected (0.04 sec)

mysql> SHOW DATABASE();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE()' at line 1
mysql> SHOW DATABASE();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE()' at line 1
mysql> SHOW DATABASES();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '()' at line 1
mysql> DROP DATABASE Book_shop;
Query OK, 0 rows affected (0.06 sec)

mysql> show databases();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '()' at line 1
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
7 rows in set (0.03 sec)

mysql> CAREATE DATABASE book_shop;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CAREATE DATABASE book_shop' at line 1
mysql> CREATE DATABASE book_shop;
Query OK, 1 row affected (0.03 sec)

mysql>
mysql>
mysql> CREATE TABLE book_shop;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> SHOW TABLES;
+-------------------+
| Tables_in_cat_app |
+-------------------+
| cats              |
| cats2             |
| cats3             |
| cats4             |
| employees         |
| unique_cats       |
| unique_cats2      |
+-------------------+
7 rows in set (0.01 sec)

mysql> USE book_shop;
Database changed
mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> SOURCE book_data.sql
ERROR:
Failed to open file 'book_data.sql', error: 2
mysql> SOURCE book_data.sql
Query OK, 0 rows affected (0.05 sec)

Query OK, 16 rows affected (0.02 sec)
Records: 16  Duplicates: 0  Warnings: 0

mysql> DESC books;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| book_id        | int          | NO   | PRI | NULL    | auto_increment |
| title          | varchar(100) | YES  |     | NULL    |                |
| author_fname   | varchar(100) | YES  |     | NULL    |                |
| author_lname   | varchar(100) | YES  |     | NULL    |                |
| released_year  | int          | YES  |     | NULL    |                |
| stock_quantity | int          | YES  |     | NULL    |                |
| pages          | int          | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM BOOKS;
-- +---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
-- | book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
-- +---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
-- |       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
-- |       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
-- |       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
-- |       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
-- |       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
-- |       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
-- |       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
-- |       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
-- |       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
-- |      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
-- |      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
-- |      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
-- |      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
-- |      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
-- |      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
-- |      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
-- +---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
-- 16 rows in set (0.00 sec)

mysql>  SELECT author_fname, author_lname FROM books;
+--------------+----------------+
| author_fname | author_lname   |
+--------------+----------------+
| Jhumpa       | Lahiri         |
| Neil         | Gaiman         |
| Neil         | Gaiman         |
| Jhumpa       | Lahiri         |
| Dave         | Eggers         |
| Dave         | Eggers         |
| Michael      | Chabon         |
| Patti        | Smith          |
| Dave         | Eggers         |
| Neil         | Gaiman         |
| Raymond      | Carver         |
| Raymond      | Carver         |
| Don          | DeLillo        |
| John         | Steinbeck      |
| David        | Foster Wallace |
| David        | Foster Wallace |
+--------------+----------------+
16 rows in set (0.00 sec)

mysql> SELECT CONACAT ('Surya', '...', 'Surya'
    -> ^C
mysql> SELECT CONACAT ('Surya', '...', 'Surya');
ERROR 1305 (42000): FUNCTION book_shop.CONACAT does not exist
mysql> SELECT CONCAT ('Surya', '...', 'Surya');
+----------------------------------+
| CONCAT ('Surya', '...', 'Surya') |
+----------------------------------+
| Surya...Surya                    |
+----------------------------------+
1 row in set (0.02 sec)

mysql> SELECT CONCAT ('Hello', 'world')
    -> ^C
mysql> SELECT CONCAT ('Hello', 'world');
+---------------------------+
| CONCAT ('Hello', 'world') |
+---------------------------+
| Helloworld                |
+---------------------------+
1 row in set (0.00 sec)

mysql>  SELECT CONCAT ('author_fname', ' ', 'author_lname');
+----------------------------------------------+
| CONCAT ('author_fname', ' ', 'author_lname') |
+----------------------------------------------+
| author_fname author_lname                    |
+----------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT
    -> CONACAT (author_fname, ' ', author_lname)
    -> FROM books;
ERROR 1305 (42000): FUNCTION book_shop.CONACAT does not exist
mysql> SELECT
    -> CONCAT (author_fname, ' ', author_lname)
    -> FROM books;
+------------------------------------------+
| CONCAT (author_fname, ' ', author_lname) |
+------------------------------------------+
| Jhumpa Lahiri                            |
| Neil Gaiman                              |
| Neil Gaiman                              |
| Jhumpa Lahiri                            |
| Dave Eggers                              |
| Dave Eggers                              |
| Michael Chabon                           |
| Patti Smith                              |
| Dave Eggers                              |
| Neil Gaiman                              |
| Raymond Carver                           |
| Raymond Carver                           |
| Don DeLillo                              |
| John Steinbeck                           |
| David Foster Wallace                     |
| David Foster Wallace                     |
+------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT
    -> CONCAT (author_fname, ' ', author_lname)
    -> FROM books
    -> ^C
mysql> SELECT
    -> CONCAT (author_fname, ' ', author_lname)
    -> AS full_name
    -> FROM books;
+----------------------+
| full_name            |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Neil Gaiman          |
| Jhumpa Lahiri        |
| Dave Eggers          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Dave Eggers          |
| Neil Gaiman          |
| Raymond Carver       |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| David Foster Wallace |
+----------------------+
16 rows in set (0.00 sec)

mysql> SELECT author_faname AS first, author_lname AS last,
    -> CONCAT (author_fname, ' ', author_lname) AS full
    -> FROM  books;
ERROR 1054 (42S22): Unknown column 'author_faname' in 'field list'
mysql>  SELECT author_fname AS first, author_lname AS last,
    -> CONCAT (author_fname, ' ', author_lname) AS full
    ->  FROM  books;
+---------+----------------+----------------------+
| first   | last           | full                 |
+---------+----------------+----------------------+
| Jhumpa  | Lahiri         | Jhumpa Lahiri        |
| Neil    | Gaiman         | Neil Gaiman          |
| Neil    | Gaiman         | Neil Gaiman          |
| Jhumpa  | Lahiri         | Jhumpa Lahiri        |
| Dave    | Eggers         | Dave Eggers          |
| Dave    | Eggers         | Dave Eggers          |
| Michael | Chabon         | Michael Chabon       |
| Patti   | Smith          | Patti Smith          |
| Dave    | Eggers         | Dave Eggers          |
| Neil    | Gaiman         | Neil Gaiman          |
| Raymond | Carver         | Raymond Carver       |
| Raymond | Carver         | Raymond Carver       |
| Don     | DeLillo        | Don DeLillo          |
| John    | Steinbeck      | John Steinbeck       |
| David   | Foster Wallace | David Foster Wallace |
| David   | Foster Wallace | David Foster Wallace |
+---------+----------------+----------------------+
16 rows in set (0.00 sec)

mysql> SELECT author_fname AS first, author_lname AS last,
    -> CONCAT (author_fname, ',', author_lname)
    -> FROM cats;
-- ERROR 1146 (42S02): Table 'book_shop.cats' doesn't exist
-- mysql> SELECT author_fname AS first, lname AS last,
--     -> CONACAT (author_fname, ' ', author_lname)
--     -> ^C
mysql> SELECT author_fname AS first, author_lname AS last,
    -> CONCAT (author_fname, ' ', author_lname) AS full
    -> FROM books;
+---------+----------------+----------------------+
| first   | last           | full                 |
+---------+----------------+----------------------+
| Jhumpa  | Lahiri         | Jhumpa Lahiri        |
| Neil    | Gaiman         | Neil Gaiman          |
| Neil    | Gaiman         | Neil Gaiman          |
| Jhumpa  | Lahiri         | Jhumpa Lahiri        |
| Dave    | Eggers         | Dave Eggers          |
| Dave    | Eggers         | Dave Eggers          |
| Michael | Chabon         | Michael Chabon       |
| Patti   | Smith          | Patti Smith          |
| Dave    | Eggers         | Dave Eggers          |
| Neil    | Gaiman         | Neil Gaiman          |
| Raymond | Carver         | Raymond Carver       |
| Raymond | Carver         | Raymond Carver       |
| Don     | DeLillo        | Don DeLillo          |
| John    | Steinbeck      | John Steinbeck       |
| David   | Foster Wallace | David Foster Wallace |
| David   | Foster Wallace | David Foster Wallace |
+---------+----------------+----------------------+
16 rows in set (0.00 sec)

mysql> SELECT author_fname AS first, author_lname AS last,
    -> CONCAT (author_fname, ',', author_lname)
    -> FROM books;
+---------+----------------+------------------------------------------+
| first   | last           | CONCAT (author_fname, ',', author_lname) |
+---------+----------------+------------------------------------------+
| Jhumpa  | Lahiri         | Jhumpa,Lahiri                            |
| Neil    | Gaiman         | Neil,Gaiman                              |
| Neil    | Gaiman         | Neil,Gaiman                              |
| Jhumpa  | Lahiri         | Jhumpa,Lahiri                            |
| Dave    | Eggers         | Dave,Eggers                              |
| Dave    | Eggers         | Dave,Eggers                              |
| Michael | Chabon         | Michael,Chabon                           |
| Patti   | Smith          | Patti,Smith                              |
| Dave    | Eggers         | Dave,Eggers                              |
| Neil    | Gaiman         | Neil,Gaiman                              |
| Raymond | Carver         | Raymond,Carver                           |
| Raymond | Carver         | Raymond,Carver                           |
| Don     | DeLillo        | Don,DeLillo                              |
| John    | Steinbeck      | John,Steinbeck                           |
| David   | Foster Wallace | David,Foster Wallace                     |
| David   | Foster Wallace | David,Foster Wallace                     |
+---------+----------------+------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT (title, '-', author_fname, '-','author_lname') FROM books;
-- +--------------------------------------------------------------------------+
-- | CONCAT (title, '-', author_fname, '-','author_lname')                    |
-- +--------------------------------------------------------------------------+
-- | The Namesake-Jhumpa-author_lname                                         |
-- | Norse Mythology-Neil-author_lname                                        |
-- | American Gods-Neil-author_lname                                          |
-- | Interpreter of Maladies-Jhumpa-author_lname                              |
-- | A Hologram for the King: A Novel-Dave-author_lname                       |
-- | The Circle-Dave-author_lname                                             |
-- | The Amazing Adventures of Kavalier & Clay-Michael-author_lname           |
-- | Just Kids-Patti-author_lname                                             |
-- | A Heartbreaking Work of Staggering Genius-Dave-author_lname              |
-- | Coraline-Neil-author_lname                                               |
-- | What We Talk About When We Talk About Love: Stories-Raymond-author_lname |
-- | Where I'm Calling From: Selected Stories-Raymond-author_lname            |
-- | White Noise-Don-author_lname                                             |
-- | Cannery Row-John-author_lname                                            |
-- | Oblivion: Stories-David-author_lname                                     |
-- | Consider the Lobster-David-author_lname                                  |
-- +--------------------------------------------------------------------------+
-- 16 rows in set (0.00 sec)

mysql> SELECT CONACT (title, '-', author_fname, '-', author_lname) FROM books;
ERROR 1305 (42000): FUNCTION book_shop.CONACT does not exist
mysql> SELECT CONCAT (title, '-', author_fname, '-', author_lname) FROM books;
+--------------------------------------------------------------------+
| CONCAT (title, '-', author_fname, '-', author_lname)               |
+--------------------------------------------------------------------+
| The Namesake-Jhumpa-Lahiri                                         |
| Norse Mythology-Neil-Gaiman                                        |
| American Gods-Neil-Gaiman                                          |
| Interpreter of Maladies-Jhumpa-Lahiri                              |
| A Hologram for the King: A Novel-Dave-Eggers                       |
| The Circle-Dave-Eggers                                             |
| The Amazing Adventures of Kavalier & Clay-Michael-Chabon           |
| Just Kids-Patti-Smith                                              |
| A Heartbreaking Work of Staggering Genius-Dave-Eggers              |
| Coraline-Neil-Gaiman                                               |
| What We Talk About When We Talk About Love: Stories-Raymond-Carver |
| Where I'm Calling From: Selected Stories-Raymond-Carver            |
| White Noise-Don-DeLillo                                            |
| Cannery Row-John-Steinbeck                                         |
| Oblivion: Stories-David-Foster Wallace                             |
| Consider the Lobster-David-Foster Wallace                          |
+--------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT ('-', author_fname, author-lname) FROM books;\
ERROR 1054 (42S22): Unknown column 'author' in 'field list'
mysql> SELECT CONCAT ('-', title, author_fname, author_lname) FROM books;
+-------------------------------------------------------------------+
| CONCAT ('-', title, author_fname, author_lname)                   |
+-------------------------------------------------------------------+
| -The NamesakeJhumpaLahiri                                         |
| -Norse MythologyNeilGaiman                                        |
| -American GodsNeilGaiman                                          |
| -Interpreter of MaladiesJhumpaLahiri                              |
| -A Hologram for the King: A NovelDaveEggers                       |
| -The CircleDaveEggers                                             |
| -The Amazing Adventures of Kavalier & ClayMichaelChabon           |
| -Just KidsPattiSmith                                              |
| -A Heartbreaking Work of Staggering GeniusDaveEggers              |
| -CoralineNeilGaiman                                               |
| -What We Talk About When We Talk About Love: StoriesRaymondCarver |
| -Where I'm Calling From: Selected StoriesRaymondCarver            |
| -White NoiseDonDeLillo                                            |
| -Cannery RowJohnSteinbeck                                         |
| -Oblivion: StoriesDavidFoster Wallace                             |
| -Consider the LobsterDavidFoster Wallace                          |
+-------------------------------------------------------------------+
16 rows in set (0.03 sec)

mysql> SELECT CONCAT WS ('-', title, author_fname, author_lname) FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '('-', title, author_fname, author_lname) FROM books' at line 1
mysql> SELECT CONCAT_WS ('-', title, author_fname, author_lname) FORM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books' at line 1
mysql> SELECT CONCAT_WS (' - ', title, author_fname, author_lname) FORM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books' at line 1
mysql> SELECT CONCAT_WS ('-', title, author_fname, author_lname) FROM books;
+--------------------------------------------------------------------+
| CONCAT_WS ('-', title, author_fname, author_lname)                 |
+--------------------------------------------------------------------+
| The Namesake-Jhumpa-Lahiri                                         |
| Norse Mythology-Neil-Gaiman                                        |
| American Gods-Neil-Gaiman                                          |
| Interpreter of Maladies-Jhumpa-Lahiri                              |
| A Hologram for the King: A Novel-Dave-Eggers                       |
| The Circle-Dave-Eggers                                             |
| The Amazing Adventures of Kavalier & Clay-Michael-Chabon           |
| Just Kids-Patti-Smith                                              |
| A Heartbreaking Work of Staggering Genius-Dave-Eggers              |
| Coraline-Neil-Gaiman                                               |
| What We Talk About When We Talk About Love: Stories-Raymond-Carver |
| Where I'm Calling From: Selected Stories-Raymond-Carver            |
| White Noise-Don-DeLillo                                            |
| Cannery Row-John-Steinbeck                                         |
| Oblivion: Stories-David-Foster Wallace                             |
| Consider the Lobster-David-Foster Wallace                          |
+--------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTRING ('Sulochana Nayak', 1,9)
    -> ^C
mysql> ;
ERROR:
No query specified

mysql> SELECT SUBSTRING ('Sulochana Nayak', 1,9);
ERROR 1630 (42000): FUNCTION book_shop.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT SUBSTRING('Sulochana Nayak', 1,9);
+-----------------------------------+
| SUBSTRING('Sulochana Nayak', 1,9) |
+-----------------------------------+
| Sulochana                         |
+-----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Sulochana Nayak, 5);
    '> ^C
mysql> SELECT SUBSTRING('Sulochana Nayak, 5);
    '> ^C
mysql> SELECT SUBSTRING('Sulochana Nayak', 5);
+---------------------------------+
| SUBSTRING('Sulochana Nayak', 5) |
+---------------------------------+
| chana Nayak                     |
+---------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Sulochana Nayak', 11);
+----------------------------------+
| SUBSTRING('Sulochana Nayak', 11) |
+----------------------------------+
| Nayak                            |
+----------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Surya Gaonkar', -6);
+--------------------------------+
| SUBSTRING('Surya Gaonkar', -6) |
+--------------------------------+
| aonkar                         |
+--------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING('Surya Gaonkar', -7);
+--------------------------------+
| SUBSTRING('Surya Gaonkar', -7) |
+--------------------------------+
| Gaonkar                        |
+--------------------------------+
1 row in set (0.00 sec)

mysql>  SELECT title FROM books;
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| The Namesake                                        |
| Norse Mythology                                     |
| American Gods                                       |
| Interpreter of Maladies                             |
| A Hologram for the King: A Novel                    |
| The Circle                                          |
| The Amazing Adventures of Kavalier & Clay           |
| Just Kids                                           |
| A Heartbreaking Work of Staggering Genius           |
| Coraline                                            |
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
| Cannery Row                                         |
| Oblivion: Stories                                   |
| Consider the Lobster                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTRING ("Where I'm Calling From: Selected Stories", 1, 10);
ERROR 1630 (42000): FUNCTION book_shop.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);
+--------------------------------------------------------------+
| SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10) |
+--------------------------------------------------------------+
| Where I'm                                                    |
+--------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT SUBSTRING(title, 1, 10);
ERROR 1054 (42S22): Unknown column 'title' in 'field list'
mysql> ^C
mysql> SELECT SUBSTRING (title, 1, 10) FROM books;
ERROR 1630 (42000): FUNCTION book_shop.SUBSTRING does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT SUBSTRING(title, 1, 10) FROM books;
+-------------------------+
| SUBSTRING(title, 1, 10) |
+-------------------------+
| The Namesa              |
| Norse Myth              |
| American G              |
| Interprete              |
| A Hologram              |
| The Circle              |
| The Amazin              |
| Just Kids               |
| A Heartbre              |
| Coraline                |
| What We Ta              |
| Where I'm               |
| White Nois              |
| Cannery Ro              |
| Oblivion:               |
| Consider t              |
+-------------------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTRING('Surya Gaonkar', 1, 5) AS first_name;
+------------+
| first_name |
+------------+
| Surya      |
+------------+
1 row in set (0.02 sec)

mysql> SELECT SUBSTRING(title, 1, 10) AS sub_title FROM books;
+------------+
| sub_title  |
+------------+
| The Namesa |
| Norse Myth |
| American G |
| Interprete |
| A Hologram |
| The Circle |
| The Amazin |
| Just Kids  |
| A Heartbre |
| Coraline   |
| What We Ta |
| Where I'm  |
| White Nois |
| Cannery Ro |
| Oblivion:  |
| Consider t |
+------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTR(title, 1, 10) AS short_tilte FROM books;
+-------------+
| short_tilte |
+-------------+
| The Namesa  |
| Norse Myth  |
| American G  |
| Interprete  |
| A Hologram  |
| The Circle  |
| The Amazin  |
| Just Kids   |
| A Heartbre  |
| Coraline    |
| What We Ta  |
| Where I'm   |
| White Nois  |
| Cannery Ro  |
| Oblivion:   |
| Consider t  |
+-------------+
16 rows in set (0.00 sec)

mysql> SELECT SUBSTR(title, 1, 10) FROM books
    -> CONCAT (SUBSTR(^C
mysql> CONCAT (SUBSTR((title, 1, 10) FROM books
    ->     -> CONCAT (SUBSTR(^C^C
mysql> CONCAT (SUBSTR((title, 1, 10) FROM books), '...';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT (SUBSTR((title, 1, 10) FROM books), '...'' at line 1
mysql> SELECT CONCAT (SUBSTR((title, 1, 10) FROM books), '...';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT CONCAT(short_title, '...');
ERROR 1054 (42S22): Unknown column 'short_title' in 'field list'
mysql> SELECT CONCAT(short_title, '...') FROM books;
ERROR 1054 (42S22): Unknown column 'short_title' in 'field list'
mysql> ^C
mysql>
mysql> SELECT CONCAT(SUBSTR('Surya Gaonkar', 1, 5), '...') FROM books;
+----------------------------------------------+
| CONCAT(SUBSTR('Surya Gaonkar', 1, 5), '...') |
+----------------------------------------------+
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
| Surya...                                     |
+----------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(SUBSTR('Surya Gaonkar', 1, 5), '...')
    -> ^C
mysql> SELECT CONCAT(SUBSTR('Surya Gaonkar', 1, 5), '...');
+----------------------------------------------+
| CONCAT(SUBSTR('Surya Gaonkar', 1, 5), '...') |
+----------------------------------------------+
| Surya...                                     |
+----------------------------------------------+
1 row in set (0.00 sec)

mysql> SOURCE book_code.sql
+-------------------------------------+
| CONCAT(SUBSTR(title, 1, 10), '...') |
+-------------------------------------+
| The Namesa...                       |
| Norse Myth...                       |
| American G...                       |
| Interprete...                       |
| A Hologram...                       |
| The Circle...                       |
| The Amazin...                       |
| Just Kids...                        |
| A Heartbre...                       |
| Coraline...                         |
| What We Ta...                       |
| Where I'm ...                       |
| White Nois...                       |
| Cannery Ro...                       |
| Oblivion: ...                       |
| Consider t...                       |
+-------------------------------------+
16 rows in set (0.00 sec)

mysql> SOURCE book_code.sql
+---------------+
| short_title   |
+---------------+
| The Namesa... |
| Norse Myth... |
| American G... |
| Interprete... |
| A Hologram... |
| The Circle... |
| The Amazin... |
| Just Kids...  |
| A Heartbre... |
| Coraline...   |
| What We Ta... |
| Where I'm ... |
| White Nois... |
| Cannery Ro... |
| Oblivion: ... |
| Consider t... |
+---------------+
16 rows in set (0.00 sec)

mysql> SELECT REPLACE('Sulochana Bhat', 'Bhat', 'Nayak');
+--------------------------------------------+
| REPLACE('Sulochana Bhat', 'Bhat', 'Nayak') |
+--------------------------------------------+
| Sulochana Nayak                            |
+--------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REAPLACE('SulochanA Nayak', 'A', 'a');
ERROR 1305 (42000): FUNCTION book_shop.REAPLACE does not exist
mysql> SELECT REPLACE ('SulochanA Nayak', 'A', 'a');
+---------------------------------------+
| REPLACE ('SulochanA Nayak', 'A', 'a') |
+---------------------------------------+
| Sulochana Nayak                       |
+---------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('cheese bread coffee milk', ' ', 'and');
+-------------------------------------------------+
| REPLACE('cheese bread coffee milk', ' ', 'and') |
+-------------------------------------------------+
| cheeseandbreadandcoffeeandmilk                  |
+-------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');
+---------------------------------------------------+
| REPLACE('cheese bread coffee milk', ' ', ' and ') |
+---------------------------------------------------+
| cheese and bread and coffee and milk              |
+---------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE(title 'e', '3') FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''e', '3') FROM books' at line 1
mysql> SELECT REPLACE(title, 'e', '3') FROM books;
+-----------------------------------------------------+
| REPLACE(title, 'e', '3')                            |
+-----------------------------------------------------+
| Th3 Nam3sak3                                        |
| Nors3 Mythology                                     |
| Am3rican Gods                                       |
| Int3rpr3t3r of Maladi3s                             |
| A Hologram for th3 King: A Nov3l                    |
| Th3 Circl3                                          |
| Th3 Amazing Adv3ntur3s of Kavali3r & Clay           |
| Just Kids                                           |
| A H3artbr3aking Work of Stagg3ring G3nius           |
| Coralin3                                            |
| What W3 Talk About Wh3n W3 Talk About Lov3: Stori3s |
| Wh3r3 I'm Calling From: S3l3ct3d Stori3s            |
| Whit3 Nois3                                         |
| Cann3ry Row                                         |
| Oblivion: Stori3s                                   |
| Consid3r th3 Lobst3r                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(REPLACE('suRYA', 'RYA', 'rya'), 'gaonkar');
+---------------------------------------------------+
| CONCAT(REPLACE('suRYA', 'RYA', 'rya'), 'gaonkar') |
+---------------------------------------------------+
| suryagaonkar                                      |
+---------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT CONCAT(REPLACE('suRYA', 'RYA', 'rya'), ' ', 'gaonkar');
+--------------------------------------------------------+
| CONCAT(REPLACE('suRYA', 'RYA', 'rya'), ' ', 'gaonkar') |
+--------------------------------------------------------+
| surya gaonkar                                          |
+--------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SOURCE book_code.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1, 10)
    FROM books' at line 2
mysql> SOURCE book_code.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1, 10)
    FROM books' at line 2
mysql> SOURCE book_code.sql
+--------------------------------------------+
| SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) |
+--------------------------------------------+
| Th3 Nam3sa                                 |
| Nors3 Myth                                 |
| Am3rican G                                 |
| Int3rpr3t3                                 |
| A Hologram                                 |
| Th3 Circl3                                 |
| Th3 Amazin                                 |
| Just Kids                                  |
| A H3artbr3                                 |
| Coralin3                                   |
| What W3 Ta                                 |
| Wh3r3 I'm                                  |
| Whit3 Nois                                 |
| Cann3ry Ro                                 |
| Oblivion:                                  |
| Consid3r t                                 |
+--------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT REVERSE('akka');
+-----------------+
| REVERSE('akka') |
+-----------------+
| akka            |
+-----------------+
1 row in set (0.02 sec)

mysql> SELECT REVERSE('akkA');
+-----------------+
| REVERSE('akkA') |
+-----------------+
| Akka            |
+-----------------+
1 row in set (0.00 sec)

mysql> SELCET REVERSE('***;|')
    -> ^C
mysql> SELCET REVERSE('***;|');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCET REVERSE('***;|')' at line 1
mysql> SELCET REVERSE('***/');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCET REVERSE('***/')' at line 1
mysql> SELCET REVERSE('***/');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCET REVERSE('***/')' at line 1
mysql> SELCET REVERSE('***7');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELCET REVERSE('***7')' at line 1
mysql> SELET REVERSE('***7');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELET REVERSE('***7')' at line 1
mysql> SELECT REVERSE('88^');
+----------------+
| REVERSE('88^') |
+----------------+
| ^88            |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT REVERSE(author_fname) FROM books;
+-----------------------+
| REVERSE(author_fname) |
+-----------------------+
| apmuhJ                |
| lieN                  |
| lieN                  |
| apmuhJ                |
| evaD                  |
| evaD                  |
| leahciM               |
| ittaP                 |
| evaD                  |
| lieN                  |
| dnomyaR               |
| dnomyaR               |
| noD                   |
| nhoJ                  |
| divaD                 |
| divaD                 |
+-----------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT(REVERSE(roof), 'roof');
ERROR 1054 (42S22): Unknown column 'roof' in 'field list'
mysql> SELECT CONCAT(REVERSE('roof'), 'roof');
+---------------------------------+
| CONCAT(REVERSE('roof'), 'roof') |
+---------------------------------+
| foorroof                        |
+---------------------------------+
1 row in set (0.00 sec)

mysql> SELECT
    -> CONCAT(REVERSE(author_name), author_name);
ERROR 1054 (42S22): Unknown column 'author_name' in 'field list'
mysql> ^C
mysql> SELECT
    -> CONCAT(REVERSE(author_name), author_name);
ERROR 1054 (42S22): Unknown column 'author_name' in 'field list'
mysql> SELECT
    -> CONCAT(REVERSE(author_name), author_name
    -> FROM books
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books
)' at line 3
mysql> SELECT
    -> CONCAT(REVERSE(author_name), author_name)
    -> FROM books;
ERROR 1054 (42S22): Unknown column 'author_name' in 'field list'
mysql> SELECT
    -> CONCAT(REVERSE(author_name), author_name
    -> ^C
mysql> SELECT
    -> CONCAT(REVERSE(author_name), author_name)
    -> FROM books;^C
mysql> SELECT
    ->
    -> ^C
mysql> SELECT
    -> CONCAT(REVERSE(author_fname), author_fname)
    -> FROM books;
+---------------------------------------------+
| CONCAT(REVERSE(author_fname), author_fname) |
+---------------------------------------------+
| apmuhJJhumpa                                |
| lieNNeil                                    |
| lieNNeil                                    |
| apmuhJJhumpa                                |
| evaDDave                                    |
| evaDDave                                    |
| leahciMMichael                              |
| ittaPPatti                                  |
| evaDDave                                    |
| lieNNeil                                    |
| dnomyaRRaymond                              |
| dnomyaRRaymond                              |
| noDDon                                      |
| nhoJJohn                                    |
| divaDDavid                                  |
| divaDDavid                                  |
+---------------------------------------------+
16 rows in set (0.02 sec)

mysql> SELECT CHAR_LENGTH('Surya');
+----------------------+
| CHAR_LENGTH('Surya') |
+----------------------+
|                    5 |
+----------------------+
1 row in set (0.02 sec)

mysql> SELECT author_name CHAR_LENGTH(author_name) FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(author_name) FROM books' at line 1
mysql> SELECT author_name, CHAR_LENGTH(author_name) FROM books;
ERROR 1054 (42S22): Unknown column 'author_name' in 'field list'
mysql> SELECT author_lname CHAR_LENGTH(author_lname) FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(author_lname) FROM books' at line 1
mysql> SELECT author_lname, CHAR_LENGTH(author_lname) AS author_length FROM books;
+----------------+---------------+
| author_lname   | author_length |
+----------------+---------------+
| Lahiri         |             6 |
| Gaiman         |             6 |
| Gaiman         |             6 |
| Lahiri         |             6 |
| Eggers         |             6 |
| Eggers         |             6 |
| Chabon         |             6 |
| Smith          |             5 |
| Eggers         |             6 |
| Gaiman         |             6 |
| Carver         |             6 |
| Carver         |             6 |
| DeLillo        |             7 |
| Steinbeck      |             9 |
| Foster Wallace |            14 |
| Foster Wallace |            14 |
+----------------+---------------+
16 rows in set (0.02 sec)

mysql> SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname) , ' characters long');
ERROR 1054 (42S22): Unknown column 'author_lname' in 'field list'
mysql> SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname) , ' characters long') FROM books;
+------------------------------------------------------------------------------+
| CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname) , ' characters long') |
+------------------------------------------------------------------------------+
| Lahiri is 6 characters long                                                  |
| Gaiman is 6 characters long                                                  |
| Gaiman is 6 characters long                                                  |
| Lahiri is 6 characters long                                                  |
| Eggers is 6 characters long                                                  |
| Eggers is 6 characters long                                                  |
| Chabon is 6 characters long                                                  |
| Smith is 5 characters long                                                   |
| Eggers is 6 characters long                                                  |
| Gaiman is 6 characters long                                                  |
| Carver is 6 characters long                                                  |
| Carver is 6 characters long                                                  |
| DeLillo is 7 characters long                                                 |
| Steinbeck is 9 characters long                                               |
| Foster Wallace is 14 characters long                                         |
| Foster Wallace is 14 characters long                                         |
+------------------------------------------------------------------------------+
16 rows in set (0.02 sec)

mysql> SELECT UPPER(author_fname, author_lname) FROM books;
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'UPPER'
mysql> SELECT UPPER ('surya');
+-----------------+
| UPPER ('surya') |
+-----------------+
| SURYA           |
+-----------------+
1 row in set (0.02 sec)

mysql> SELECT UPPER(author_fname) FROM books;
+---------------------+
| UPPER(author_fname) |
+---------------------+
| JHUMPA              |
| NEIL                |
| NEIL                |
| JHUMPA              |
| DAVE                |
| DAVE                |
| MICHAEL             |
| PATTI               |
| DAVE                |
| NEIL                |
| RAYMOND             |
| RAYMOND             |
| DON                 |
| JOHN                |
| DAVID               |
| DAVID               |
+---------------------+
16 rows in set (0.00 sec)

mysql> SELECT UPPER(author_fname, author_lname) FROM books;
ERROR 1582 (42000): Incorrect parameter count in the call to native function 'UPPER'
mysql> SELECT CONCAT('MY FAVOURITE BOOK IS: ', UPPER(title)) FROM books;
+---------------------------------------------------------------------------+
| CONCAT('MY FAVOURITE BOOK IS: ', UPPER(title))                            |
+---------------------------------------------------------------------------+
| MY FAVOURITE BOOK IS: THE NAMESAKE                                        |
| MY FAVOURITE BOOK IS: NORSE MYTHOLOGY                                     |
| MY FAVOURITE BOOK IS: AMERICAN GODS                                       |
| MY FAVOURITE BOOK IS: INTERPRETER OF MALADIES                             |
| MY FAVOURITE BOOK IS: A HOLOGRAM FOR THE KING: A NOVEL                    |
| MY FAVOURITE BOOK IS: THE CIRCLE                                          |
| MY FAVOURITE BOOK IS: THE AMAZING ADVENTURES OF KAVALIER & CLAY           |
| MY FAVOURITE BOOK IS: JUST KIDS                                           |
| MY FAVOURITE BOOK IS: A HEARTBREAKING WORK OF STAGGERING GENIUS           |
| MY FAVOURITE BOOK IS: CORALINE                                            |
| MY FAVOURITE BOOK IS: WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES |
| MY FAVOURITE BOOK IS: WHERE I'M CALLING FROM: SELECTED STORIES            |
| MY FAVOURITE BOOK IS: WHITE NOISE                                         |
| MY FAVOURITE BOOK IS: CANNERY ROW                                         |
| MY FAVOURITE BOOK IS: OBLIVION: STORIES                                   |
| MY FAVOURITE BOOK IS: CONSIDER THE LOBSTER                                |
+---------------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> ^C
mysql>
mysql> SELECT REVERSE(UPPERCASE('Why does my cat look at me with such hatred?');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT REVERSE(UPPERCASE('Why does my cat look at me with such hatred?'));
ERROR 1305 (42000): FUNCTION book_shop.UPPERCASE does not exist
mysql> SELECT REVERSE(UPPERCASE('Why does my cat look at me with such hatred?'));
ERROR 1305 (42000): FUNCTION book_shop.UPPERCASE does not exist
mysql> SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));
+----------------------------------------------------------------+
| REVERSE(UPPER('Why does my cat look at me with such hatred?')) |
+----------------------------------------------------------------+
| ?DERTAH HCUS HTIW EM TA KOOL TAC YM SEOD YHW                   |
+----------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT
    ->    REPLACE
    -> (
    -> CONCAT('I', ' ', 'like', ' ','cats'),
    -> ' ',
    -> '_',
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',
)' at line 6
mysql>  SELECT
    ->      REPLACE
    -> (
    -> CONCAT('I', ' ', 'like', ' ','cats'),
    -> ' ',
    -> '_'
    -> );
+------------------------------------------------------------+
| REPLACE
(
CONCAT('I', ' ', 'like', ' ','cats'),
' ',
'_'
) |
+------------------------------------------------------------+
| I_like_cats                                                |
+------------------------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT REPLACE(title, ' ', '->') FROM books;
+--------------------------------------------------------------+
| REPLACE(title, ' ', '->')                                    |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |
+--------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT
    ->   REPLACE(title, ' ', '->')
    ->   AS title
    -> FROM books;
+--------------------------------------------------------------+
| title                                                        |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |
+--------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT
    -> author_lname AS forwards
    -> REVERSE(author_lname AS backwards)
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'REVERSE(author_lname AS backwards)
FROM books' at line 3
mysql>
mysql>
mysql> SELECT
    -> author_lname AS forwards,
    -> REVERSE(author_lname AS backwards)
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AS backwards)
FROM books' at line 3
mysql> SELECT
    -> author_lname AS forwards,
    -> REVERSE(author_lname) AS backwards
    -> FROM books;
+----------------+----------------+
| forwards       | backwards      |
+----------------+----------------+
| Lahiri         | irihaL         |
| Gaiman         | namiaG         |
| Gaiman         | namiaG         |
| Lahiri         | irihaL         |
| Eggers         | sreggE         |
| Eggers         | sreggE         |
| Chabon         | nobahC         |
| Smith          | htimS          |
| Eggers         | sreggE         |
| Gaiman         | namiaG         |
| Carver         | revraC         |
| Carver         | revraC         |
| DeLillo        | olliLeD        |
| Steinbeck      | kcebnietS      |
| Foster Wallace | ecallaW retsoF |
| Foster Wallace | ecallaW retsoF |
+----------------+----------------+
16 rows in set (0.00 sec)

mysql> SELECT
    -> UPPER(CONCAT(author_fname, ' ', author_lname))
    -> AS 'full name in caps'
    -> FROM books;
+----------------------+
| full name in caps    |
+----------------------+
| JHUMPA LAHIRI        |
| NEIL GAIMAN          |
| NEIL GAIMAN          |
| JHUMPA LAHIRI        |
| DAVE EGGERS          |
| DAVE EGGERS          |
| MICHAEL CHABON       |
| PATTI SMITH          |
| DAVE EGGERS          |
| NEIL GAIMAN          |
| RAYMOND CARVER       |
| RAYMOND CARVER       |
| DON DELILLO          |
| JOHN STEINBECK       |
| DAVID FOSTER WALLACE |
| DAVID FOSTER WALLACE |
+----------------------+
16 rows in set (0.00 sec)

mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
16 rows in set (0.02 sec)

mysql> SELECT
    -> CONCAT(title, 'was released in' released_year)
    -> AS blurb
    -> FROM books;
ERROR 1583 (42000): Incorrect parameters in the call to native function 'concat'
mysql>
mysql> SELECT
    -> CONCAT(title, 'was released in', released_year)
    -> AS blurb
    -> FROM books;
+------------------------------------------------------------------------+
| blurb                                                                  |
+------------------------------------------------------------------------+
| The Namesakewas released in2003                                        |
| Norse Mythologywas released in2016                                     |
| American Godswas released in2001                                       |
| Interpreter of Maladieswas released in1996                             |
| A Hologram for the King: A Novelwas released in2012                    |
| The Circlewas released in2013                                          |
| The Amazing Adventures of Kavalier & Claywas released in2000           |
| Just Kidswas released in2010                                           |
| A Heartbreaking Work of Staggering Geniuswas released in2001           |
| Coralinewas released in2003                                            |
| What We Talk About When We Talk About Love: Storieswas released in1981 |
| Where I'm Calling From: Selected Storieswas released in1989            |
| White Noisewas released in1985                                         |
| Cannery Rowwas released in1945                                         |
| Oblivion: Storieswas released in2004                                   |
| Consider the Lobsterwas released in2005                                |
+------------------------------------------------------------------------+
16 rows in set (0.02 sec)

mysql>
mysql>
mysql> SELECT(
    ->     title VARCHAR(title)
    -> )FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VARCHAR(title)
)FROM books' at line 2
mysql>
mysql>
mysql> SELECT(
    ->     title, VARCHAR(title)
    -> )FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VARCHAR(title)
)FROM books' at line 2
mysql>
mysql> SELECT
    ->     title, VARCHAR(title)
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VARCHAR(title)
FROM books' at line 2
mysql>
mysql> SELECT
    ->     title, VARCHAR(title)
    -> FROM books;^C
mysql> SELECT
    ->     title,
    ->     CHAR_LENGTH(title) AS 'charater count'
    -> FROM books;
+-----------------------------------------------------+----------------+
| title                                               | charater count |
+-----------------------------------------------------+----------------+
| The Namesake                                        |             12 |
| Norse Mythology                                     |             15 |
| American Gods                                       |             13 |
| Interpreter of Maladies                             |             23 |
| A Hologram for the King: A Novel                    |             32 |
| The Circle                                          |             10 |
| The Amazing Adventures of Kavalier & Clay           |             41 |
| Just Kids                                           |              9 |
| A Heartbreaking Work of Staggering Genius           |             41 |
| Coraline                                            |              8 |
| What We Talk About When We Talk About Love: Stories |             51 |
| Where I'm Calling From: Selected Stories            |             40 |
| White Noise                                         |             11 |
| Cannery Row                                         |             11 |
| Oblivion: Stories                                   |             17 |
| Consider the Lobster                                |             20 |
+-----------------------------------------------------+----------------+
16 rows in set (0.00 sec)

mysql> SELECT
    -> ^C
mysql>
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS short_title
    -> CONCAT(author_fname, author_lname) AS author
    -> CONCAT(stock_quantity, ' in stock') AS quantity
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT(author_fname, author_lname) AS author
CONCAT(stock_quantity, ' in stock')' at line 3
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS short_title,
    -> CONCAT(author_fname, author_lname) AS author,
    -> CONCAT(stock_quantity, ' in stock') AS quantity,
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 5
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, author_lname) AS 'author',
    -> CONCAT(stock_quantity, ' in stock') AS 'quantity',
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 5
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS 'short_title'
    -> CONCAT(author_fname, author_lname) AS 'author'
    -> CONCAT(stock_quantity, ' in stock') AS 'quantity'
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT(author_fname, author_lname) AS 'author'
CONCAT(stock_quantity, ' in stock' at line 3
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS 'short_title'
    -> CONCAT(author_fname, ',', author_lname) AS 'author'
    -> CONCAT(stock_quantity, ' in stock') AS 'quantity'
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT(author_fname, ',', author_lname) AS 'author'
CONCAT(stock_quantity, ' in ' at line 3
mysql> SELECT
    -> CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    ->  CONCAT(stock_quantity), ',' ' in stock') AS quantity
    ->  FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') AS quantity
 FROM books' at line 4
mysql> SELECT
    -> CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    ->  CONCAT(stock_quantity), ',' ' in stock') AS quantity
    ->  FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') AS quantity
 FROM books' at line 4
mysql> SELECT
    -> CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    ->  CONCAT(stock_quantity), ',' ' in stock') AS 'quantity'
    ->  FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') AS 'quantity'
 FROM books' at line 4
mysql>
mysql> SELECT
    -> CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    ->  CONCAT(stock_quantity), ',', ' in stock') AS 'quantity'
    ->  FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') AS 'quantity'
 FROM books' at line 4
mysql>
mysql> SELECT
    -> CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    ->  CONCAT(stock_quantity, ',', ' in stock') AS 'quantity'
    ->  FROM books;
+---------------+----------------------+---------------+
| short_title   | author               | quantity      |
+---------------+----------------------+---------------+
| The Namesa... | Jhumpa,Lahiri        | 32, in stock  |
| Norse Myth... | Neil,Gaiman          | 43, in stock  |
| American G... | Neil,Gaiman          | 12, in stock  |
| Interprete... | Jhumpa,Lahiri        | 97, in stock  |
| A Hologram... | Dave,Eggers          | 154, in stock |
| The Circle... | Dave,Eggers          | 26, in stock  |
| The Amazin... | Michael,Chabon       | 68, in stock  |
| Just Kids...  | Patti,Smith          | 55, in stock  |
| A Heartbre... | Dave,Eggers          | 104, in stock |
| Coraline...   | Neil,Gaiman          | 100, in stock |
| What We Ta... | Raymond,Carver       | 23, in stock  |
| Where I'm ... | Raymond,Carver       | 12, in stock  |
| White Nois... | Don,DeLillo          | 49, in stock  |
| Cannery Ro... | John,Steinbeck       | 95, in stock  |
| Oblivion: ... | David,Foster Wallace | 172, in stock |
| Consider t... | David,Foster Wallace | 92, in stock  |
+---------------+----------------------+---------------+
16 rows in set (0.00 sec)

mysql> SELECT
    -> CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short_title'
    -> CONCAT(author_fname, ',', author_lname) AS 'author'
    ->  CONCAT(stock_quantity, ',', ' in stock') AS 'quantity'
    ->  FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT(author_fname, ',', author_lname) AS 'author'
 CONCAT(stock_quantity, ',',' at line 3
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    ->  CONCAT(stock_quantity, ',', ' in stock') AS 'quantity'
    ->  FROM books;
+---------------+----------------------+---------------+
| short_title   | author               | quantity      |
+---------------+----------------------+---------------+
| The Namesa... | Jhumpa,Lahiri        | 32, in stock  |
| Norse Myth... | Neil,Gaiman          | 43, in stock  |
| American G... | Neil,Gaiman          | 12, in stock  |
| Interprete... | Jhumpa,Lahiri        | 97, in stock  |
| A Hologram... | Dave,Eggers          | 154, in stock |
| The Circle... | Dave,Eggers          | 26, in stock  |
| The Amazin... | Michael,Chabon       | 68, in stock  |
| Just Kids...  | Patti,Smith          | 55, in stock  |
| A Heartbre... | Dave,Eggers          | 104, in stock |
| Coraline...   | Neil,Gaiman          | 100, in stock |
| What We Ta... | Raymond,Carver       | 23, in stock  |
| Where I'm ... | Raymond,Carver       | 12, in stock  |
| White Nois... | Don,DeLillo          | 49, in stock  |
| Cannery Ro... | John,Steinbeck       | 95, in stock  |
| Oblivion: ... | David,Foster Wallace | 172, in stock |
| Consider t... | David,Foster Wallace | 92, in stock  |
+---------------+----------------------+---------------+
16 rows in set (0.00 sec)

mysql>
mysql> SELECT
    -> CONCAT(SUBSTR(title, 1, 10), '...') AS 'short_title',
    -> CONCAT(author_fname, ',', author_lname) AS 'author',
    -> CONCAT(stock_quantity, ' in stock') AS 'quantity'
    -> FROM books;
+---------------+----------------------+--------------+
| short_title   | author               | quantity     |
+---------------+----------------------+--------------+
| The Namesa... | Jhumpa,Lahiri        | 32 in stock  |
| Norse Myth... | Neil,Gaiman          | 43 in stock  |
| American G... | Neil,Gaiman          | 12 in stock  |
| Interprete... | Jhumpa,Lahiri        | 97 in stock  |
| A Hologram... | Dave,Eggers          | 154 in stock |
| The Circle... | Dave,Eggers          | 26 in stock  |
| The Amazin... | Michael,Chabon       | 68 in stock  |
| Just Kids...  | Patti,Smith          | 55 in stock  |
| A Heartbre... | Dave,Eggers          | 104 in stock |
| Coraline...   | Neil,Gaiman          | 100 in stock |
| What We Ta... | Raymond,Carver       | 23 in stock  |
| Where I'm ... | Raymond,Carver       | 12 in stock  |
| White Nois... | Don,DeLillo          | 49 in stock  |
| Cannery Ro... | John,Steinbeck       | 95 in stock  |
| Oblivion: ... | David,Foster Wallace | 172 in stock |
| Consider t... | David,Foster Wallace | 92 in stock  |
+---------------+----------------------+--------------+
16 rows in set (0.00 sec)

mysql>
mysql> INSERT INTO books
    ->     (title, author_fname, author_lname, released_year, stock_quantity, pages)
    ->     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
    ->            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
    ->            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
Query OK, 3 rows affected (0.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT DATABASE()
    -> ^C
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| book_shop  |
+------------+
1 row in set (0.00 sec)