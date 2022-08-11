-- 1. Finding 5 oldest users

SELECT * 
FROM users
ORDER BY created_at 
LIMIT 5


-- 2. Most Popular Registration Date

SELECT 
   username,
   DAYNAME(created_at)
FROM userS;


SELECT 
   username
   DAYNAME(created_at) AS day
FROM users
GROUP BY day;

SELECT 
   DAYNAME(created_at) AS day,
   COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC;  


SELECT 
   DAYNAME(created_at) AS day,
   COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 1;

SELECT 
   DAYNAME(created_at) AS day,
   COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;


-- 3. Identify Inactive Users (users with no photos)
SELECT username, image_url
FROM users
INNER JOIN photos  
    ON users.id = photos.user_id;



SELECT username, image_url
FROM users
LEFT JOIN photos  
    ON users.id = photos.user_id;


SELECT username, image_url
FROM users
LEFT JOIN photos  
    ON users.id = photos.user_id
WHERE photos.user_id IS NULL;


SELECT username
FROM users
LEFT JOIN photos  
    ON users.id = photos.user_id
WHERE photos.user_id IS NULL;

--OR

SELECT username
FROM photos
RIGHT JOIN users 
    ON users.id = photos.user_id
WHERE photos.user_id IS NULL;   



--4 INDETIFY THE MOST LIKED PHOTO
SELECT * FROM photos;
SELECT * FROM likes;



SELECT *
FROM photos
INNER JOIN likes 
   ON likes.photo_id = photos.id;

SELECT photos.id, photos.image_url, likes.user_id
FROM photos
INNER JOIN likes 
   ON likes.photo_id = photos.id;


SELECT photos.id, 
photos.image_url, 
likes.user_id
FROM photos
INNER JOIN likes 
   ON likes.photo_id = photos.id;
GROUP BY photos.id;



SELECT photos.id,
 photos.image_url
 COUNT(*)
FROM photos
INNER JOIN likes 
   ON likes.photo_id = photos.id;
GROUP BY photos.id;

SELECT photos.id,
 photos.image_url,
 COUNT(*)   AS total
FROM photos
INNER JOIN likes 
   ON likes.photo_id = photos.id
GROUP BY photos.id
ORDER BY total
LIMIT 1;


SELECT photos.id,
 photos.image_url,
 COUNT(*)   AS total
FROM photos
INNER JOIN likes 
   ON likes.photo_id = photos.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- TO GET THE USER NAME ASLO


SELECT 
   username,
   photos.id,
   photos.image_url,
   COUNT(*) AS total
FROM photos
INNER JOIN likes
   ON likes.photo_id = photos.id
INNER JOIN users 
   ON photos.user_id = users.id 
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;



--- MY CODE:
SELECT photos.id,
 photos.image_url,
 COUNT(*)   AS total
FROM photos
LEFT JOIN likes 
   ON photos.id = liKEs.photo_id
GROUP BY photoS.id
ORDER BY TOTAL DESC
LIMIT 1;










--- CALCULATE AVG NUMBER OF PHOTOTS PER USER


-- total number of photo / total number of users

SELECT COUNT(*) FROM photos / SELECT COUNT(*) FROM users;


(SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users);


SELECT 
  (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users);


SELECT 
  (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)
AS AVG;




-- 6. Five Most Popular Hashtags

SELECT *
   FROM photo_tags
   JOIN tags 
      ON photo_tags.tag_id = tags.id;

SELECT *
   FROM photo_tags
   JOIN tags 
      ON photo_tags.tag_id = tags.id
    GROUP BY tags.id;

SELECT
tags.tag_name,
COUNT(*)
   FROM photo_tags
   JOIN tags 
      ON photo_tags.tag_id = tags.id
    GROUP BY tags.id;



SELECT
tags.tag_name,
COUNT(*) AS total
   FROM photo_tags
   JOIN tags 
      ON photo_tags.tag_id = tags.id
    GROUP BY tags.id
    ORDER BY total DESC
    LIMIT 5;




-- MY CODE
SELECT tags.id AS ID,
tags.tag_name,
COUNT(*) AS toal_Use
FROM tags 
INNER JOIN photo_tags
ON photo_tags.tag_id = tags.id
GROUP BY tags.id
ORDER BY ID DESC
LIMIT 5;




-- 7. Finding Bots - users who have liked every single photo

SELECT * 
FROM users
INNER JOIN likes 
ON users.id = likes.user_id;


SELECT * 
FROM users
INNER JOIN likes 
ON users.id = likes.user_id;
GROUP BY likes.user_id;


SELECT 
username,
user_id
FROM users
INNER JOIN likes 
ON users.id = likes.user_id
GROUP BY likes.user_id;



SELECT 
username,
user_id,
COUNT(*) AS num_likes
FROM users
INNER JOIN likes 
ON users.id = likes.user_id
GROUP BY likes.user_id

-- USED NEW KEY WORD - HAVING!
--  BEACUSE, WHERE num_likes = 257 cannot work, beacuse it should come before 
--  GROUP BY.

SELECT 
username,
user_id,
COUNT(*) AS num_likes
FROM users
INNER JOIN likes 
ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = 257;


-- ===============
-- note:  the above code is hard coded- 257  
--        to solve that problem we can write the solution like this,

SELECT 
username,
user_id,
COUNT(*) AS num_likes
FROM users
INNER JOIN likes 
ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING num_likes = (SELECT COUNT(*) FROM photos);




--my code
SELECT users.id, 
users.username,
COUNT(*) AS total_likes
FROM users 
INNER JOIN likes
   ON users.id = likes.user_id
GROUP BY users.id;
