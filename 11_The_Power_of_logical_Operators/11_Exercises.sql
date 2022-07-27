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

