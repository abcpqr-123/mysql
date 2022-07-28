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
