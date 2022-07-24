Microsoft Windows [Version 10.0.19044.1706]
(c) Microsoft Corporation. All rights reserved.

C:\Users\hp>cd desktop

C:\Users\hp\Desktop>cd sql
The system cannot find the path specified.

C:\Users\hp\Desktop>cd mysql

C:\Users\hp\Desktop\mysql>cd mysql

C:\Users\hp\Desktop\mysql\mysql> mysql root -p
Enter password: **********
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql> mysql root -p
Enter password: ***********
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql> mysql root -p
Enter password: **********
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql> mysql root -p
Enter password: **********
ERROR 1045 (28000): Access denied for user 'ODBC'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql>mysql -u rooyt -p\
mysql: [Warning] Using a password on the command line interface can be insecure.
ERROR 1045 (28000): Access denied for user 'rooyt'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql>

C:\Users\hp\Desktop\mysql\mysql>mysql -u rooyt -p
Enter password: **********
ERROR 1045 (28000): Access denied for user 'rooyt'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql>mysql -u root -p
Enter password: ***********
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)

C:\Users\hp\Desktop\mysql\mysql>mysql -u root -p
Enter password: **********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.29 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| book_shop          |
| cat_app            |
| information_schema |
| mysql              |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
8 rows in set (0.11 sec)

mysql> USE book_shop
Database changed
mysql> SELECT author_name FROM books;
ERROR 1054 (42S22): Unknown column 'author_name' in 'field list'
mysql> SELECT author_lname FROM books;
+----------------+
| author_lname   |
+----------------+
| Lahiri         |
| Gaiman         |
| Gaiman         |
| Lahiri         |
| Eggers         |
| Eggers         |
| Chabon         |
| Smith          |
| Eggers         |
| Gaiman         |
| Carver         |
| Carver         |
| DeLillo        |
| Steinbeck      |
| Foster Wallace |
| Foster Wallace |
| Harris         |
| Harris         |
| Saunders       |
+----------------+
19 rows in set (0.02 sec)

mysql> SELECT released_year FROM books;
+---------------+
| released_year |
+---------------+
|          2003 |
|          2016 |
|          2001 |
|          1996 |
|          2012 |
|          2013 |
|          2000 |
|          2010 |
|          2001 |
|          2003 |
|          1981 |
|          1989 |
|          1985 |
|          1945 |
|          2004 |
|          2005 |
|          2014 |
|          2001 |
|          2017 |
+---------------+
19 rows in set (0.02 sec)

mysql> SELECT author_lname, author_fname FROM books;
+----------------+--------------+
| author_lname   | author_fname |
+----------------+--------------+
| Lahiri         | Jhumpa       |
| Gaiman         | Neil         |
| Gaiman         | Neil         |
| Lahiri         | Jhumpa       |
| Eggers         | Dave         |
| Eggers         | Dave         |
| Chabon         | Michael      |
| Smith          | Patti        |
| Eggers         | Dave         |
| Gaiman         | Neil         |
| Carver         | Raymond      |
| Carver         | Raymond      |
| DeLillo        | Don          |
| Steinbeck      | John         |
| Foster Wallace | David        |
| Foster Wallace | David        |
| Harris         | Dan          |
| Harris         | Freida       |
| Saunders       | George       |
+----------------+--------------+
19 rows in set (0.00 sec)

mysql> SELECT DISTINCT author_lname FORM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books' at line 1
mysql> SELECT DISTINCT author_lname FroM books;
+----------------+
| author_lname   |
+----------------+
| Lahiri         |
| Gaiman         |
| Eggers         |
| Chabon         |
| Smith          |
| Carver         |
| DeLillo        |
| Steinbeck      |
| Foster Wallace |
| Harris         |
| Saunders       |
+----------------+
11 rows in set (0.03 sec)

mysql> SOURCE Refining_Selections/distinct.sql
+--------------+----------------+
| author_fname | author_lname   |
+--------------+----------------+
| Jhumpa       | Lahiri         |
| Neil         | Gaiman         |
| Dave         | Eggers         |
| Michael      | Chabon         |
| Patti        | Smith          |
| Raymond      | Carver         |
| Don          | DeLillo        |
| John         | Steinbeck      |
| David        | Foster Wallace |
| Dan          | Harris         |
| Freida       | Harris         |
| George       | Saunders       |
+--------------+----------------+
12 rows in set (0.00 sec)

mysql> SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
+-----------------------------------------+
| CONCAT(author_fname, ' ', author_lname) |
+-----------------------------------------+
| Jhumpa Lahiri                           |
| Neil Gaiman                             |
| Dave Eggers                             |
| Michael Chabon                          |
| Patti Smith                             |
| Raymond Carver                          |
| Don DeLillo                             |
| John Steinbeck                          |
| David Foster Wallace                    |
| Dan Harris                              |
| Freida Harris                           |
| George Saunders                         |
+-----------------------------------------+
12 rows in set (0.02 sec)

mysql> SELECT DISTINCT author_fname, author_lname FROM books;
+--------------+----------------+
| author_fname | author_lname   |
+--------------+----------------+
| Jhumpa       | Lahiri         |
| Neil         | Gaiman         |
| Dave         | Eggers         |
| Michael      | Chabon         |
| Patti        | Smith          |
| Raymond      | Carver         |
| Don          | DeLillo        |
| John         | Steinbeck      |
| David        | Foster Wallace |
| Dan          | Harris         |
| Freida       | Harris         |
| George       | Saunders       |
+--------------+----------------+
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
mysql> SELECT title FROM books;
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
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT title FROM books LIMIT 3;
+-----------------+
| title           |
+-----------------+
| The Namesake    |
| Norse Mythology |
| American Gods   |
+-----------------+
3 rows in set (0.00 sec)

mysql> SELECT title FROM books LIMIT 10;
+-------------------------------------------+
| title                                     |
+-------------------------------------------+
| The Namesake                              |
| Norse Mythology                           |
| American Gods                             |
| Interpreter of Maladies                   |
| A Hologram for the King: A Novel          |
| The Circle                                |
| The Amazing Adventures of Kavalier & Clay |
| Just Kids                                 |
| A Heartbreaking Work of Staggering Genius |
| Coraline                                  |
+-------------------------------------------+
10 rows in set (0.00 sec)

mysql> SELECT * FROM books LIMIT 1;
+---------+--------------+--------------+--------------+---------------+----------------+-------+
| book_id | title        | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+--------------+--------------+--------------+---------------+----------------+-------+
|       1 | The Namesake | Jhumpa       | Lahiri       |          2003 |             32 |   291 |
+---------+--------------+--------------+--------------+---------------+----------------+-------+
1 row in set (0.02 sec)

mysql> SOURCE Refining_Selections/limit.sql
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| Norse Mythology                                     |          2016 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| A Hologram for the King: A Novel                    |          2012 |
| The Circle                                          |          2013 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| Just Kids                                           |          2010 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Oblivion: Stories                                   |          2004 |
| Consider the Lobster                                |          2005 |
| 10% Happier                                         |          2014 |
| fake_book                                           |          2001 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
19 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| Lincoln In The Bardo                                |          2017 |
| Norse Mythology                                     |          2016 |
| 10% Happier                                         |          2014 |
| The Circle                                          |          2013 |
| A Hologram for the King: A Novel                    |          2012 |
| Just Kids                                           |          2010 |
| Consider the Lobster                                |          2005 |
| Oblivion: Stories                                   |          2004 |
| The Namesake                                        |          2003 |
| Coraline                                            |          2003 |
| American Gods                                       |          2001 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| fake_book                                           |          2001 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| Interpreter of Maladies                             |          1996 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Cannery Row                                         |          1945 |
+-----------------------------------------------------+---------------+
19 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| Lincoln In The Bardo             |          2017 |
| Norse Mythology                  |          2016 |
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
+----------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year aSe LIMIT 5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'aSe LIMIT 5' at line 1
mysql> SELECT title, released_year FROM books ORDER BY released_year aes LIMIT 5;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'aes LIMIT 5' at line 1
mysql> SELECT title, released_year FROM books ORDER BY released_year aSc LIMIT 5;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| Cannery Row                                         |          1945 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| White Noise                                         |          1985 |
| Where I'm Calling From: Selected Stories            |          1989 |
| Interpreter of Maladies                             |          1996 |
+-----------------------------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 0,5;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| Lincoln In The Bardo             |          2017 |
| Norse Mythology                  |          2016 |
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
+----------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 2,5;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
| Just Kids                        |          2010 |
| Consider the Lobster             |          2005 |
+----------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SOURCE refining_selections/limit.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER BY released_year DESC LIMIT 0,3' at line 1
mysql> SOURCE Refining_Selections/limit.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER BY released_year DESC LIMIT 0,3' at line 1
mysql> SELECT title, released_year FROM books;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| Norse Mythology                                     |          2016 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| A Hologram for the King: A Novel                    |          2012 |
| The Circle                                          |          2013 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| Just Kids                                           |          2010 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Oblivion: Stories                                   |          2004 |
| Consider the Lobster                                |          2005 |
| 10% Happier                                         |          2014 |
| fake_book                                           |          2001 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
19 rows in set (0.00 sec)

mysql> SOURCE Refining_Selections/limit.sql;
+----------------------+---------------+
| title                | released_year |
+----------------------+---------------+
| Lincoln In The Bardo |          2017 |
| Norse Mythology      |          2016 |
| 10% Happier          |          2014 |
+----------------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,3;
+-----------------+---------------+
| title           | released_year |
+-----------------+---------------+
| Norse Mythology |          2016 |
| 10% Happier     |          2014 |
| The Circle      |          2013 |
+-----------------+---------------+
3 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 5,10;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| Just Kids                                 |          2010 |
| Consider the Lobster                      |          2005 |
| Oblivion: Stories                         |          2004 |
| The Namesake                              |          2003 |
| Coraline                                  |          2003 |
| American Gods                             |          2001 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
| The Amazing Adventures of Kavalier & Clay |          2000 |
| Interpreter of Maladies                   |          1996 |
+-------------------------------------------+---------------+
10 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 10,1;
+---------------+---------------+
| title         | released_year |
+---------------+---------------+
| American Gods |          2001 |
+---------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,5;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| Norse Mythology                  |          2016 |
| 10% Happier                      |          2014 |
| The Circle                       |          2013 |
| A Hologram for the King: A Novel |          2012 |
| Just Kids                        |          2010 |
+----------------------------------+---------------+
5 rows in set (0.00 sec)

mysql> SELECT title FROM books LIMIT 5;
+----------------------------------+
| title                            |
+----------------------------------+
| The Namesake                     |
| Norse Mythology                  |
| American Gods                    |
| Interpreter of Maladies          |
| A Hologram for the King: A Novel |
+----------------------------------+
5 rows in set (0.00 sec)

mysql> SELECT title FROM books LIMIT 5,50;
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
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
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+
14 rows in set (0.00 sec)

mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE %da%;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '%da%' at line 1
mysql> SELECT title, aurhor_fname FROM books WHERE author_fname LIKE '%da%;
    '> ^C
mysql> SELECT title, aurhor_fname FROM books WHERE author_fname LIKE '%da%';
ERROR 1054 (42S22): Unknown column 'aurhor_fname' in 'field list'
mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
+-------------------------------------------+--------------+
| title                                     | author_fname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Dave         |
| The Circle                                | Dave         |
| A Heartbreaking Work of Staggering Genius | Dave         |
| Oblivion: Stories                         | David        |
| Consider the Lobster                      | David        |
| 10% Happier                               | Dan          |
| fake_book                                 | Freida       |
+-------------------------------------------+--------------+
7 rows in set (0.02 sec)

mysql> SELECT title, author_fname FROM books WHERE author_name LIKE %da';
    '> ^C
mysql> SELECT title, author_fname FROM books WHERE author_name LIKE %da';
    '> S^C
mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE %da';
    '> ^C
mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE %da';
    '> ^C
mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE %da%';
    '> ^C
mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE %da%';
    '> ^C
mysql> SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%';
+-------------------------------------------+--------------+
| title                                     | author_fname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Dave         |
| The Circle                                | Dave         |
| A Heartbreaking Work of Staggering Genius | Dave         |
| Oblivion: Stories                         | David        |
| Consider the Lobster                      | David        |
| 10% Happier                               | Dan          |
+-------------------------------------------+--------------+
6 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE 'the';
Empty set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%the%';
+-------------------------------------------+
| title                                     |
+-------------------------------------------+
| The Namesake                              |
| A Hologram for the King: A Novel          |
| The Circle                                |
| The Amazing Adventures of Kavalier & Clay |
| Consider the Lobster                      |
| Lincoln In The Bardo                      |
+-------------------------------------------+
6 rows in set (0.00 sec)

mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '%%%%';
+-----------------------------------------------------+----------------+
| title                                               | stock_quantity |
+-----------------------------------------------------+----------------+
| The Namesake                                        |             32 |
| Norse Mythology                                     |             43 |
| American Gods                                       |             12 |
| Interpreter of Maladies                             |             97 |
| A Hologram for the King: A Novel                    |            154 |
| The Circle                                          |             26 |
| The Amazing Adventures of Kavalier & Clay           |             68 |
| Just Kids                                           |             55 |
| A Heartbreaking Work of Staggering Genius           |            104 |
| Coraline                                            |            100 |
| What We Talk About When We Talk About Love: Stories |             23 |
| Where I'm Calling From: Selected Stories            |             12 |
| White Noise                                         |             49 |
| Cannery Row                                         |             95 |
| Oblivion: Stories                                   |            172 |
| Consider the Lobster                                |             92 |
| 10% Happier                                         |             29 |
| fake_book                                           |            287 |
| Lincoln In The Bardo                                |           1000 |
+-----------------------------------------------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
+----------------------+----------------+
| title                | stock_quantity |
+----------------------+----------------+
| Lincoln In The Bardo |           1000 |
+----------------------+----------------+
1 row in set (0.00 sec)

mysql> SELECT title, athor_fname FROM books WHERE tock_quantity LIKE '__'
    -> SELECT title, athor_fname FROM books WHERE tock_quantity LIKE '__'^C
mysql> SELECT title, author_fname FROM books WHERE stock_quantity LIKE '__';
+-----------------------------------------------------+--------------+
| title                                               | author_fname |
+-----------------------------------------------------+--------------+
| The Namesake                                        | Jhumpa       |
| Norse Mythology                                     | Neil         |
| American Gods                                       | Neil         |
| Interpreter of Maladies                             | Jhumpa       |
| The Circle                                          | Dave         |
| The Amazing Adventures of Kavalier & Clay           | Michael      |
| Just Kids                                           | Patti        |
| What We Talk About When We Talk About Love: Stories | Raymond      |
| Where I'm Calling From: Selected Stories            | Raymond      |
| White Noise                                         | Don          |
| Cannery Row                                         | John         |
| Consider the Lobster                                | David        |
| 10% Happier                                         | Dan          |
+-----------------------------------------------------+--------------+
13 rows in set (0.00 sec)

mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
+-----------------------------------------------------+----------------+
| title                                               | stock_quantity |
+-----------------------------------------------------+----------------+
| The Namesake                                        |             32 |
| Norse Mythology                                     |             43 |
| American Gods                                       |             12 |
| Interpreter of Maladies                             |             97 |
| The Circle                                          |             26 |
| The Amazing Adventures of Kavalier & Clay           |             68 |
| Just Kids                                           |             55 |
| What We Talk About When We Talk About Love: Stories |             23 |
| Where I'm Calling From: Selected Stories            |             12 |
| White Noise                                         |             49 |
| Cannery Row                                         |             95 |
| Consider the Lobster                                |             92 |
| 10% Happier                                         |             29 |
+-----------------------------------------------------+----------------+
13 rows in set (0.00 sec)

mysql> select title FORM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books' at line 1
mysql> SELECT title FROM books;
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
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT title FROM books LIKE '%%%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'LIKE '%%%'' at line 1
mysql> SELECT title FROM books WHERE title LIKE '%the%';
+-------------------------------------------+
| title                                     |
+-------------------------------------------+
| The Namesake                              |
| A Hologram for the King: A Novel          |
| The Circle                                |
| The Amazing Adventures of Kavalier & Clay |
| Consider the Lobster                      |
| Lincoln In The Bardo                      |
+-------------------------------------------+
6 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%%%';
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
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%"%"%';
Empty set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%%%';
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
| 10% Happier                                         |
| fake_book                                           |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+
19 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%\%%';
+-------------+
| title       |
+-------------+
| 10% Happier |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%\_%';
+-----------+
| title     |
+-----------+
| fake_book |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE stories;
ERROR 1054 (42S22): Unknown column 'stories' in 'where clause'
mysql> SELECT title FROM books WHERE title LIKE '%stories%';
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT pages FROM books WHERE pages LIKE '%___%';
+-------+
| pages |
+-------+
|   291 |
|   304 |
|   465 |
|   198 |
|   352 |
|   504 |
|   634 |
|   304 |
|   437 |
|   208 |
|   176 |
|   526 |
|   320 |
|   181 |
|   329 |
|   343 |
|   256 |
|   428 |
|   367 |
+-------+
19 rows in set (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '%_$';
Empty set (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE author_lname LIKE '%_%';
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| The Namesake                                        | Lahiri         |
| Norse Mythology                                     | Gaiman         |
| American Gods                                       | Gaiman         |
| Interpreter of Maladies                             | Lahiri         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Circle                                          | Eggers         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| Just Kids                                           | Smith          |
| A Heartbreaking Work of Staggering Genius           | Eggers         |
| Coraline                                            | Gaiman         |
| What We Talk About When We Talk About Love: Stories | Carver         |
| Where I'm Calling From: Selected Stories            | Carver         |
| White Noise                                         | DeLillo        |
| Cannery Row                                         | Steinbeck      |
| Oblivion: Stories                                   | Foster Wallace |
| Consider the Lobster                                | Foster Wallace |
| 10% Happier                                         | Harris         |
| fake_book                                           | Harris         |
| Lincoln In The Bardo                                | Saunders       |
+-----------------------------------------------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT title, pages FROM books DESC LIMIT (1,32423OI4U32O);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DESC LIMIT (1,32423OI4U32O)' at line 1
mysql> SOURCE Refining_Selections/exercises.sql
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| Oblivion: Stories                                   |
+-----------------------------------------------------+
3 rows in set (0.00 sec)

mysql> SOURCE Refining_Selections/exercises.sql
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1305 (42000): FUNCTION book_shop.CONACAT does not exist
mysql> SOURCE Refining_Selections/exercises.sql
+-----------------------------+
| summary                     |
+-----------------------------+
| Lincoln In The Bardo - 2017 |
| Norse Mythology - 2016      |
| 10% Happier - 2014          |
+-----------------------------+
3 rows in set (0.00 sec)

mysql> SOURCE Refining_Selections/exercises.sql
+----------------------+----------------+
| title                | author_lname   |
+----------------------+----------------+
| Oblivion: Stories    | Foster Wallace |
| Consider the Lobster | Foster Wallace |
+----------------------+----------------+
2 rows in set (0.00 sec)

mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3' at line 2
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3' at line 2
mysql> SOURCE Refining_Selections/exercises.sql
+----------------------+---------------+----------------+
| title                | released_year | stock_quantity |
+----------------------+---------------+----------------+
| Lincoln In The Bardo |          2017 |           1000 |
| fake_book            |          2001 |            287 |
| Oblivion: Stories    |          2004 |            172 |
+----------------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql> SOURCE Refining_Selections/exercises.sql
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| Where I'm Calling From: Selected Stories            |          1989 |             12 |
| American Gods                                       |          2001 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql>



Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1046 (3D000): No database selected
mysql>
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| book_shop          |
| cat_app            |
| information_schema |
| mysql              |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
8 rows in set (0.04 sec)

mysql> use book_shop
Database changed
mysql> SOURCE Refining_Selections/exercises.sql
+-----------------------------------------------------+---------------+----------------+
| title                                               | released_year | stock_quantity |
+-----------------------------------------------------+---------------+----------------+
| Where I'm Calling From: Selected Stories            |          1989 |             12 |
| American Gods                                       |          2001 |             12 |
| What We Talk About When We Talk About Love: Stories |          1981 |             23 |
+-----------------------------------------------------+---------------+----------------+
3 rows in set (0.01 sec)

mysql> SOURCE Refining_Selections/exercises.sql
+-----------------------------------------------------+----------------+
| title                                               | author_lname   |
+-----------------------------------------------------+----------------+
| What We Talk About When We Talk About Love: Stories | Carver         |
| Where I'm Calling From: Selected Stories            | Carver         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         |
| White Noise                                         | DeLillo        |
| A Heartbreaking Work of Staggering Genius           | Eggers         |
| A Hologram for the King: A Novel                    | Eggers         |
| The Circle                                          | Eggers         |
| Consider the Lobster                                | Foster Wallace |
| Oblivion: Stories                                   | Foster Wallace |
| American Gods                                       | Gaiman         |
| Coraline                                            | Gaiman         |
| Norse Mythology                                     | Gaiman         |
| 10% Happier                                         | Harris         |
| fake_book                                           | Harris         |
| Interpreter of Maladies                             | Lahiri         |
| The Namesake                                        | Lahiri         |
| Lincoln In The Bardo                                | Saunders       |
| Just Kids                                           | Smith          |
| Cannery Row                                         | Steinbeck      |
+-----------------------------------------------------+----------------+
19 rows in set (0.02 sec)

mysql> SOURCE Refining_Selections/exercises.sql\
ERROR:
Failed to open file 'Refining_Selections\exercises.sql\', error: 22
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONACAT ('MY FAVOURITE AUTHOR IS ', author_lname)FROM books AS 'yell'' at line 1
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''yell'' at line 1
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')
    FROM books
    AS 'yell'' at line 6
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')
    AS 'yell'
    FROM books' at line 6
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')
    AS yell
    FROM books' at line 6
mysql> SOURCE Refining_Selections/exercises.sql
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')
    AS yell
    FROM books ORDER BY author_lname' at line 8
mysql> SOURCE Refining_Selections/exercises.sql
+----------------------------------------------+
| yell                                         |
+----------------------------------------------+
| MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVOURITE AUTHOR IS RAYMOND CARVER!       |
| MY FAVOURITE AUTHOR IS MICHAEL CHABON!       |
| MY FAVOURITE AUTHOR IS DON DELILLO!          |
| MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
| MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
| MY FAVOURITE AUTHOR IS DAVE EGGERS!          |
| MY FAVOURITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVOURITE AUTHOR IS DAVID FOSTER WALLACE! |
| MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVOURITE AUTHOR IS NEIL GAIMAN!          |
| MY FAVOURITE AUTHOR IS DAN HARRIS!           |
| MY FAVOURITE AUTHOR IS FREIDA HARRIS!        |
| MY FAVOURITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVOURITE AUTHOR IS JHUMPA LAHIRI!        |
| MY FAVOURITE AUTHOR IS GEORGE SAUNDERS!      |
| MY FAVOURITE AUTHOR IS PATTI SMITH!          |
| MY FAVOURITE AUTHOR IS JOHN STEINBECK!       |
+----------------------------------------------+
19 rows in set (0.00 sec)











