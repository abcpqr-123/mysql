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