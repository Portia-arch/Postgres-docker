-- #1 
CREATE DATABASE umuzi;

-- #2,  #3  and #3
CREATE TABLE Customers(
Customer_ID     INTEGER    Primary Key,
First_Name      VARCHAR(50),
Last_Name       VARCHAR(50),
Gender          VARCHAR,
Address         VARCHAR(200),
Phone           INTEGER,
Email           VARCHAR(100),
City            VARCHAR(20),
Country         VARCHAR(50)
);

CREATE TABLE Employee(
Employee_ID     INTEGER     Primary Key,
First_Name      VARCHAR(50),
Last_Name       VARCHAR(50),
Email           VARCHAR(100),
Job_Title       VARCHAR(20),
);

CREATE TABLE Orders(
Order_ID            INTEGER     Primary Key,
Product_ID          INTEGER     Foreign Key,
Payment_ID          INTEGER     Foreign Key,
Employee_ID         INTEGER     Foreign Key,
Date_Required       DATE,
Date_Shipped        DATE,
Email           VARCHAR(20),
);

CREATE TABLE Payments(
Customer_ID     INTEGER     Foreign Key,
Payment_ID      INTEGER     Primary Key,
Payment_Date    DATE,
Amount           DECIMAL,
);

CREATE TABLE ProductS(
Product_ID        INTEGER       Primary Key,
Product_Name      VARCHAR(100),
Description       VARCHAR(300),
Price             DECIMAL,
);

-- #5
INSERT INTO Customers(Customer_ID, First_Name, Last_Name, Gender, Address, Phone, Email, City,Country)
 VALUES(1, 'THANDDO', 'SITHOLE', 'FEMALE', '204 SEC 1' 9877654, 'thando@gmail.com', 'Jeppe', 'SA')
    