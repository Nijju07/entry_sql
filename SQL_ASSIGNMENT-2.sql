CREATE DATABASE Sales;
USE SALES;
CREATE TABLE Orders (
    Order_Id INT PRIMARY KEY NOT NULL,
    Customer_name VARCHAR(50) NOT NULL,
    Product_Category VARCHAR(50) NOT NULL,
    Ordered_item VARCHAR(50) NOT NULL,
    Contact_No BIGINT UNIQUE NOT NULL);
    ALTER TABLE Orders
ADD order_quantity INT NOT NULL;
ALTER TABLE Orders
rename to SALES_ORDERS;
INSERT INTO sales_orders (Order_Id, Customer_name, Product_Category, Ordered_item, Contact_No, order_quantity)
VALUES
(101, 'Alice', 'Electronics', 'Laptop', 9876543210, 2),
(102, 'Bob', 'Clothing', 'T-Shirt', 9123456789, 5),
(103, 'Charlie', 'Home Appliances', 'Microwave Oven', 9867543211, 1),
(104, 'Diana', 'Groceries', 'Rice Bag', 9988776655, 10),
(105, 'Edward', 'Electronics', 'Smartphone', 9765432109, 3),
(106, 'Fiona', 'Furniture', 'Office Chair', 9654321098, 4),
(107, 'George', 'Groceries', 'Cooking Oil', 9543210987, 6),
(108, 'Hannah', 'Clothing', 'Jeans', 9432109876, 2),
(109, 'Ian', 'Home Appliances', 'Washing Machine', 9321098765, 1),
(110, 'Jasmine', 'Electronics', 'Bluetooth Speaker', 9210987654, 3);
select * from sales_orders;
SELECT Customer_name, Ordered_item
FROM sales_orders;

UPDATE sales_orders
SET Ordered_item = 'Gaming Laptop'
WHERE Order_Id = 101;
DROP TABLE sales_orders;

