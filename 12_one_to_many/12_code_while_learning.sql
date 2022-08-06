SELECT * FROM customers, orders WHERE customers.id =  orders.customer_id;





--IMPLICIT BINDING

SELECT first_name, last_name, order_date, amount 
FROM customers, orders
WHERE customers.id =  orders.customer_id;



-- EXPLICIT BINDING

SELECT first_name, last_name, order_date, amount 
FROM customers 
JOIN orders
  ON customers.id = customer_id;



-- ARBITARY JOIN - don't do this!

SELECT * FROM customers
JOIN orders 
ON customers.id = customer_id;


-- EXPLICIT BINDING chaing the order

SELECT first_name, last_name, order_date, amount 
FROM orders
JOIN  customers 
  ON customers.id = customer_id;


SELECT *
FROM orders
JOIN  customers 
  ON customers.id = customer_id;


SELECT *
FROM customers 
JOIN orders
  ON customers.id = customer_id;



--getting fancier:

SELECT first_name,
        last_name,
        order_date, 
        SUM(amount) AS total_spent
FROM orders
JOIN  customers 
  ON customers.id = customer_id
GROUP BY  orders.customer_id
ORDER BY total_spent DESC;



-- LEFT JOIN
SELECT * FROM customers 
LEFT JOIN orders
   ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders
   ON customers.id = orders.customer_id;



 SELECT first_name, last_name, order_date, SUM(amount) FROM customers
     LEFT JOIN orders
        ON customers.id = orders.customer_id
     GROUP BY customers.id;  

-- Replace NUM by zero. 

 SELECT first_name,
        last_name,
        order_date, 
        IFNULL(SUM(amount), 0) AS total_spent
        FROM customers
     LEFT JOIN orders
        ON customers.id = orders.customer_id
     GROUP BY customers.id
     ORDER BY total_spent;


     --RIGHT JOIN

     SELECT * FROM customers
     INNER JOIN orders
            ON customers.id =  orders.customer_id
     
     SELECT first_name, last_name, order_date, amount
     FROM customers
     RIGHT JOIN orders 
        ON customers.id = orders.customer_id;
       
     SELECT first_name, last_name, order_date, amount
     FROM customers
     RIGHT JOIN orders 
        ON customers.id = orders.customer_id
    ORDER BY first_name;
       
        SELECT first_name, last_name, order_date, amount
     FROM customers
     RIGHT JOIN orders 
        ON customers.id = orders.customer_id
    GROUP BY customer_id;




     SELECT IFNULL(first_name, 'MISSING'),
     IFNULL(last_name, 'USER'),
     order_date,
     amount,
     SUM(amount)
     FROM customers
     RIGHT JOIN orders 
        ON customers.id = orders.customer_id
    GROUP BY customer_id;



    
     SELECT IFNULL(first_name, 'MISSING') AS first,
     IFNULL(last_name, 'USER') AS last,
     order_date,
     amount,
     SUM(amount)
     FROM customers
     RIGHT JOIN orders 
        ON customers.id = orders.customer_id
    GROUP BY customer_id;

        
     SELECT IFNULL(first_name, 'MISSING') AS first,
     IFNULL(last_name, 'USER') AS last,
     order_date,
     amount,
     SUM(amount)
     FROM customers
     RIGHT JOIN orders 
        ON customers.id = orders.customer_id
    GROUP BY first_name, last_name;




    --- ON DELETE CASCADE;

    SELECT * FROM customers;


    SELECT * FROM  orders;


    CREATE TABLE customers(
     id INT AUTO_INCREMENT PRIMARY KEY,
     first_name VARCHAR(100),
     last_name VARCHAR(100),
     email VARCHAR(100)
     );



     CREATE TABLE orders(
      id INT AUTO_INCREMENT PRIMARY KEY,
      order_date DATE,
     amount DECIMAL(8,2),
     customer_id INT,
     FOREIGN KEY (customer_id)
     REFERENCES customerS(id)
     ON DELETE CASCADE
     );
    

    INSERT INTO customers (first_name, last_name, email)
          VALUES ('Boy', 'George','george@gmail.com'),
          ('George', 'Michael', 'gm@gmail.com'),
          ('David', 'Bowie', 'david@gmail.com'),
          ('Blue', 'Steele', 'blue@gmail.com'),
          ('Bette', 'Davis', 'bette@ael.com');


   INSERT INTO orders (order_date, amount, customer_id)
     VALUES ('2016/02/10', 99.99, 1),
     ('2017/11/11', 35.50, 1),
     ('2014/12/12', 800.67, 2),
     ('2015/01/03', 12.50, 2),
     ('1999/04/11', 450.25, 5);




SELECT * FROM orders
        LEFT JOIN customerS
        ON  customers.id = orders.customer_id;


 SELECT * FROM customers
    -> LEFT JOIN orders
    ->   ON customers.id = orders.customer_id;




SELECT * FROM orders
    ->         LEFT JOIN customerS
    ->         ON customers.id = orders.customer_id;



 SELECT * FROM orders
    ->         LEFT JOIN customerS
    ->         ON orders.customer_id = customers.id;



mysql> SELECT * FROM orders
    ->         RIGHT JOIN customerS
    ->         ON  customers.id = orders.customer_id;


SELECT * FROM orders
            left JOIN customerS
            ON  customers.id = orders.customer_id;


SELECT * FROM customerS
            left JOIN orders
            ON  customers.id = orders.customer_id;


SELECT * FROM customerS
            right JOIN orders
            ON  customers.id = orders.customer_id;



SELECT * FROM orders
            left JOIN customerS
            ON  customers.id = orders.customer_id;