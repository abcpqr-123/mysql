-- SELECT 
-- CONCAT(
--     SUBSTR(title, 1, 10),
--      '...') AS short_title
-- FROM books;

-- ******************************************************************
SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
    FROM books;