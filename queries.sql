
-- #1
SELECT * FROM Customer;

-- #2
SELECT First_Name FROM Customers;

-- #3
SELECT First_Name FROM Customers WHERE Customer_ID=105;

-- #4
UPDATE Customers SET First_Name='Nothile Ngcobo' WHERE Customer_ID=105;

-- #5
DELETE FROM Customers WHERE Customer_ID=105;

-- #6
SELECT COUNT(Status) FROM Orders;

-- #7
SELECT MAX(Amount) FROM Payments;

-- #8
select * FROM Customers ORDER BY Country ASC;

-- #9 
select * from products where price between '100' and '600';

-- #10
select * from customers
WHERE city='Berlin'
AND country='Germany';

-- #11
select * from customers
WHERE city='Cape Town'
or city='durban';

-- #12
select * from products
WHERE price > '500';

-- #13
select SUM(amount) FROM payments;

-- #14
select count(*) from orders
where status='Shipped';

-- #15
select AVG(price) from products

-- #16 
SELECT customers.customer_ID, payments.payment_ID
FROM customers
INNER JOIN payments
ON customers.customer_ID = payments.customer_ID

--  #17 
SELECT * FROM products 
WHERE description LIKE 'Turnable front wheels%';