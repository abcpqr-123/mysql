

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
mysql> SHOW DATABASE()
    -> ^C
mysql> SHOW DATABASE();
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE()' at line 1
mysql> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| book_shop  |
+------------+
1 row in set (0.02 sec)

mysql> SELECT * FROM BOOKS;
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
|      17 | 10% Happier                                         | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
19 rows in set (0.02 sec)

mysql> SELECT COUNT(*) FROM books;
+----------+
| COUNT(*) |
+----------+
|       19 |
+----------+
1 row in set (0.03 sec)

mysql> SELECT COUNT (author_lname) FROM books;
ERROR 1630 (42000): FUNCTION book_shop.COUNT does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT COUNT(author_lname) FROM books;
+---------------------+
| COUNT(author_lname) |
+---------------------+
|                  19 |
+---------------------+
1 row in set (0.02 sec)

mysql> SELECT COUNT(DISTINCT author_fname) FROM books;
+------------------------------+
| COUNT(DISTINCT author_fname) |
+------------------------------+
|                           12 |
+------------------------------+
1 row in set (0.02 sec)

mysql> SELECT COUNT(DISTINCT author_lname) FROM books;
+------------------------------+
| COUNT(DISTINCT author_lname) |
+------------------------------+
|                           11 |
+------------------------------+
1 row in set (0.00 sec)

mysql> SELECT author_fname, author_lname FROM books;
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
| Dan          | Harris         |
| Freida       | Harris         |
| George       | Saunders       |
+--------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT COUNT( DISTINCT author_fname, author_lname) FROM books;
+---------------------------------------------+
| COUNT( DISTINCT author_fname, author_lname) |
+---------------------------------------------+
|                                          12 |
+---------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT title FROM books LIKE 'the';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'LIKE 'the'' at line 1
mysql> SELECT title LIKE 'the' FROM books;
+------------------+
| title LIKE 'the' |
+------------------+
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
|                0 |
+------------------+
19 rows in set (0.02 sec)

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
6 rows in set (0.02 sec)

mysql> SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql>
mysql> SELECT title, author_fname, author_lname FROM books;
+-----------------------------------------------------+--------------+----------------+
| title                                               | author_fname | author_lname   |
+-----------------------------------------------------+--------------+----------------+
| The Namesake                                        | Jhumpa       | Lahiri         |
| Norse Mythology                                     | Neil         | Gaiman         |
| American Gods                                       | Neil         | Gaiman         |
| Interpreter of Maladies                             | Jhumpa       | Lahiri         |
| A Hologram for the King: A Novel                    | Dave         | Eggers         |
| The Circle                                          | Dave         | Eggers         |
| The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |
| Just Kids                                           | Patti        | Smith          |
| A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |
| Coraline                                            | Neil         | Gaiman         |
| What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |
| Where I'm Calling From: Selected Stories            | Raymond      | Carver         |
| White Noise                                         | Don          | DeLillo        |
| Cannery Row                                         | John         | Steinbeck      |
| Oblivion: Stories                                   | David        | Foster Wallace |
| Consider the Lobster                                | David        | Foster Wallace |
| 10% Happier                                         | Dan          | Harris         |
| fake_book                                           | Freida       | Harris         |
| Lincoln In The Bardo                                | George       | Saunders       |
+-----------------------------------------------------+--------------+----------------+
19 rows in set (0.00 sec)

mysql> SELECT title, author_fname, author_lname FROM books GROUP BY author_lname;
+-----------------------------------------------------+--------------+----------------+
| title                                               | author_fname | author_lname   |
+-----------------------------------------------------+--------------+----------------+
| The Namesake                                        | Jhumpa       | Lahiri         |
| Norse Mythology                                     | Neil         | Gaiman         |
| A Hologram for the King: A Novel                    | Dave         | Eggers         |
| The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |
| Just Kids                                           | Patti        | Smith          |
| What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |
| White Noise                                         | Don          | DeLillo        |
| Cannery Row                                         | John         | Steinbeck      |
| Oblivion: Stories                                   | David        | Foster Wallace |
| 10% Happier                                         | Dan          | Harris         |
| Lincoln In The Bardo                                | George       | Saunders       |
+-----------------------------------------------------+--------------+----------------+
11 rows in set (0.00 sec)

mysql> SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_name;
ERROR 1054 (42S22): Unknown column 'author_name' in 'group statement'
mysql> SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
+-----------------------------------------------------+--------------+----------------+----------+
| title                                               | author_fname | author_lname   | COUNT(*) |
+-----------------------------------------------------+--------------+----------------+----------+
| The Namesake                                        | Jhumpa       | Lahiri         |        2 |
| Norse Mythology                                     | Neil         | Gaiman         |        3 |
| A Hologram for the King: A Novel                    | Dave         | Eggers         |        3 |
| The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |        1 |
| Just Kids                                           | Patti        | Smith          |        1 |
| What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |        2 |
| White Noise                                         | Don          | DeLillo        |        1 |
| Cannery Row                                         | John         | Steinbeck      |        1 |
| Oblivion: Stories                                   | David        | Foster Wallace |        2 |
| 10% Happier                                         | Dan          | Harris         |        2 |
| Lincoln In The Bardo                                | George       | Saunders       |        1 |
+-----------------------------------------------------+--------------+----------------+----------+
11 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname FROM COUNT(*) FROM BOOKS GROUP BY author_fname, author_lname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COUNT(*) FROM BOOKS GROUP BY author_fname, author_lname' at line 1
mysql> SELECT author_fname, author_lname FROM COUNT(*) FROM BOOKS GROUP BY author_fname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COUNT(*) FROM BOOKS GROUP BY author_fname' at line 1
mysql> SELECT author_fname, author_lname COUNT(*) FROM BOOKS GROUP BY author_fname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COUNT(*) FROM BOOKS GROUP BY author_fname' at line 1
mysql> SELECT title, author_fname, author_lname, COUNT(*) FROM books GROUP BY author_lname;
+-----------------------------------------------------+--------------+----------------+----------+
| title                                               | author_fname | author_lname   | COUNT(*) |
+-----------------------------------------------------+--------------+----------------+----------+
| The Namesake                                        | Jhumpa       | Lahiri         |        2 |
| Norse Mythology                                     | Neil         | Gaiman         |        3 |
| A Hologram for the King: A Novel                    | Dave         | Eggers         |        3 |
| The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |        1 |
| Just Kids                                           | Patti        | Smith          |        1 |
| What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |        2 |
| White Noise                                         | Don          | DeLillo        |        1 |
| Cannery Row                                         | John         | Steinbeck      |        1 |
| Oblivion: Stories                                   | David        | Foster Wallace |        2 |
| 10% Happier                                         | Dan          | Harris         |        2 |
| Lincoln In The Bardo                                | George       | Saunders       |        1 |
+-----------------------------------------------------+--------------+----------------+----------+
11 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_fname;
+--------------+----------------+----------+
| author_fname | author_lname   | COUNT(*) |
+--------------+----------------+----------+
| Jhumpa       | Lahiri         |        2 |
| Neil         | Gaiman         |        3 |
| Dave         | Eggers         |        3 |
| Michael      | Chabon         |        1 |
| Patti        | Smith          |        1 |
| Raymond      | Carver         |        2 |
| Don          | DeLillo        |        1 |
| John         | Steinbeck      |        1 |
| David        | Foster Wallace |        2 |
| Dan          | Harris         |        1 |
| Freida       | Harris         |        1 |
| George       | Saunders       |        1 |
+--------------+----------------+----------+
12 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_fname, author_lname;
+--------------+----------------+----------+
| author_fname | author_lname   | COUNT(*) |
+--------------+----------------+----------+
| Jhumpa       | Lahiri         |        2 |
| Neil         | Gaiman         |        3 |
| Dave         | Eggers         |        3 |
| Michael      | Chabon         |        1 |
| Patti        | Smith          |        1 |
| Raymond      | Carver         |        2 |
| Don          | DeLillo        |        1 |
| John         | Steinbeck      |        1 |
| David        | Foster Wallace |        2 |
| Dan          | Harris         |        1 |
| Freida       | Harris         |        1 |
| George       | Saunders       |        1 |
+--------------+----------------+----------+
12 rows in set (0.00 sec)

mysql> SELECT title FROM books GROUP BY released_year;
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
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
| Cannery Row                                         |
| Oblivion: Stories                                   |
| Consider the Lobster                                |
| 10% Happier                                         |
| Lincoln In The Bardo                                |
+-----------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books GROUP BY released_year;
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
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Oblivion: Stories                                   |          2004 |
| Consider the Lobster                                |          2005 |
| 10% Happier                                         |          2014 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
16 rows in set (0.00 sec)

mysql> SELECT title, released_year COUNT(*) FROM books GROUP BY released_year;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COUNT(*) FROM books GROUP BY released_year' at line 1
mysql> SELECT title, released_year, COUNT(*) FROM books GROUP BY released_year;
+-----------------------------------------------------+---------------+----------+
| title                                               | released_year | COUNT(*) |
+-----------------------------------------------------+---------------+----------+
| The Namesake                                        |          2003 |        2 |
| Norse Mythology                                     |          2016 |        1 |
| American Gods                                       |          2001 |        3 |
| Interpreter of Maladies                             |          1996 |        1 |
| A Hologram for the King: A Novel                    |          2012 |        1 |
| The Circle                                          |          2013 |        1 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |        1 |
| Just Kids                                           |          2010 |        1 |
| What We Talk About When We Talk About Love: Stories |          1981 |        1 |
| Where I'm Calling From: Selected Stories            |          1989 |        1 |
| White Noise                                         |          1985 |        1 |
| Cannery Row                                         |          1945 |        1 |
| Oblivion: Stories                                   |          2004 |        1 |
| Consider the Lobster                                |          2005 |        1 |
| 10% Happier                                         |          2014 |        1 |
| Lincoln In The Bardo                                |          2017 |        1 |
+-----------------------------------------------------+---------------+----------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT('In' , released_year, ',',  COUNT(*), ' books were released';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT CONCAT('In' , released_year, ',',  COUNT(*), ' books were released') FROM books;
+----------------------------------------------------------------------+
| CONCAT('In' , released_year, ',',  COUNT(*), ' books were released') |
+----------------------------------------------------------------------+
| In2003,19 books were released                                        |
+----------------------------------------------------------------------+
1 row in set (0.02 sec)

mysql> SELECT * CONCAT('In' , released_year, ',',  COUNT(*), ' books were released';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CONCAT('In' , released_year, ',',  COUNT(*), ' books were released'' at line 1
mysql> SELECT CONCAT('In' , released_year, ',',  COUNT(*), ' books were released') FROM books GROUP BY released_year;
+----------------------------------------------------------------------+
| CONCAT('In' , released_year, ',',  COUNT(*), ' books were released') |
+----------------------------------------------------------------------+
| In2003,2 books were released                                         |
| In2016,1 books were released                                         |
| In2001,3 books were released                                         |
| In1996,1 books were released                                         |
| In2012,1 books were released                                         |
| In2013,1 books were released                                         |
| In2000,1 books were released                                         |
| In2010,1 books were released                                         |
| In1981,1 books were released                                         |
| In1989,1 books were released                                         |
| In1985,1 books were released                                         |
| In1945,1 books were released                                         |
| In2004,1 books were released                                         |
| In2005,1 books were released                                         |
| In2014,1 books were released                                         |
| In2017,1 books were released                                         |
+----------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT('In' , released_year, ' ',  COUNT(*), ' books were released') FROM books GROUP BY released_year;
+----------------------------------------------------------------------+
| CONCAT('In' , released_year, ' ',  COUNT(*), ' books were released') |
+----------------------------------------------------------------------+
| In2003 2 books were released                                         |
| In2016 1 books were released                                         |
| In2001 3 books were released                                         |
| In1996 1 books were released                                         |
| In2012 1 books were released                                         |
| In2013 1 books were released                                         |
| In2000 1 books were released                                         |
| In2010 1 books were released                                         |
| In1981 1 books were released                                         |
| In1989 1 books were released                                         |
| In1985 1 books were released                                         |
| In1945 1 books were released                                         |
| In2004 1 books were released                                         |
| In2005 1 books were released                                         |
| In2014 1 books were released                                         |
| In2017 1 books were released                                         |
+----------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT('In ' , released_year, ' ',  COUNT(*), ' books were released') FROM books GROUP BY released_year;
+-----------------------------------------------------------------------+
| CONCAT('In ' , released_year, ' ',  COUNT(*), ' books were released') |
+-----------------------------------------------------------------------+
| In 2003 2 books were released                                         |
| In 2016 1 books were released                                         |
| In 2001 3 books were released                                         |
| In 1996 1 books were released                                         |
| In 2012 1 books were released                                         |
| In 2013 1 books were released                                         |
| In 2000 1 books were released                                         |
| In 2010 1 books were released                                         |
| In 1981 1 books were released                                         |
| In 1989 1 books were released                                         |
| In 1985 1 books were released                                         |
| In 1945 1 books were released                                         |
| In 2004 1 books were released                                         |
| In 2005 1 books were released                                         |
| In 2014 1 books were released                                         |
| In 2017 1 books were released                                         |
+-----------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT('In ' , released_year, ' ',  COUNT(*), ' book*(s) were released') FROM books GROUP BY released_year;
+--------------------------------------------------------------------------+
| CONCAT('In ' , released_year, ' ',  COUNT(*), ' book*(s) were released') |
+--------------------------------------------------------------------------+
| In 2003 2 book*(s) were released                                         |
| In 2016 1 book*(s) were released                                         |
| In 2001 3 book*(s) were released                                         |
| In 1996 1 book*(s) were released                                         |
| In 2012 1 book*(s) were released                                         |
| In 2013 1 book*(s) were released                                         |
| In 2000 1 book*(s) were released                                         |
| In 2010 1 book*(s) were released                                         |
| In 1981 1 book*(s) were released                                         |
| In 1989 1 book*(s) were released                                         |
| In 1985 1 book*(s) were released                                         |
| In 1945 1 book*(s) were released                                         |
| In 2004 1 book*(s) were released                                         |
| In 2005 1 book*(s) were released                                         |
| In 2014 1 book*(s) were released                                         |
| In 2017 1 book*(s) were released                                         |
+--------------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT CONCAT('In ' , released_year, ' ',  COUNT(*), ' book(s) were released') FROM books GROUP BY released_year;
+-------------------------------------------------------------------------+
| CONCAT('In ' , released_year, ' ',  COUNT(*), ' book(s) were released') |
+-------------------------------------------------------------------------+
| In 2003 2 book(s) were released                                         |
| In 2016 1 book(s) were released                                         |
| In 2001 3 book(s) were released                                         |
| In 1996 1 book(s) were released                                         |
| In 2012 1 book(s) were released                                         |
| In 2013 1 book(s) were released                                         |
| In 2000 1 book(s) were released                                         |
| In 2010 1 book(s) were released                                         |
| In 1981 1 book(s) were released                                         |
| In 1989 1 book(s) were released                                         |
| In 1985 1 book(s) were released                                         |
| In 1945 1 book(s) were released                                         |
| In 2004 1 book(s) were released                                         |
| In 2005 1 book(s) were released                                         |
| In 2014 1 book(s) were released                                         |
| In 2017 1 book(s) were released                                         |
+-------------------------------------------------------------------------+
16 rows in set (0.00 sec)

mysql> SELECT MIN(released_year) FROM books;
+--------------------+
| MIN(released_year) |
+--------------------+
|               1945 |
+--------------------+
1 row in set (0.02 sec)

mysql> SELECT MIN(pages) FROM books;
+------------+
| MIN(pages) |
+------------+
|        176 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(released_year) FROM books;
+--------------------+
| MAX(released_year) |
+--------------------+
|               2017 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(pages) FROM books;
+------------+
| MAX(pages) |
+------------+
|        634 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT MAX(pages), title FROM books;
+------------+--------------+
| MAX(pages) | title        |
+------------+--------------+
|        634 | The Namesake |
+------------+--------------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> SELECT * FROM books WHERE pages=634
    -> ^C
mysql> SELECT * FROM books WHERE pages=634;
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon       |          2000 |             68 |   634 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
1 row in set (0.02 sec)

mysql> SELECT MAX(pages) FROM books;
+------------+
| MAX(pages) |
+------------+
|        634 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM books WHERE pages=SELECT MAX(pages) FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT MAX(pages) FROM books' at line 1
mysql> SELECT * FROM books WHERE pages=MAX(pages) FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql>
mysql>
mysql>
mysql> SELECT * FROM books WHERE pages=(SELECT MAX(pages) FROM books);
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon       |          2000 |             68 |   634 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
1 row in set (0.02 sec)

mysql> SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT title, pages FROM books WHERE pages = (SELECT Min(pages) FROM books);
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| What We Talk About When We Talk About Love: Stories |   176 |
+-----------------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT title, pages FROM books ORDER BY ASC LIMIT 1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ASC LIMIT 1' at line 1
mysql> SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;\
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| What We Talk About When We Talk About Love: Stories |   176 |
+-----------------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT title, FROM books ORDER BY ASC pages FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books ORDER BY ASC pages FROM books' at line 1
mysql> SELECT title pages, FROM books ORDER BY ASC pages FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books ORDER BY ASC pages FROM books' at line 1
mysql> SELECT title pages, FROM books ORDER BY pages ASC FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books ORDER BY pages ASC FROM books' at line 1
mysql> SELECT title, pages FROM books ORDER BY pages ASC FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql> SELECT title, pages FROM books ORDER BY pages ASC LIMIT 1;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| What We Talk About When We Talk About Love: Stories |   176 |
+-----------------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT title, pages FROM books ORDER BY pages DESC limit 1;
+-------------------------------------------+-------+
| title                                     | pages |
+-------------------------------------------+-------+
| The Amazing Adventures of Kavalier & Clay |   634 |
+-------------------------------------------+-------+
1 row in set (0.00 sec)

mysql> SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;
+--------------+----------------+--------------------+
| author_fname | author_lname   | MIN(released_year) |
+--------------+----------------+--------------------+
| Jhumpa       | Lahiri         |               1996 |
| Neil         | Gaiman         |               2001 |
| Dave         | Eggers         |               2001 |
| Michael      | Chabon         |               2000 |
| Patti        | Smith          |               2010 |
| Raymond      | Carver         |               1981 |
| Don          | DeLillo        |               1985 |
| John         | Steinbeck      |               1945 |
| David        | Foster Wallace |               2004 |
| Dan          | Harris         |               2014 |
| Freida       | Harris         |               2001 |
| George       | Saunders       |               2017 |
+--------------+----------------+--------------------+
12 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;
+--------------+----------------+--------------------+
| author_fname | author_lname   | MIN(released_year) |
+--------------+----------------+--------------------+
| Jhumpa       | Lahiri         |               1996 |
| Neil         | Gaiman         |               2001 |
| Dave         | Eggers         |               2001 |
| Michael      | Chabon         |               2000 |
| Patti        | Smith          |               2010 |
| Raymond      | Carver         |               1981 |
| Don          | DeLillo        |               1985 |
| John         | Steinbeck      |               1945 |
| David        | Foster Wallace |               2004 |
| Dan          | Harris         |               2014 |
| Freida       | Harris         |               2001 |
| George       | Saunders       |               2017 |
+--------------+----------------+--------------------+
12 rows in set (0.00 sec)

mysql> SELECT pages, author_fname, author_lname MAX(pages) FROM books ORDER BY author_fname, author_lname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'MAX(pages) FROM books ORDER BY author_fname, author_lname' at line 1
mysql> SELECT pages, author_fname, author_lname, MAX(pages) FROM books ORDER BY author_fname, author_lname;
+-------+--------------+--------------+------------+
| pages | author_fname | author_lname | MAX(pages) |
+-------+--------------+--------------+------------+
|   291 | Jhumpa       | Lahiri       |        634 |
+-------+--------------+--------------+------------+
1 row in set (0.00 sec)

mysql> SELECT pages, author_fname, author_lname, MAX(pages) FROM books GROUP BY author_fname, author_lname;
+-------+--------------+----------------+------------+
| pages | author_fname | author_lname   | MAX(pages) |
+-------+--------------+----------------+------------+
|   291 | Jhumpa       | Lahiri         |        291 |
|   304 | Neil         | Gaiman         |        465 |
|   352 | Dave         | Eggers         |        504 |
|   634 | Michael      | Chabon         |        634 |
|   304 | Patti        | Smith          |        304 |
|   176 | Raymond      | Carver         |        526 |
|   320 | Don          | DeLillo        |        320 |
|   181 | John         | Steinbeck      |        181 |
|   329 | David        | Foster Wallace |        343 |
|   256 | Dan          | Harris         |        256 |
|   428 | Freida       | Harris         |        428 |
|   367 | George       | Saunders       |        367 |
+-------+--------------+----------------+------------+
12 rows in set (0.00 sec)

mysql> SELECT  author_fname, author_lname, MAX(pages) FROM books GROUP BY author_fname, author_lname;
+--------------+----------------+------------+
| author_fname | author_lname   | MAX(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |        291 |
| Neil         | Gaiman         |        465 |
| Dave         | Eggers         |        504 |
| Michael      | Chabon         |        634 |
| Patti        | Smith          |        304 |
| Raymond      | Carver         |        526 |
| Don          | DeLillo        |        320 |
| John         | Steinbeck      |        181 |
| David        | Foster Wallace |        343 |
| Dan          | Harris         |        256 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
+--------------+----------------+------------+
12 rows in set (0.00 sec)

mysql> SELECT CONCAT(author_fname, author_lname, MAX(pages)) FROM books GROUP BY author_fname, auhtor_lname;
ERROR 1054 (42S22): Unknown column 'auhtor_lname' in 'group statement'
mysql> SELECT CONCAT(author_fname,' ', author_lname, MAX(pages)) FROM books GROUP BY author_fname, auhtor_lname;
ERROR 1054 (42S22): Unknown column 'auhtor_lname' in 'group statement'
mysql> SELECT CONCAT(author_fname,' ', author_lname) AS author,  MAX(pages)) FROM books GROUP BY author_fname, auhtor_lname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ') FROM books GROUP BY author_fname, auhtor_lname' at line 1
mysql> ^C
mysql> SELECT CONCAT(author_fname,' ', author_lname) AS author,  MAX(pages) AS 'longest book'
    -> FROM books
    -> GROUP BY author_lname, auhtor_fname;
ERROR 1054 (42S22): Unknown column 'auhtor_fname' in 'group statement'
mysql> SELECT CONCAT(author_fname,' ', author_lname) AS author,  MAX(pages) AS 'longest book'
    -> FROM books
    ->  GROUP BY author_lname, author_fname;
+----------------------+--------------+
| author               | longest book |
+----------------------+--------------+
| Jhumpa Lahiri        |          291 |
| Neil Gaiman          |          465 |
| Dave Eggers          |          504 |
| Michael Chabon       |          634 |
| Patti Smith          |          304 |
| Raymond Carver       |          526 |
| Don DeLillo          |          320 |
| John Steinbeck       |          181 |
| David Foster Wallace |          343 |
| Dan Harris           |          256 |
| Freida Harris        |          428 |
| George Saunders      |          367 |
+----------------------+--------------+
12 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> SELECT pages FROM books SUM(books);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SUM(books)' at line 1
mysql> SELECT pages, SUM(books) FROM books;
ERROR 1054 (42S22): Unknown column 'books' in 'field list'
mysql> SELECT pages, SUM(pages) FROM books;
+-------+------------+
| pages | SUM(pages) |
+-------+------------+
|   291 |       6623 |
+-------+------------+
1 row in set (0.02 sec)

mysql> SELECT SUM(pages) FROM books;
+------------+
| SUM(pages) |
+------------+
|       6623 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT SUM(released_year) FROM books;
+--------------------+
| SUM(released_year) |
+--------------------+
|              37996 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT author_fname, author_lname, SUM(pages)
    -> FROM books;
+--------------+--------------+------------+
| author_fname | author_lname | SUM(pages) |
+--------------+--------------+------------+
| Jhumpa       | Lahiri       |       6623 |
+--------------+--------------+------------+
1 row in set (0.00 sec)

mysql> SELECT author_fname, author_lname, SUM(pages)
    ->  FROM books
    -> GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | SUM(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |        489 |
| Neil         | Gaiman         |        977 |
| Dave         | Eggers         |       1293 |
| Michael      | Chabon         |        634 |
| Patti        | Smith          |        304 |
| Raymond      | Carver         |        702 |
| Don          | DeLillo        |        320 |
| John         | Steinbeck      |        181 |
| David        | Foster Wallace |        672 |
| Dan          | Harris         |        256 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
+--------------+----------------+------------+
12 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname, SUM(pages) FORM books GROUP BY (author_lname, author_fname);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books GROUP BY (author_lname, author_fname)' at line 1
mysql> SELECT author_fname, author_lname, SUM(pages) FORM books GROUP BY author_lname, author_fname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books GROUP BY author_lname, author_fname' at line 1
mysql> SELECT author_fname, author_lname, SUM(pages) FORM books GROUP BY author_lname, author_fname;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books GROUP BY author_lname, author_fname' at line 1
mysql>
mysql>
mysql>
mysql> SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_fname FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM books' at line 1
mysql> ^C
mysql> SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | SUM(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |        489 |
| Neil         | Gaiman         |        977 |
| Dave         | Eggers         |       1293 |
| Michael      | Chabon         |        634 |
| Patti        | Smith          |        304 |
| Raymond      | Carver         |        702 |
| Don          | DeLillo        |        320 |
| John         | Steinbeck      |        181 |
| David        | Foster Wallace |        672 |
| Dan          | Harris         |        256 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
+--------------+----------------+------------+
12 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY auhtor_lname, author_fname;
ERROR 1054 (42S22): Unknown column 'auhtor_lname' in 'group statement'
mysql> SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | MAX(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |        291 |
| Neil         | Gaiman         |        465 |
| Dave         | Eggers         |        504 |
| Michael      | Chabon         |        634 |
| Patti        | Smith          |        304 |
| Raymond      | Carver         |        526 |
| Don          | DeLillo        |        320 |
| John         | Steinbeck      |        181 |
| David        | Foster Wallace |        343 |
| Dan          | Harris         |        256 |
| Freida       | Harris         |        428 |
| George       | Saunders       |        367 |
+--------------+----------------+------------+
12 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql>
mysql> SELECT AVG(released_year) FROM books;
+--------------------+
| AVG(released_year) |
+--------------------+
|          1999.7895 |
+--------------------+
1 row in set (0.02 sec)

mysql> SELECT AVG(pages) FROM books;
+------------+
| AVG(pages) |
+------------+
|   348.5789 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT AVG(stock_quantity) FROM books GROUP BY released_year;
+---------------------+
| AVG(stock_quantity) |
+---------------------+
|             66.0000 |
|             43.0000 |
|            134.3333 |
|             97.0000 |
|            154.0000 |
|             26.0000 |
|             68.0000 |
|             55.0000 |
|             23.0000 |
|             12.0000 |
|             49.0000 |
|             95.0000 |
|            172.0000 |
|             92.0000 |
|             29.0000 |
|           1000.0000 |
+---------------------+
16 rows in set (0.00 sec)

mysql> SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;
+---------------+---------------------+
| released_year | AVG(stock_quantity) |
+---------------+---------------------+
|          2003 |             66.0000 |
|          2016 |             43.0000 |
|          2001 |            134.3333 |
|          1996 |             97.0000 |
|          2012 |            154.0000 |
|          2013 |             26.0000 |
|          2000 |             68.0000 |
|          2010 |             55.0000 |
|          1981 |             23.0000 |
|          1989 |             12.0000 |
|          1985 |             49.0000 |
|          1945 |             95.0000 |
|          2004 |            172.0000 |
|          2005 |             92.0000 |
|          2014 |             29.0000 |
|          2017 |           1000.0000 |
+---------------+---------------------+
16 rows in set (0.00 sec)

mysql> SELECT author_fname, author_lname, AVG(pages) FROM  books GROUP BY (author_lname, author_fname);
ERROR 1241 (21000): Operand should contain 1 column(s)
mysql> SELECT author_fname, author_lname, AVG(pages) FROM  books GROUP BY author_lname, author_fname;
+--------------+----------------+------------+
| author_fname | author_lname   | AVG(pages) |
+--------------+----------------+------------+
| Jhumpa       | Lahiri         |   244.5000 |
| Neil         | Gaiman         |   325.6667 |
| Dave         | Eggers         |   431.0000 |
| Michael      | Chabon         |   634.0000 |
| Patti        | Smith          |   304.0000 |
| Raymond      | Carver         |   351.0000 |
| Don          | DeLillo        |   320.0000 |
| John         | Steinbeck      |   181.0000 |
| David        | Foster Wallace |   336.0000 |
| Dan          | Harris         |   256.0000 |
| Freida       | Harris         |   428.0000 |
| George       | Saunders       |   367.0000 |
+--------------+----------------+------------+
12 rows in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1054 (42S22): Unknown column 'books' in 'field list'
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------------+
| SUM(title) |
+------------+
|         10 |
+------------+
1 row in set, 19 warnings (0.02 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1054 (42S22): Unknown column 'release_year' in 'group statement'
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
|      17 | 10% Happier                                         | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
19 rows in set (0.00 sec)

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
|      17 | 10% Happier                                         | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                           | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                                | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------------+
| SUM(title) |
+------------+
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|          0 |
|         10 |
|          0 |
+------------+
16 rows in set, 19 warnings (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SUM(title) FROM books GROUP BY(released_year)' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(*) FROM books GROUP BY released_year' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'count(*) FROM books GROUP BY released_year' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+---------------+----------+
| released_year | count(*) |
+---------------+----------+
|          2003 |        2 |
|          2016 |        1 |
|          2001 |        3 |
|          1996 |        1 |
|          2012 |        1 |
|          2013 |        1 |
|          2000 |        1 |
|          2010 |        1 |
|          1981 |        1 |
|          1989 |        1 |
|          1985 |        1 |
|          1945 |        1 |
|          2004 |        1 |
|          2005 |        1 |
|          2014 |        1 |
|          2017 |        1 |
+---------------+----------+
16 rows in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'books' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+---------------------+
| SUM(stock_quantity) |
+---------------------+
|                2450 |
+---------------------+
1 row in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR
SELECT author_fname, author_lna' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR
SELECT author_fname, author_lna' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR
SELECT author_fname, author_lna' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR
SELECT author_fname, author_lna' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR
SELECT author_fname, author_lna' at line 1
mysql>
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR




SELECT author_fname, author' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR



SELECT author_fname, author_' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+--------------+----------------+--------------------+
| author_fname | author_lname   | AVG(released_year) |
+--------------+----------------+--------------------+
| Jhumpa       | Lahiri         |          1999.5000 |
| Neil         | Gaiman         |          2006.6667 |
| Dave         | Eggers         |          2008.6667 |
| Michael      | Chabon         |          2000.0000 |
| Patti        | Smith          |          2010.0000 |
| Raymond      | Carver         |          1985.0000 |
| Don          | DeLillo        |          1985.0000 |
| John         | Steinbeck      |          1945.0000 |
| David        | Foster Wallace |          2004.5000 |
| Dan          | Harris         |          2014.0000 |
| Freida       | Harris         |          2001.0000 |
| George       | Saunders       |          2017.0000 |
+--------------+----------------+--------------------+
12 rows in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--FIND THE AVERAGE RELEASED YEAR FOR EACH AUTHOR



SELECT author_fname, author_' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+--------------+----------------+--------------------+
| author_fname | author_lname   | AVG(released_year) |
+--------------+----------------+--------------------+
| Jhumpa       | Lahiri         |          1999.5000 |
| Neil         | Gaiman         |          2006.6667 |
| Dave         | Eggers         |          2008.6667 |
| Michael      | Chabon         |          2000.0000 |
| Patti        | Smith          |          2010.0000 |
| Raymond      | Carver         |          1985.0000 |
| Don          | DeLillo        |          1985.0000 |
| John         | Steinbeck      |          1945.0000 |
| David        | Foster Wallace |          2004.5000 |
| Dan          | Harris         |          2014.0000 |
| Freida       | Harris         |          2001.0000 |
| George       | Saunders       |          2017.0000 |
+--------------+----------------+--------------------+
12 rows in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Find the full name of the author who wrote the longest book
SELECT MAX(pages) ' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Find the full name of the author who wrote the longest book

SELECT MAX(pages)' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------------+
| MAX(pages) |
+------------+
|        634 |
+------------+
1 row in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Find the full name of the author who wrote the longest book

 SELECT CONCAT(au' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+-----------------------------------------+
| CONCAT(author_fname, ' ', author_lname) |
+-----------------------------------------+
| Michael Chabon                          |
+-----------------------------------------+
1 row in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Find the full name of the author who wrote the longest book



SELECT ' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------------------------------------------+
| CONCAT (author_fname, ' ', author_lname) |
+------------------------------------------+
| Michael Chabon                           |
+------------------------------------------+
1 row in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Find the full name of the author who wrote the longest book





     ' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------------------------------------------+
| CONCAT (author_fname, ' ', author_lname) |
+------------------------------------------+
| Michael Chabon                           |
| Raymond Carver                           |
| Dave Eggers                              |
| Neil Gaiman                              |
| Dave Eggers                              |
| Freida Harris                            |
| George Saunders                          |
| Dave Eggers                              |
| David Foster Wallace                     |
| David Foster Wallace                     |
| Don DeLillo                              |
| Neil Gaiman                              |
| Patti Smith                              |
| Jhumpa Lahiri                            |
| Dan Harris                               |
| Neil Gaiman                              |
| Jhumpa Lahiri                            |
| John Steinbeck                           |
| Raymond Carver                           |
+------------------------------------------+
19 rows in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------------------------------------------+
| CONCAT (author_fname, ' ', author_lname) |
+------------------------------------------+
| Michael Chabon                           |
+------------------------------------------+
1 row in set (0.00 sec)

mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '--Find the full name of the author who wrote the longest book





     ' at line 1
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) AS '# books',
 AVG(pages) AS 'avg pages'
 FROM  books
 GROUP BY release_year' at line 2
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) AS '# books',
 AVG(pages) AS 'avg pages'
 FROM  books
 GROUP BY released_yea' at line 2
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) AS '# books',
 AVG(pages) AS 'avg pages'
 FROM  books
 GROUP BY released_yea' at line 2
mysql> SOURCE 10_The_Magic_of_aggregate_funtions/exercises.sql;
+------+---------+-----------+
| year | # books | avg pages |
+------+---------+-----------+
| 2003 |       2 |  249.5000 |
| 2016 |       1 |  304.0000 |
| 2001 |       3 |  443.3333 |
| 1996 |       1 |  198.0000 |
| 2012 |       1 |  352.0000 |
| 2013 |       1 |  504.0000 |
| 2000 |       1 |  634.0000 |
| 2010 |       1 |  304.0000 |
| 1981 |       1 |  176.0000 |
| 1989 |       1 |  526.0000 |
| 1985 |       1 |  320.0000 |
| 1945 |       1 |  181.0000 |
| 2004 |       1 |  329.0000 |
| 2005 |       1 |  343.0000 |
| 2014 |       1 |  256.0000 |
| 2017 |       1 |  367.0000 |
+------+---------+-----------+
16 rows in set (0.00 sec)

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
mysql>
mysql>










