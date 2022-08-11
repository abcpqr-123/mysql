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




