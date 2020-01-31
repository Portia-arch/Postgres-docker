SELECT *
FROM Customers;

SELECT First_Name
FROM Customers;

SELECT First_Name
FROM Customers
WHERE Customer_ID=1;

UPDATE Customers SET First_Name='Nothile' WHERE Customer_ID=1;

DELETE FROM Customers WHERE Customer_ID=2;

SELECT COUNT(Status)
FROM Orders;

SELECT MAX(Amount)
FROM Payments;

select *
FROM Customers
ORDER BY Country ASC;

select *
from products
where price between '100' and '600';

select *
from customers
WHERE city='BERLIN'
    AND country='GERMANY';

select *
from customers
WHERE city='CAPE TOWN'
    or city='DURBAN';

select *
from products
WHERE price > '500';

select SUM(amount)
FROM payments;

select count(*)
from orders
where status='Shipped';


select AVG(price)
from products;

SELECT Customers.Customer_ID, Payments.Payment_ID
FROM Customers
    INNER JOIN Payments
    ON Customers.Customer_ID = Payments.Customer_ID;

SELECT *
FROM Products
WHERE description LIKE 'Turnable front wheels%';