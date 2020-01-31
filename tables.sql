CREATE TABLE Customers
(
    Customer_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Gender VARCHAR,
    Address VARCHAR(200),
    Phone INTEGER,
    Email VARCHAR(100),
    City VARCHAR(20),
    Country VARCHAR(50)
);

CREATE TABLE Employee
(
    Employee_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email VARCHAR(100),
    Job_Title VARCHAR(20)
);

CREATE TABLE Products
(
    Product_ID SERIAL PRIMARY KEY,
    Product_Name VARCHAR(100),
    Description VARCHAR(300),
    Price DECIMAL
);

CREATE TABLE Payments
(
    Customer_ID INTEGER REFERENCES Customers(Customer_ID),
    Payment_ID SERIAL PRIMARY KEY,
    Payment_Date VARCHAR(50),
    Amount MONEY
);

CREATE TABLE Orders
(
    Order_ID SERIAL PRIMARY KEY,
    Product_ID INTEGER REFERENCES Products(Product_ID),
    Payment_ID INTEGER REFERENCES Payments(Payment_ID),
    Employee_ID INTEGER REFERENCES Employee(Employee_ID),
    Date_Required VARCHAR(50),
    Date_Shipped VARCHAR(50),
    Status VARCHAR(20)
);

INSERT INTO Customers
    (Customer_ID, First_Name, Last_Name,Gender, Address, Phone, Email, City, Country)
VALUES
    (1, 'JOHN', 'HIBERT', 'MALE', '284 CHAUCER ST', 084789657, 'john@gmail.com', 'JOHANNESBURG', 'SOUTH AFRICA'),
    (2, 'THANDO', 'SITHOLE', 'FEMALE', '204 SEC 1', 079444558, 'thando@gmail.com', 'CAPE TOWN', 'SOUTH AFRICA'),
    (3, 'LEON', 'GLEN', 'MALE', '81 EVERTON RD, GILLITIS', 082083283, 'Leon@gmail.com', 'DURBAN', 'SOUTH AFRICA'),
    (4, 'CHARL', 'MULLER', 'MALE', '290A DORSET ECKE', 44856872, 'Charl.mullar@yahoo.com', 'BERLIN', 'GERMANY'),
    (5, 'JULIA', 'STEIN', 'FEMALE', '2 WERNERRING', 44867244, 'Js234@yahoo.com', 'FRANKFURT', 'GERMANY');

INSERT INTO Employee
    (Employee_ID, First_Name, Last_Name, Email, Job_Title)
VALUES
    (1, 'KANI', 'MATTHEW', 'mat@gmail.com', 'MANAGER'),
    (2, 'LESLEY', 'CRONJE', 'LesC@gmail.com', 'CLERK'),
    (3, 'GIDEON', 'MADUKU', 'm@gmail.com', 'ACCOUNTANT');

INSERT INTO Products
    (Product_ID, Product_Name, Description, Price)
VALUES
    (1, 'Harley Davidson Chopper', 'This reeplica features working kickstand, front suspension, gear-shift lever', '150.75'),
    (2, 'Classic Car', 'Turnable front wheels, steering function', '550.75'),
    (3, 'Sports Car', 'Turnable front wheels, steering function', '700.60');

INSERT INTO Payments
    (Customer_ID, Payment_ID, Payment_Date, Amount)
VALUES
    (1, 1, '01/09/2018', '150.75'),
    (5, 2, '03/09/2018', '150.75'),
    (4, 3, '03/09/2018', '700.60');


INSERT INTO Orders
    (Order_ID, Product_ID, Payment_ID, Employee_ID, Date_Required, Date_Shipped, Status)
VALUES
    (1, 1, 1, 2, '05/09/2018', NULL, 'Not Shipped'),
    (2, 1, 2, 2, '04/09/2018', '03/09/2018', 'Shipped'),
    (3, 3, 3, 3, '06/09/2018', NULL, 'Not Shipped');