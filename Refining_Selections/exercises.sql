-- SELECT title FROM books WHERE title LIKE '%stories%';


-- SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;


-- SELECT 
-- CONCAT(title, ' - ', released_year)  AS summary FROM books
--  ORDER BY released_year DESC LIMIT 3;


-- SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

-- SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity
--  LIMIT 3;




-- QN
-- print title and author_lname, sorted first bu author author_lname and then by title

-- SELECT title, author_lname FROM books ORDER BY author_lname, title;




-- QN
-- SORTED ALPHABETIALLY BY LAST NAME

-- SELECT author_lname FROM books AS 'yell'
SELECT
 CONCAT (
    'MY FAVOURITE AUTHOR IS ', 
    UPPER(author_fname), 
    ' ',
    UPPER(author_lname), 
    '!'
    )
    AS yell
    FROM books ORDER BY author_lname;
