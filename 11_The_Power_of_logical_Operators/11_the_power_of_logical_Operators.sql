mysql>
mysql>
mysql> SELECT title, released_year FROM books WHERE released_year = 2017;
ERROR 1146 (42S02): Table 'new_testing_db.books' doesn't exist
mysql> SHOW DATEBASES;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATEBASES' at line 1
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| book_shop          |
| cat_app            |
| information_schema |
| mysql              |
| new_testing_db     |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
9 rows in set (0.03 sec)

mysql> USE book_shop;
Database changed
mysql> SELECT title, released_year FROM books WHERE released_year = 2017;
+----------------------+---------------+
| title                | released_year |
+----------------------+---------------+
| Lincoln In The Bardo |          2017 |
+----------------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT title, released_year FROM books WHERE released_year != 2017;
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
+-----------------------------------------------------+---------------+
18 rows in set (0.00 sec)

mysql> SELECT title, author_lname FROM books;
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

mysql> SELECT author_lname FROM books WHERE author_lname = 'Harris';
+--------------+
| author_lname |
+--------------+
| Harris       |
| Harris       |
+--------------+
2 rows in set (0.00 sec)

mysql> SELECT author_lname FROM books WHERE author_lname != 'Harris';
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
| Saunders       |
+----------------+
17 rows in set (0.00 sec)

mysql> SELECT title,author_lname FROM books WHERE author_lname != 'Harris';
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
| Lincoln In The Bardo                                | Saunders       |
+-----------------------------------------------------+----------------+
17 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE 'w';
Empty set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%w%';
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| A Heartbreaking Work of Staggering Genius           |
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
| Cannery Row                                         |
+-----------------------------------------------------+
5 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE 'w%';
+-----------------------------------------------------+
| title                                               |
+-----------------------------------------------------+
| What We Talk About When We Talk About Love: Stories |
| Where I'm Calling From: Selected Stories            |
| White Noise                                         |
+-----------------------------------------------------+
3 rows in set (0.00 sec)

mysql> SELECT title FROM books WHERE title LIKE '%w';
+-------------+
| title       |
+-------------+
| Cannery Row |
+-------------+
1 row in set (0.00 sec)

mysql> select books with titles that dont start with 'W';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'with titles that dont start with 'W'' at line 1
mysql> ^C
mysql> select books with titles that dont start with 'W';^C
mysql> SELECT title FROM books WHERE title LIKE != 'w%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '!= 'w%'' at line 1
mysql> SELECT title FROM books WHERE title NOT LIKE = 'w%';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '= 'w%'' at line 1
mysql> SELECT title FROM books WHERE title NOT LIKE 'w%';
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
| Cannery Row                               |
| Oblivion: Stories                         |
| Consider the Lobster                      |
| 10% Happier                               |
| fake_book                                 |
| Lincoln In The Bardo                      |
+-------------------------------------------+
16 rows in set (0.02 sec)

mysql> SLECT * FROM books WHERE released_year > 2000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SLECT * FROM books WHERE released_year > 2000' at line 1
mysql> SELECT * FROM books WHERE released_year > 2000;
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                              | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                           | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                             | Neil         | Gaiman         |          2001 |             12 |   465 |
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers         |          2013 |             26 |   504 |
|       8 | Just Kids                                 | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                  | Neil         | Gaiman         |          2003 |            100 |   208 |
|      15 | Oblivion: Stories                         | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                      | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                               | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                 | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                      | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
13 rows in set (0.00 sec)

mysql> SELECT * FROM books WHERE released_year < 2000;
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri       |          1996 |             97 |   198 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver       |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver       |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo      |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck    |          1945 |             95 |   181 |
+---------+-----------------------------------------------------+--------------+--------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> greater then or equal to ^C
mysql> SELECT * FROM books WHERE released_year >= 2000;
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                              | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                           | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                             | Neil         | Gaiman         |          2001 |             12 |   465 |
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                 | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                  | Neil         | Gaiman         |          2003 |            100 |   208 |
|      15 | Oblivion: Stories                         | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                      | David        | Foster Wallace |          2005 |             92 |   343 |
|      17 | 10% Happier                               | Dan          | Harris         |          2014 |             29 |   256 |
|      18 | fake_book                                 | Freida       | Harris         |          2001 |            287 |   428 |
|      19 | Lincoln In The Bardo                      | George       | Saunders       |          2017 |           1000 |   367 |
+---------+-------------------------------------------+--------------+----------------+---------------+----------------+-------+
14 rows in set (0.00 sec)

mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity >= 100;
+-------------------------------------------+----------------+
| title                                     | stock_quantity |
+-------------------------------------------+----------------+
| A Hologram for the King: A Novel          |            154 |
| A Heartbreaking Work of Staggering Genius |            104 |
| Coraline                                  |            100 |
| Oblivion: Stories                         |            172 |
| fake_book                                 |            287 |
| Lincoln In The Bardo                      |           1000 |
+-------------------------------------------+----------------+
6 rows in set (0.00 sec)

mysql> SELECT 99 > 1;
+--------+
| 99 > 1 |
+--------+
|      1 |
+--------+
1 row in set (0.00 sec)

mysql> in the above command or code, output resembles the boolean value for false,
    -> true******** (not false)
    -> since 99 is greater the 1 it gives 1.
    -> ^C
mysql> SELECT 99 < 1;
+--------+
| 99 < 1 |
+--------+
|      0 |
+--------+
1 row in set (0.00 sec)

mysql> which is false^C
mysql>
mysql>
mysql> SELECT 100 > 5;
+---------+
| 100 > 5 |
+---------+
|       1 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT -15 > 15;
+----------+
| -15 > 15 |
+----------+
|        0 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT 9 > -10;
+---------+
| 9 > -10 |
+---------+
|       1 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT 'a' > 'b';
+-----------+
| 'a' > 'b' |
+-----------+
|         0 |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT 'A' > 'a';
+-----------+
| 'A' > 'a' |
+-----------+
|         0 |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT 1 > 1;
+-------+
| 1 > 1 |
+-------+
|     0 |
+-------+
1 row in set (0.00 sec)

mysql> SELECT 1 >= 1;
+--------+
| 1 >= 1 |
+--------+
|      1 |
+--------+
1 row in set (0.00 sec)

mysql> SELECT 'A' >= 'a';
+------------+
| 'A' >= 'a' |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT 'A' <= 'a';
+------------+
| 'A' <= 'a' |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT 'A' = 'a';
+-----------+
| 'A' = 'a' |
+-----------+
|         1 |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT author_lname FROM books WHERE author_lname = 'Eggers';
+--------------+
| author_lname |
+--------------+
| Eggers       |
| Eggers       |
| Eggers       |
+--------------+
3 rows in set (0.00 sec)

mysql> SELECT title,author_lname FROM books WHERE author_lname = 'eggers';
+-------------------------------------------+--------------+
| title                                     | author_lname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Eggers       |
| The Circle                                | Eggers       |
| A Heartbreaking Work of Staggering Genius | Eggers       |
+-------------------------------------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books WHERE released_year < 2000 ORDER BY released_year;
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

mysql> SELECT title, released_year FROM books WHERE released_year <= 2000 ORDER_BY released_year;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER_BY released_year' at line 1
mysql> SELECT title, released_year FROM books WHERE released_year <= 2000 ORDER BY released_year;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| Cannery Row                                         |          1945 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| White Noise                                         |          1985 |
| Where I'm Calling From: Selected Stories            |          1989 |
| Interpreter of Maladies                             |          1996 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
+-----------------------------------------------------+---------------+
6 rows in set (0.00 sec)

mysql> SLELECT 3 < -10;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SLELECT 3 < -10' at line 1
mysql> SELECT 3 < -10;
+---------+
| 3 < -10 |
+---------+
|       0 |
+---------+
1 row in set (0.00 sec)

mysql> SELECT -10 < -9;
+----------+
| -10 < -9 |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT 42 <= 42;
+----------+
| 42 <= 42 |
+----------+
|        1 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT 'h' < 'p';
+-----------+
| 'h' < 'p' |
+-----------+
|         1 |
+-----------+
1 row in set (0.00 sec)

mysql> SELECT 'Q' <= 'q';
+------------+
| 'Q' <= 'q' |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)

mysql> SELECT 'Q' = 'q';
+-----------+
| 'Q' = 'q' |
+-----------+
|         1 |
+-----------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> SELECT * FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
2 rows in set, 1 warning (0.00 sec)

mysql> SELECT * FROM books WHERE author_lname = 'Eggers'AND released_year > 2010;
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM books WHERE author_lname = 'Eggers' &  released_year > 2010;
Empty set, 38 warnings (0.02 sec)

mysql> SELECT * FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
2 rows in set, 1 warning (0.00 sec)

mysql>  SELECT * FROM books WHERE author_lname = 'Eggers';
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                                     | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel          | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                                | Dave         | Eggers       |          2013 |             26 |   504 |
|       9 | A Heartbreaking Work of Staggering Genius | Dave         | Eggers       |          2001 |            104 |   437 |
+---------+-------------------------------------------+--------------+--------------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql>  SELECT * FROM books WHERE released_year > 2010;
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       2 | Norse Mythology                  | Neil         | Gaiman       |          2016 |             43 |   304 |
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
|      17 | 10% Happier                      | Dan          | Harris       |          2014 |             29 |   256 |
|      19 | Lincoln In The Bardo             | George       | Saunders     |          2017 |           1000 |   367 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql>  SELECT * FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
| book_id | title                            | author_fname | author_lname | released_year | stock_quantity | pages |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
|       5 | A Hologram for the King: A Novel | Dave         | Eggers       |          2012 |            154 |   352 |
|       6 | The Circle                       | Dave         | Eggers       |          2013 |             26 |   504 |
+---------+----------------------------------+--------------+--------------+---------------+----------------+-------+
2 rows in set, 1 warning (0.00 sec)

mysql>  SELECT title, author_name FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
ERROR 1054 (42S22): Unknown column 'author_name' in 'field list'
mysql>  SELECT title, author_lname FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
+----------------------------------+--------------+
| title                            | author_lname |
+----------------------------------+--------------+
| A Hologram for the King: A Novel | Eggers       |
| The Circle                       | Eggers       |
+----------------------------------+--------------+
2 rows in set, 1 warning (0.00 sec)

mysql>  SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' && released_year > 2010;
+----------------------------------+--------------+---------------+
| title                            | author_lname | released_year |
+----------------------------------+--------------+---------------+
| A Hologram for the King: A Novel | Eggers       |          2012 |
| The Circle                       | Eggers       |          2013 |
+----------------------------------+--------------+---------------+
2 rows in set, 1 warning (0.00 sec)

mysql> use case:
ERROR 1049 (42000): Unknown database 'case:'
mysql> one exmple for the use case is: in a website u may want to show the brand called "logo" if its in stock
    -> else u dont want to show it
    -> SELECT * FROM products WHERE brand = 'logo' AND instock = 'true';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'one exmple for the use case is: in a website u may want to show the brand called' at line 1
mysql>
mysql>
mysql>
mysql> one exmple for the use case is: in a website u may want to show the brand called "logo" if its in stock
    ->     -> else u dont want to show it
    ->     -> SELECT * FROM products WHERE brand = 'logo' AND instock = 'true';^C
mysql>
mysql>
mysql>
mysql> SELECT -10 > -20 && 0 <= 0;
+---------------------+
| -10 > -20 && 0 <= 0 |
+---------------------+
|                   1 |
+---------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT -40 <= 0 AND 10 > 40;
+----------------------+
| -40 <= 0 AND 10 > 40 |
+----------------------+
|                    0 |
+----------------------+
1 row in set (0.00 sec)

mysql> SELECT 54 <= 54 && 'a' = 'A';
+-----------------------+
| 54 <= 54 && 'a' = 'A' |
+-----------------------+
|                     1 |
+-----------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT 1 < 5 && 7 = 9;
+----------------+
| 1 < 5 && 7 = 9 |
+----------------+
|              0 |
+----------------+
1 row in set, 1 warning (0.00 sec)

mysql>  SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' && released_year > 2010
    -> AND title LIKE '%novel%';
+----------------------------------+--------------+---------------+
| title                            | author_lname | released_year |
+----------------------------------+--------------+---------------+
| A Hologram for the King: A Novel | Eggers       |          2012 |
+----------------------------------+--------------+---------------+
1 row in set, 1 warning (0.00 sec)

mysql>  SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' || released_year > 2010
    -> ^C
mysql>  SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' || released_year > 2010;
+-------------------------------------------+--------------+---------------+
| title                                     | author_lname | released_year |
+-------------------------------------------+--------------+---------------+
| Norse Mythology                           | Gaiman       |          2016 |
| A Hologram for the King: A Novel          | Eggers       |          2012 |
| The Circle                                | Eggers       |          2013 |
| A Heartbreaking Work of Staggering Genius | Eggers       |          2001 |
| 10% Happier                               | Harris       |          2014 |
| Lincoln In The Bardo                      | Saunders     |          2017 |
+-------------------------------------------+--------------+---------------+
6 rows in set, 1 warning (0.00 sec)

mysql> SELECT 40 <= 100 || -2 > 0;\
+---------------------+
| 40 <= 100 || -2 > 0 |
+---------------------+
|                   1 |
+---------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT 10 > 5 || 5 = 5;
+-----------------+
| 10 > 5 || 5 = 5 |
+-----------------+
|               1 |
+-----------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT 'a' = 5 || 3000 > 2000;
+------------------------+
| 'a' = 5 || 3000 > 2000 |
+------------------------+
|                      1 |
+------------------------+
1 row in set, 2 warnings (0.00 sec)

mysql>  SELECT title, author_lname, released_year, stock_quantity FROM books
    ->  WHERE author_lname = 'Eggers' ||
    ->  released_year > 2010 OR
    -> stock_quantity > 100;
+-------------------------------------------+----------------+---------------+----------------+
| title                                     | author_lname   | released_year | stock_quantity |
+-------------------------------------------+----------------+---------------+----------------+
| Norse Mythology                           | Gaiman         |          2016 |             43 |
| A Hologram for the King: A Novel          | Eggers         |          2012 |            154 |
| The Circle                                | Eggers         |          2013 |             26 |
| A Heartbreaking Work of Staggering Genius | Eggers         |          2001 |            104 |
| Oblivion: Stories                         | Foster Wallace |          2004 |            172 |
| 10% Happier                               | Harris         |          2014 |             29 |
| fake_book                                 | Harris         |          2001 |            287 |
| Lincoln In The Bardo                      | Saunders       |          2017 |           1000 |
+-------------------------------------------+----------------+---------------+----------------+
8 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, released_year FROM
    -> books WHERE released_year <= 2004 &&
    -> released_year <= 2015;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Oblivion: Stories                                   |          2004 |
| fake_book                                           |          2001 |
+-----------------------------------------------------+---------------+
12 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, released_year FROM
    ->  books WHERE released_year >= 2004 &&
    -> released_year <= 2015;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| A Hologram for the King: A Novel |          2012 |
| The Circle                       |          2013 |
| Just Kids                        |          2010 |
| Oblivion: Stories                |          2004 |
| Consider the Lobster             |          2005 |
| 10% Happier                      |          2014 |
+----------------------------------+---------------+
6 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| A Hologram for the King: A Novel |          2012 |
| The Circle                       |          2013 |
| Just Kids                        |          2010 |
| Oblivion: Stories                |          2004 |
| Consider the Lobster             |          2005 |
| 10% Happier                      |          2014 |
+----------------------------------+---------------+
6 rows in set (0.02 sec)

mysql> SELECT title, released_year FROM books WHERE released_year BETWEEN 2004 AND 2015;
+----------------------------------+---------------+
| title                            | released_year |
+----------------------------------+---------------+
| A Hologram for the King: A Novel |          2012 |
| The Circle                       |          2013 |
| Just Kids                        |          2010 |
| Oblivion: Stories                |          2004 |
| Consider the Lobster             |          2005 |
| 10% Happier                      |          2014 |
+----------------------------------+---------------+
6 rows in set (0.00 sec)

mysql> ELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 && 2015;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 && 20' at line 1
mysql> SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 && 2015;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '&& 2015' at line 1
mysql> SELECT title, released_year FROM books WHERE released_year NOT BETWEEN 2004 AND 2015;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| Norse Mythology                                     |          2016 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| The Amazing Adventures of Kavalier & Clay           |          2000 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| fake_book                                           |          2001 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
13 rows in set (0.00 sec)

mysql>
mysql>
mysql> casting dates:
    -> ^C
mysql>
mysql> SELECT CAST('2017-05-02' AS DATETIME);
+--------------------------------+
| CAST('2017-05-02' AS DATETIME) |
+--------------------------------+
| 2017-05-02 00:00:00            |
+--------------------------------+
1 row in set (0.00 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| book_shop          |
| cat_app            |
| information_schema |
| mysql              |
| new_testing_db     |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
9 rows in set (0.00 sec)

mysql> USE new_testing_db;
Database changed
mysql> SELECT name, birthdt FROM people WHERE birhtdt  BETWEEN '1980-01-01' AND '2000-01-01';
ERROR 1054 (42S22): Unknown column 'birhtdt' in 'where clause'
mysql> SELECT name, birthdt FROM people
    -> WHERE birhtdt  BETWEEN '1980-01-01' AND '2000-01-01';
ERROR 1054 (42S22): Unknown column 'birhtdt' in 'where clause'
mysql>
mysql> SELECT name, birthdt FROM people
    -> WHERE birthdt  BETWEEN '1980-01-01' AND '2000-01-01';
Empty set (0.00 sec)

mysql> SELECT birthdt FROM people;
+---------------------+
| birthdt             |
+---------------------+
| 2001-12-30 10:07:35 |
| 2002-12-30 10:00:05 |
| 2022-01-01 19:12:43 |
+---------------------+
3 rows in set (0.00 sec)

mysql> WHERE birthdt  BETWEEN '2001-12-30' AND '2022-01-01';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE birthdt  BETWEEN '2001-12-30' AND '2022-01-01'' at line 1
mysql>
mysql>
mysql> SELECT name, birthdt FROM people
    -> WHERE birthdt  BETWEEN '2001-12-30' AND '2022-01-01';
+--------+---------------------+
| name   | birthdt             |
+--------+---------------------+
| Surya  | 2001-12-30 10:07:35 |
| Soorya | 2002-12-30 10:00:05 |
+--------+---------------------+
2 rows in set (0.00 sec)

mysql> SELECT name, birthdt FROM people
    -> WHERE birthdt BETWEEN CAST('2001-12-30' AS DATETIME)
    -> AND CAST('2022-01-01' AS DATETIME);
+--------+---------------------+
| name   | birthdt             |
+--------+---------------------+
| Surya  | 2001-12-30 10:07:35 |
| Soorya | 2002-12-30 10:00:05 |
+--------+---------------------+
2 rows in set (0.00 sec)

mysql>

mysql>
mysql>
mysql>
mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname = 'Carcer' OR
    -> ^C
mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname = 'Carver' OR
    -> author_lname = 'Lahiri' OR
    -> author_lname = 'Smith';
ERROR 1146 (42S02): Table 'new_testing_db.books' doesn't exist
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| book_shop          |
| cat_app            |
| information_schema |
| mysql              |
| new_testing_db     |
| people             |
| performance_schema |
| shirts_db          |
| sys                |
+--------------------+
9 rows in set (0.02 sec)

mysql> cd book_shop;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'cd book_shop' at line 1
mysql> USE book_shop;
Database changed
mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname = 'Carver' OR
    -> author_lname = 'Lahiri' OR
    -> author_lname = 'Smith';
+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Namesake                                        | Lahiri       |
| Interpreter of Maladies                             | Lahiri       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where I'm Calling From: Selected Stories            | Carver       |
+-----------------------------------------------------+--------------+
5 rows in set (0.00 sec)

mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname IN ('Carver','Lahiri', 'Smith');
+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Namesake                                        | Lahiri       |
| Interpreter of Maladies                             | Lahiri       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where I'm Calling From: Selected Stories            | Carver       |
+-----------------------------------------------------+--------------+
5 rows in set (0.02 sec)

mysql>  SELECT title, released_year FROM books
    -> WHERE released_year IN ('2017', '1986');
+----------------------+---------------+
| title                | released_year |
+----------------------+---------------+
| Lincoln In The Bardo |          2017 |
+----------------------+---------------+
1 row in set (0.00 sec)

mysql> WHERE released_year IN ('2017', '1985');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE released_year IN ('2017', '1985')' at line 1
mysql> ELECT title, released_year FROM books
    ->  WHERE released_year IN ('2017', '1985');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ELECT title, released_year FROM books
 WHERE released_year IN ('2017', '1985')' at line 1
mysql>
mysql>
mysql>  SELECT title, released_year FROM books
    -> WHERE released_year IN ('2017', '1986');
+----------------------+---------------+
| title                | released_year |
+----------------------+---------------+
| Lincoln In The Bardo |          2017 |
+----------------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016');
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| The Circle                                          |          2013 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Consider the Lobster                                |          2005 |
| fake_book                                           |          2001 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
13 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books
    ->  WHERE released_year != '2000' &&
    -> released_year != '2002' &&
    -> released_year != '2004' &&
    -> released_year != '2006' &&
    ->
    -> ^C
mysql> SELECT title, released_year FROM books
    ->
    -> ^C
mysql>  SELECT title, released_year FROM books
    ->  WHERE released_year != '2000' &&
    ->
    -> ^C
mysql> SELECT title, released_year FROM books
    ->  WHERE released_year != '2000' &&
    ->  released_year != '2002' &&
    ->  released_year != '2004' &&
    -> released_year != '2006' &&
    -> released_year != '2008' &&
    -> released_year != '2010' &&
    -> released_year != '2012' &&
    -> released_year != '2014' &&
    -> released_year != '2016' &&
    -> released_year != '2018' &&
    -> released_year != '2020');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 12
mysql> SELECT title, released_year FROM books
    ->  WHERE released_year != '2000' &&
    ->  released_year != '2002' &&
    ->  released_year != '2004' &&
    -> released_year != '2006' &&
    ->  released_year != '2008' &&
    -> released_year != '2010' &&
    -> released_year != '2012' &&
    -> released_year != '2014' &&
    -> released_year != '2016' &&
    -> released_year != '2018';
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| American Gods                                       |          2001 |
| Interpreter of Maladies                             |          1996 |
| The Circle                                          |          2013 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Consider the Lobster                                |          2005 |
| fake_book                                           |          2001 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
13 rows in set, 9 warnings (0.00 sec)

mysql>  SELECT title, released_year FROM books
    -> WHERE released_year >= 2000 AND  NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016')' at line 2
mysql> WHERE released_year >= 2000 AND  NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016'^C
mysql>
mysql>
mysql> SELECT title, released_year FROM books
    ->  WHERE released_year >= 2000 AND released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016');
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| The Namesake                              |          2003 |
| American Gods                             |          2001 |
| The Circle                                |          2013 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| Coraline                                  |          2003 |
| Consider the Lobster                      |          2005 |
| fake_book                                 |          2001 |
| Lincoln In The Bardo                      |          2017 |
+-------------------------------------------+---------------+
8 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE released_year >= 2000 AND
    -> released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016) ORDER BY DESC;
    '> ^C
mysql>  SELECT title, released_year FROM books
    ->  WHERE released_year >= 2000 AND
    -> released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016) DESC;
    '> ^C
mysql> SELECT title, released_year FROM books
    -> WHERE released_year >= 2000 AND
    ->
    -> released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016)  ORDER BY released_year;
    '> ^C
mysql>
mysql>
mysql>
mysql>  SELECT title, released_year FROM books
    -> WHERE released_year >= 2000 AND
    ->  released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016') ORDER BY DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DESC' at line 3
mysql> SELECT title, released_year FROM books
    -> WHERE released_year >= 2000 AND
    -> released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016') DESC;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DESC' at line 3
mysql> SELECT title, released_year FROM books
    -> WHERE released_year >= 2000 AND
    -> released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016') ORDER BY released_year;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| American Gods                             |          2001 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
| The Namesake                              |          2003 |
| Coraline                                  |          2003 |
| Consider the Lobster                      |          2005 |
| The Circle                                |          2013 |
| Lincoln In The Bardo                      |          2017 |
+-------------------------------------------+---------------+
8 rows in set (0.00 sec)

mysql>  SELECT title, released_year FROM books
    ->  WHERE released_year >= 2000 AND
    -> released_year NOT IN ('2000', '2002', '2004', '2006', '2008','2010','2012','2014','2016') ORDER BY released_year DESC;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| Lincoln In The Bardo                      |          2017 |
| The Circle                                |          2013 |
| Consider the Lobster                      |          2005 |
| The Namesake                              |          2003 |
| Coraline                                  |          2003 |
| American Gods                             |          2001 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
+-------------------------------------------+---------------+
8 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE released_year % 2 = 0;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| Norse Mythology                           |          2016 |
| Interpreter of Maladies                   |          1996 |
| A Hologram for the King: A Novel          |          2012 |
| The Amazing Adventures of Kavalier & Clay |          2000 |
| Just Kids                                 |          2010 |
| Oblivion: Stories                         |          2004 |
| 10% Happier                               |          2014 |
+-------------------------------------------+---------------+
7 rows in set (0.02 sec)

mysql> SELECT title, released_year FROM books
    ->  WHERE released_year % 2 != 0;
+-----------------------------------------------------+---------------+
| title                                               | released_year |
+-----------------------------------------------------+---------------+
| The Namesake                                        |          2003 |
| American Gods                                       |          2001 |
| The Circle                                          |          2013 |
| A Heartbreaking Work of Staggering Genius           |          2001 |
| Coraline                                            |          2003 |
| What We Talk About When We Talk About Love: Stories |          1981 |
| Where I'm Calling From: Selected Stories            |          1989 |
| White Noise                                         |          1985 |
| Cannery Row                                         |          1945 |
| Consider the Lobster                                |          2005 |
| fake_book                                           |          2001 |
| Lincoln In The Bardo                                |          2017 |
+-----------------------------------------------------+---------------+
12 rows in set (0.00 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE released_year % 2 = 0 &&
    -> released_year >= 2000;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| Norse Mythology                           |          2016 |
| A Hologram for the King: A Novel          |          2012 |
| The Amazing Adventures of Kavalier & Clay |          2000 |
| Just Kids                                 |          2010 |
| Oblivion: Stories                         |          2004 |
| 10% Happier                               |          2014 |
+-------------------------------------------+---------------+
6 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE released_year % 2 = 0 &&
    -> released_year >= 2000 ORDER BY relased_year;
ERROR 1054 (42S22): Unknown column 'relased_year' in 'order clause'
mysql> SELECT title, released_year FROM books
    -> WHERE released_year % 2 = 0 &&
    -> released_year >= 2000 ORDER BY released_year;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| The Amazing Adventures of Kavalier & Clay |          2000 |
| Oblivion: Stories                         |          2004 |
| Just Kids                                 |          2010 |
| A Hologram for the King: A Novel          |          2012 |
| 10% Happier                               |          2014 |
| Norse Mythology                           |          2016 |
+-------------------------------------------+---------------+
6 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE released_year % 2 != 0
    -> AND released_year >= 2000 ORDER BY released_year;
+-------------------------------------------+---------------+
| title                                     | released_year |
+-------------------------------------------+---------------+
| American Gods                             |          2001 |
| A Heartbreaking Work of Staggering Genius |          2001 |
| fake_book                                 |          2001 |
| The Namesake                              |          2003 |
| Coraline                                  |          2003 |
| Consider the Lobster                      |          2005 |
| The Circle                                |          2013 |
| Lincoln In The Bardo                      |          2017 |
+-------------------------------------------+---------------+
8 rows in set (0.00 sec)

mysql> SELECT title, released_year,
    -> CASE
    ->   WHEN released_year >= 2000 THEN 'Modern Lit'
    -> ELSE '20th Century Lit'
    -> END AS GENRE
    -> FROM books;
+-----------------------------------------------------+---------------+------------------+
| title                                               | released_year | GENRE            |
+-----------------------------------------------------+---------------+------------------+
| The Namesake                                        |          2003 | Modern Lit       |
| Norse Mythology                                     |          2016 | Modern Lit       |
| American Gods                                       |          2001 | Modern Lit       |
| Interpreter of Maladies                             |          1996 | 20th Century Lit |
| A Hologram for the King: A Novel                    |          2012 | Modern Lit       |
| The Circle                                          |          2013 | Modern Lit       |
| The Amazing Adventures of Kavalier & Clay           |          2000 | Modern Lit       |
| Just Kids                                           |          2010 | Modern Lit       |
| A Heartbreaking Work of Staggering Genius           |          2001 | Modern Lit       |
| Coraline                                            |          2003 | Modern Lit       |
| What We Talk About When We Talk About Love: Stories |          1981 | 20th Century Lit |
| Where I'm Calling From: Selected Stories            |          1989 | 20th Century Lit |
| White Noise                                         |          1985 | 20th Century Lit |
| Cannery Row                                         |          1945 | 20th Century Lit |
| Oblivion: Stories                                   |          2004 | Modern Lit       |
| Consider the Lobster                                |          2005 | Modern Lit       |
| 10% Happier                                         |          2014 | Modern Lit       |
| fake_book                                           |          2001 | Modern Lit       |
| Lincoln In The Bardo                                |          2017 | Modern Lit       |
+-----------------------------------------------------+---------------+------------------+
19 rows in set (0.02 sec)

mysql> SELECT title, released_year FROM books
    -> WHERE
    -> ^C
mysql> SELECT title, released_year
    ->   CASE
    ->    WHEN released_year >= 2000 THEN 'Modern Lit'
    ->  ELSE '20th Century Lit'
    -> END AS GENRE
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CASE
   WHEN released_year >= 2000 THEN 'Modern Lit'
 ELSE '20th Century Lit'
E' at line 2
mysql> SELECT title, released_year,
    -> CASE
    -> WHEN released_year >= 2000 THEN 'Modern Lit'
    -> ELSE '20th Century Lit'
    -> END AS GENRE;
ERROR 1054 (42S22): Unknown column 'title' in 'field list'
mysql> SELECT title, released_year,
    -> CASE
    -> WHEN released_year >= 2000 THEN 'Modern Lit'
    ->  ELSE '20th Century Lit'
    -> ND AS GENRE
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ND AS GENRE
FROM books' at line 5
mysql> SELECT title, released_year,
    ->
    ->
    -> CASE
    -> WHEN released_year >= 2000 THEN 'Modern Lit'
    ->  ELSE '20th Century Lit'
    -> END AS GENRE
    -> FROM books;
+-----------------------------------------------------+---------------+------------------+
| title                                               | released_year | GENRE            |
+-----------------------------------------------------+---------------+------------------+
| The Namesake                                        |          2003 | Modern Lit       |
| Norse Mythology                                     |          2016 | Modern Lit       |
| American Gods                                       |          2001 | Modern Lit       |
| Interpreter of Maladies                             |          1996 | 20th Century Lit |
| A Hologram for the King: A Novel                    |          2012 | Modern Lit       |
| The Circle                                          |          2013 | Modern Lit       |
| The Amazing Adventures of Kavalier & Clay           |          2000 | Modern Lit       |
| Just Kids                                           |          2010 | Modern Lit       |
| A Heartbreaking Work of Staggering Genius           |          2001 | Modern Lit       |
| Coraline                                            |          2003 | Modern Lit       |
| What We Talk About When We Talk About Love: Stories |          1981 | 20th Century Lit |
| Where I'm Calling From: Selected Stories            |          1989 | 20th Century Lit |
| White Noise                                         |          1985 | 20th Century Lit |
| Cannery Row                                         |          1945 | 20th Century Lit |
| Oblivion: Stories                                   |          2004 | Modern Lit       |
| Consider the Lobster                                |          2005 | Modern Lit       |
| 10% Happier                                         |          2014 | Modern Lit       |
| fake_book                                           |          2001 | Modern Lit       |
| Lincoln In The Bardo                                |          2017 | Modern Lit       |
+-----------------------------------------------------+---------------+------------------+
19 rows in set (0.02 sec)

mysql> SELECT title, stock_quantity,
    -> CASE
    ->     WHEN stock_quantity BITWEEN 0 AND 50 THEN '*'
    ->     WHEN stock_quantity BITWEEN 51 AND 100 THEN '**'
    ->     ELSE '***'
    -> END AS stock
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BITWEEN 0 AND 50 THEN '*'
    WHEN stock_quantity BITWEEN 51 AND 100 THEN '**'
 ' at line 3
mysql> SELECT title, stock_quantity,
    -> CASE
    -> WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    -> WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    -> ELSE '***'
    -> END AS stock
    -> FROM books;
+-----------------------------------------------------+----------------+-------+
| title                                               | stock_quantity | stock |
+-----------------------------------------------------+----------------+-------+
| The Namesake                                        |             32 | *     |
| Norse Mythology                                     |             43 | *     |
| American Gods                                       |             12 | *     |
| Interpreter of Maladies                             |             97 | **    |
| A Hologram for the King: A Novel                    |            154 | ***   |
| The Circle                                          |             26 | *     |
| The Amazing Adventures of Kavalier & Clay           |             68 | **    |
| Just Kids                                           |             55 | **    |
| A Heartbreaking Work of Staggering Genius           |            104 | ***   |
| Coraline                                            |            100 | **    |
| What We Talk About When We Talk About Love: Stories |             23 | *     |
| Where I'm Calling From: Selected Stories            |             12 | *     |
| White Noise                                         |             49 | *     |
| Cannery Row                                         |             95 | **    |
| Oblivion: Stories                                   |            172 | ***   |
| Consider the Lobster                                |             92 | **    |
| 10% Happier                                         |             29 | *     |
| fake_book                                           |            287 | ***   |
| Lincoln In The Bardo                                |           1000 | ***   |
+-----------------------------------------------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title, stock_quantity,
    ->  CASE
    ->  WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    -> WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    ->  WHEN stock_quantity BITWEEN 51 AND 100 THEN '***'
    -> ELSE '****'
    -> END AS stock
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BITWEEN 51 AND 100 THEN '***'
ELSE '****'
END AS stock
FROM books' at line 5
mysql> SELECT title, stock_quantity,
    -> CASE
    -> WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    -> WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    -> WHEN stock_quantity BITWEEN 101 AND 150 THEN '***'
    -> ELSE '****'
    -> END AS stock
    -> FROM books;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BITWEEN 101 AND 150 THEN '***'
ELSE '****'
END AS stock
FROM books' at line 5
mysql>  SELECT title, stock_quantity,
    -> CASE
    ->
    ->  WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    -> WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    -> WHEN stock_quantity BETWEEN 101 AND 150 THEN '***'
    ->  ELSE '****'
    ->  END AS stock
    -> FROM books;
+-----------------------------------------------------+----------------+-------+
| title                                               | stock_quantity | stock |
+-----------------------------------------------------+----------------+-------+
| The Namesake                                        |             32 | *     |
| Norse Mythology                                     |             43 | *     |
| American Gods                                       |             12 | *     |
| Interpreter of Maladies                             |             97 | **    |
| A Hologram for the King: A Novel                    |            154 | ****  |
| The Circle                                          |             26 | *     |
| The Amazing Adventures of Kavalier & Clay           |             68 | **    |
| Just Kids                                           |             55 | **    |
| A Heartbreaking Work of Staggering Genius           |            104 | ***   |
| Coraline                                            |            100 | **    |
| What We Talk About When We Talk About Love: Stories |             23 | *     |
| Where I'm Calling From: Selected Stories            |             12 | *     |
| White Noise                                         |             49 | *     |
| Cannery Row                                         |             95 | **    |
| Oblivion: Stories                                   |            172 | ****  |
| Consider the Lobster                                |             92 | **    |
| 10% Happier                                         |             29 | *     |
| fake_book                                           |            287 | ****  |
| Lincoln In The Bardo                                |           1000 | ****  |
+-----------------------------------------------------+----------------+-------+
19 rows in set (0.00 sec)

mysql> SELECT title, stock_quantity,
    -> CASE
    ->    WHEN stock_quantity <=50 THEN '*';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql>
mysql>
mysql> SELECT title, stock_quantity,
    ->  CASE
    -> WHEN stock_quantity <=50 THEN '*'
    -> WHEN stock_quantity <= 100 THEN '**'
    -> ELSE '***'
    -> END AS STOCK
    -> FROM books;
+-----------------------------------------------------+----------------+-------+
| title                                               | stock_quantity | STOCK |
+-----------------------------------------------------+----------------+-------+
| The Namesake                                        |             32 | *     |
| Norse Mythology                                     |             43 | *     |
| American Gods                                       |             12 | *     |
| Interpreter of Maladies                             |             97 | **    |
| A Hologram for the King: A Novel                    |            154 | ***   |
| The Circle                                          |             26 | *     |
| The Amazing Adventures of Kavalier & Clay           |             68 | **    |
| Just Kids                                           |             55 | **    |
| A Heartbreaking Work of Staggering Genius           |            104 | ***   |
| Coraline                                            |            100 | **    |
| What We Talk About When We Talk About Love: Stories |             23 | *     |
| Where I'm Calling From: Selected Stories            |             12 | *     |
| White Noise                                         |             49 | *     |
| Cannery Row                                         |             95 | **    |
| Oblivion: Stories                                   |            172 | ***   |
| Consider the Lobster                                |             92 | **    |
| 10% Happier                                         |             29 | *     |
| fake_book                                           |            287 | ***   |
| Lincoln In The Bardo                                |           1000 | ***   |
+-----------------------------------------------------+----------------+-------+
19 rows in set (0.00 sec)

mysql>


mysql>
mysql>
mysql>
mysql>
mysql> exercises
    ->
    ->
    -> ^C
mysql> SELECT 10 != 10;
+----------+
| 10 != 10 |
+----------+
|        0 |
+----------+
1 row in set (0.00 sec)

mysql> SELECT 15 > 14 && 99 - 5 <= 94;
+-------------------------+
| 15 > 14 && 99 - 5 <= 94 |
+-------------------------+
|                       1 |
+-------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
+----------------------------------+
| 1 IN (5,3) || 9 BETWEEN 8 AND 10 |
+----------------------------------+
|                                1 |
+----------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT title FROM books WHERE released_year <= 1980;
+-------------+
| title       |
+-------------+
| Cannery Row |
+-------------+
1 row in set (0.00 sec)

mysql> SELECT title, released_year FROM books WHERE released_year <= 1980;
+-------------+---------------+
| title       | released_year |
+-------------+---------------+
| Cannery Row |          1945 |
+-------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT title, released_year FROM books WHERE released_year < 1980;
+-------------+---------------+
| title       | released_year |
+-------------+---------------+
| Cannery Row |          1945 |
+-------------+---------------+
1 row in set (0.00 sec)

mysql> SELECT title, released_year, author_fname, author_lname FROM books WHERE author_lname = 'Eggers' ||
    -> author_lname = 'Chabon';
+-------------------------------------------+---------------+--------------+--------------+
| title                                     | released_year | author_fname | author_lname |
+-------------------------------------------+---------------+--------------+--------------+
| A Hologram for the King: A Novel          |          2012 | Dave         | Eggers       |
| The Circle                                |          2013 | Dave         | Eggers       |
| The Amazing Adventures of Kavalier & Clay |          2000 | Michael      | Chabon       |
| A Heartbreaking Work of Staggering Genius |          2001 | Dave         | Eggers       |
+-------------------------------------------+---------------+--------------+--------------+
4 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, author_lname FROM books WHERE
    -> author_lname IN ('Eggers','Chabon');
+-------------------------------------------+--------------+
| title                                     | author_lname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Eggers       |
| The Circle                                | Eggers       |
| The Amazing Adventures of Kavalier & Clay | Chabon       |
| A Heartbreaking Work of Staggering Genius | Eggers       |
+-------------------------------------------+--------------+
4 rows in set (0.00 sec)

mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname IN ('Lahiri') && released_year > 2000;
+--------------+--------------+
| title        | author_lname |
+--------------+--------------+
| The Namesake | Lahiri       |
+--------------+--------------+
1 row in set, 1 warning (0.00 sec)

mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname IN ('Lahi^C') && released_year > 2000;
mysql>
mysql>
mysql>  SELECT title,released_year, author_lname FROM books
    -> WHERE author_lname IN ('Lahiri') && released_year > 2000;
+--------------+---------------+--------------+
| title        | released_year | author_lname |
+--------------+---------------+--------------+
| The Namesake |          2003 | Lahiri       |
+--------------+---------------+--------------+
1 row in set, 1 warning (0.00 sec)

mysql>
mysql> ^C
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

mysql> SELECT title, pages FROM books
    -> WHERE pages BETWEEN 100 AND 200;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| Interpreter of Maladies                             |   198 |
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
+-----------------------------------------------------+-------+
3 rows in set (0.00 sec)

mysql> SELECT title, pages FROM books
    -> WHERE pages > 100 && pages < 200;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| Interpreter of Maladies                             |   198 |
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
+-----------------------------------------------------+-------+
3 rows in set, 1 warning (0.00 sec)

mysql> SELECT title, pages FROM books WHERE pages >= 100 && pages <= 200;
+-----------------------------------------------------+-------+
| title                                               | pages |
+-----------------------------------------------------+-------+
| Interpreter of Maladies                             |   198 |
| What We Talk About When We Talk About Love: Stories |   176 |
| Cannery Row                                         |   181 |
+-----------------------------------------------------+-------+
3 rows in set, 1 warning (0.00 sec)

mysql> select all books where author_lname starts with a 'c' or an 's'
    -> ^C
mysql>
mysql> SELECT title, author_lname FROM books
    -> WHERE author_lname LIKE 'c%' || author_lname LIKE 's%';
+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Amazing Adventures of Kavalier & Clay           | Chabon       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where I'm Calling From: Selected Stories            | Carver       |
| Cannery Row                                         | Steinbeck    |
| Lincoln In The Bardo                                | Saunders     |
+-----------------------------------------------------+--------------+
6 rows in set, 1 warning (0.00 sec)

mysql> OR
    -> ^C
mysql>
mysql>
mysql> SELECT title, author_lname FROM books
    -> WHERE SUBSTR(author_lname, 1,1) = 'C' OR
    -> SUBSTR(author_lame, 1,1) = 'S';
ERROR 1054 (42S22): Unknown column 'author_lame' in 'where clause'
mysql> SELECT title, author_lname FROM books
    -> WHERE SUBSTR(author_lname, 1,1) = 'C' OR
    ->  SUBSTR(author_lname, 1,1) = 'S';
+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Amazing Adventures of Kavalier & Clay           | Chabon       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where I'm Calling From: Selected Stories            | Carver       |
| Cannery Row                                         | Steinbeck    |
| Lincoln In The Bardo                                | Saunders     |
+-----------------------------------------------------+--------------+
6 rows in set (0.02 sec)

mysql> OR
    -> ^C
mysql>
mysql> SELECT title, author_lname FROM books
    -> WHERE SUBSTR(author_lname, 1,1) IN ('C', 'S');
+-----------------------------------------------------+--------------+
| title                                               | author_lname |
+-----------------------------------------------------+--------------+
| The Amazing Adventures of Kavalier & Clay           | Chabon       |
| Just Kids                                           | Smith        |
| What We Talk About When We Talk About Love: Stories | Carver       |
| Where I'm Calling From: Selected Stories            | Carver       |
| Cannery Row                                         | Steinbeck    |
| Lincoln In The Bardo                                | Saunders     |
+-----------------------------------------------------+--------------+
6 rows in set (0.00 sec)

mysql> if title  contains 'stories' - short stories
    -> just kinds ans a heartbreaking work - memoir
    -> everything else - novel
    ->
    -> ^C
mysql>
mysql> SELECT title, author_lname,
    ->   CASE
    ->      WHEN title LIKE '%stories%; THEN 'Short Stories'
    '>      WHEN title = 'Just kids' OR
    '>           title = 'A Heartbreaking Work of Staggering Genius' THEN 'memoir'
    '>      ELSE 'Novel'
    '> END AS TYPE
    '> FROM books;
    '> ^C
mysql> SELECT title, author_lname,
    -> CASE
    ->  WHEN title LIKE '%stories%'; THEN 'Short Stories'
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
    -> ^C
mysql>  SELECT title, author_lname,
    -> CASE
    -> WHEN title LIKE '%stories%' THEN 'Short Stories'
    -> WHEN title = 'Just kids' OR
    ->      title = 'A Heartbreaking Work of Staggering Genius' THEN 'memoir'
    -> ELSE 'Novel'
    -> END AS TYPE;
ERROR 1054 (42S22): Unknown column 'title' in 'field list'
mysql>
mysql>
mysql> SELECT title, author_lname,
    ->  CASE
    -> WHEN title LIKE '%stories%' THEN 'Short Stories'
    -> WHEN title = 'Just kids' OR
    -> title = 'A Heartbreaking Work of Staggering Genius' THEN 'memoir'
    -> ELSE 'Novel'
    -> END AS TYPE
    -> FROM books;
+-----------------------------------------------------+----------------+---------------+
| title                                               | author_lname   | TYPE          |
+-----------------------------------------------------+----------------+---------------+
| The Namesake                                        | Lahiri         | Novel         |
| Norse Mythology                                     | Gaiman         | Novel         |
| American Gods                                       | Gaiman         | Novel         |
| Interpreter of Maladies                             | Lahiri         | Novel         |
| A Hologram for the King: A Novel                    | Eggers         | Novel         |
| The Circle                                          | Eggers         | Novel         |
| The Amazing Adventures of Kavalier & Clay           | Chabon         | Novel         |
| Just Kids                                           | Smith          | memoir        |
| A Heartbreaking Work of Staggering Genius           | Eggers         | memoir        |
| Coraline                                            | Gaiman         | Novel         |
| What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
| Where I'm Calling From: Selected Stories            | Carver         | Short Stories |
| White Noise                                         | DeLillo        | Novel         |
| Cannery Row                                         | Steinbeck      | Novel         |
| Oblivion: Stories                                   | Foster Wallace | Short Stories |
| Consider the Lobster                                | Foster Wallace | Novel         |
| 10% Happier                                         | Harris         | Novel         |
| fake_book                                           | Harris         | Novel         |
| Lincoln In The Bardo                                | Saunders       | Novel         |
+-----------------------------------------------------+----------------+---------------+
19 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELECT author_lname,
    -> CASE
    ->     WHEN COUNT(*) = 1 THEN '1 book'
    ->     ELSE CONCAT(COUNT(*), ' books')
    -> END AS COUNT
    -> FROM books
    -> GROUP BY author_lname, author_fname;
+----------------+---------+
| author_lname   | COUNT   |
+----------------+---------+
| Lahiri         | 2 books |
| Gaiman         | 3 books |
| Eggers         | 3 books |
| Chabon         | 1 book  |
| Smith          | 1 book  |
| Carver         | 2 books |
| DeLillo        | 1 book  |
| Steinbeck      | 1 book  |
| Foster Wallace | 2 books |
| Harris         | 1 book  |
| Harris         | 1 book  |
| Saunders       | 1 book  |
+----------------+---------+
12 rows in set (0.03 sec)

mysql> SELECT author_fname, author_lname,
    ->  CASE
    ->      WHEN COUNT(*) = 1 THEN '1 book'
    ->      ELSE CONCAT(COUNT(*), ' books')
    -> END AS COUNT
    -> FROM books
    -> GROUP BY author_lname, author_fname;
+--------------+----------------+---------+
| author_fname | author_lname   | COUNT   |
+--------------+----------------+---------+
| Jhumpa       | Lahiri         | 2 books |
| Neil         | Gaiman         | 3 books |
| Dave         | Eggers         | 3 books |
| Michael      | Chabon         | 1 book  |
| Patti        | Smith          | 1 book  |
| Raymond      | Carver         | 2 books |
| Don          | DeLillo        | 1 book  |
| John         | Steinbeck      | 1 book  |
| David        | Foster Wallace | 2 books |
| Dan          | Harris         | 1 book  |
| Freida       | Harris         | 1 book  |
| George       | Saunders       | 1 book  |
+--------------+----------------+---------+
12 rows in set (0.00 sec)

mysql>

