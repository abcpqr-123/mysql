CREATE DATABASE tv_review_app;


USE v_review_app;


CREATE TABLE reviewers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    released_year YEAR(4),
    genre VARCHAR(100)
);



CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    rating DECIMAL(2,1),
    series_id INT,
    reviewer_id INT,
    FOREIGN KEY (series_id) REFERENCES series(id),
    FOREIGN KEY (reviewer_id) REFERENCES reviewers(id)
);


-- CHALLENGE - 1
SELECT * FROM series
     JOIN reviews
     ON series.id = reviews.reviewer_id;


SELECT
     title,
     rating
     FROM series
     JOIN reviews
       ON series.id = reviews.series_id;

SELECT 
    title, 
    rating 
FROM series
JOIN reviews
    ON series.id = reviews.series_id;



-- CHALLENGE 2 avg rating

SELECT 
  title,
  rating
FROM series
JOIN reviews
  ON series.id = reviews.series_id;



SELECT 
   series.id,
   title, 
   rating
FROM series
JOIN reviews   
  ON series.id =  reviews.series_id
GROUP BY series_id;


SELECT 
   series.id,
   title, 
   AVG(rating) AS avg_rating
FROM series
JOIN reviews   
  ON series.id =  reviews.series_id
GROUP BY series_id;



SELECT 
   series.id,
   title, 
   AVG(rating) AS avg_rating
FROM series
JOIN reviews   
  ON series.id =  reviews.series_id
GROUP BY series_id
ORDER BY avg_rating;


-- challenge -3


SELECT * FROM reviewers
JOIN reviews
  ON reviewers.id = reviews.reviewer_id;



SELECT 
first_name,
last_name,
rating
FROM reviewers
JOIN reviews
  ON reviewers.id = reviews.reviewer_id;


-- SELECT
-- first_name,
-- last_name,
-- rating
-- FROM reviewers
-- JOIN reviews
--    ON reviewers.id = reviews.reviewer_id
-- GROUP BY reviewers.id
-- ORDER BY reviewers.id;




-- ===========================================

--  challenge 4 

SELECT *
FROM series
INNER JOIN reviews  
  ON series.id = reviews.series_id;



SELECT *
FROM series
LEFT JOIN reviews  
  ON series.id = reviews.series_id;



SELECT 
title,
rating
FROM series
LEFT JOIN reviews  
  ON series.id = reviews.series_id
WHERE rating IS NULL;


-- OR 

SELECT 
title,
rating
FROM series
LEFT JOIN reviews  
  ON series.id = reviews.series_id
WHERE series_id IS NULL;


-- OR 


SELECT 
title,
rating
FROM series
LEFT JOIN reviews  
  ON series.id = reviews.series_id
WHERE reviews.series_id IS NULL;



-- OR 


SELECT *
FROM series
LEFT JOIN reviews  
  ON series.id = reviews.series_id
WHERE rating IS NULL;



SELECT 
title AS unreviewed_series
FROM series
LEFT JOIN reviews  
  ON series.id = reviews.series_id
WHERE rating IS NULL;


-- CHALLENGE 5 - genre avg ratings


SELECT * FROM series
JOIN reviews
  ON series.id = reviews.series_id;


SELECT 
 title, 
 genre,
 rating
 FROM series
INNER JOIN reviews
  ON series.id = reviews.series_id;




SELECT 
 title, 
 genre,
 rating
 FROM series
INNER JOIN reviews
  ON series.id = reviews.series_id
  GROUP BY genre;


SELECT 
 title, 
 genre,
 AVG(rating)
 FROM series
INNER JOIN reviews
  ON series.id = reviews.series_id
  GROUP BY genre;






SELECT 
 title, 
 genre,
 ROUND (
    AVG(rating),
        2
  ) AS avg_rating
 FROM series
INNER JOIN reviews
  ON series.id = reviews.series_id
  GROUP BY genre;





  -- CHALLENGE 6 -reviewer stats


  SELECT 
  first_name,
  last_name,
  COUNT(rating),
 MIN(rating)
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;




  SELECT 
  first_name,
  last_name,
  COUNT(rating),
 IFNULL( MIN(rating), 0)
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;





  SELECT 
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
 IFNULL( MIN(rating), 0) AS MIN
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;



  SELECT 
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
 IFNULL( MIN(rating), 0) AS MIN,
 IFNULL( MAX(rating), 0) AS MAX,
 IFNULL(AVG(rating), 0) AS AVG
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;



  

  SELECT 
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
 IFNULL( MIN(rating), 0) AS MIN,
 IFNULL( MAX(rating), 0) AS MAX,
 IFNULL(AVG(rating), 0) AS AVG,
 CASE 
    WHEN COUNT(rating) >=1 THEN 'ACTIVE'
    ELSE 'INACTIVE'
    END AS reviewers
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;


  --OR


    SELECT 
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
 IFNULL( MIN(rating), 0) AS MIN,
 IFNULL( MAX(rating), 0) AS MAX,
 IFNULL(AVG(rating), 0) AS AVG,
  IF (COUNT(rating) >= 1,  'ACTIVE','INACTIVE')
   AS STATUS
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;



    SELECT 
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
 IFNULL( MIN(rating), 0) AS MIN,
 IFNULL( MAX(rating), 0) AS MAX,
 ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
  IF (COUNT(rating) >= 1,  'ACTIVE','INACTIVE')
   AS STATUS
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;




   SELECT 
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
 IFNULL( MIN(rating), 0) AS MIN,
 IFNULL( MAX(rating), 0) AS MAX,
 ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
 CASE 
    WHEN COUNT(rating) >= 10 THEN 'POWER USER'
    WHEN COUNT(rating) > 0 THEN 'ACTIVE'
    ELSE 'INACTIVE'
   END AS STATUS
  FROM reviewers
  LEFT JOIN reviews
     ON reviewers.id = reviews.reviewer_id
  GROUP BY reviewers.id;




-- CHALLENGE - 7  3 TABLES


SELECT * FROM reviewers
JOIN reviews
   ON reviewers.id = reviews.reviewer_id;


SELECT 
   title,
   rating,
   CONCAT(first_name, ' ', last_name) AS reviewer
   FROM reviewers
   INNER JOIN reviews
     ON reviewers.id = reviews.reviewer_id
   INNER JOIN series
     ON series.id = reviews.series_id
     ORDER BY title;



