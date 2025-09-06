-- Question 1
-- New table in 1NF
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

-- Example inserts (after splitting Products column)
INSERT INTO ProductDetail VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail VALUES (101, 'John Doe', 'Mouse');
INSERT INTO ProductDetail VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail VALUES (102, 'Jane Smith', 'Mouse');
INSERT INTO ProductDetail VALUES (103, 'Emily Clark', 'Phone');

-- Question 2
-- New tables in 2NF
-- Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Order details table (2NF)
CREATE TABLE OrderDetails_1 (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert example data
INSERT INTO Orders VALUES (101, 'John Doe'), (102, 'Jane Smith'), (103, 'Emily Clark');

INSERT INTO OrderDetails_1 VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
