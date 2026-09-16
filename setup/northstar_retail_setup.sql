-- Northstar Retail SQL Mini Project
-- Creates a standalone training database and loads the practice dataset.

IF DB_ID('NorthstarRetailDB') IS NULL
    CREATE DATABASE NorthstarRetailDB;
GO

USE NorthstarRetailDB;
GO

IF OBJECT_ID('dbo.Orders', 'U') IS NOT NULL
    DROP TABLE dbo.Orders;
GO

CREATE TABLE dbo.Orders (
    OrderID INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    State CHAR(2) NOT NULL,
    Region NVARCHAR(20) NOT NULL,
    CustomerType NVARCHAR(30) NOT NULL,
    ProductCategory NVARCHAR(40) NOT NULL,
    ProductName NVARCHAR(100) NOT NULL,
    SalesRep NVARCHAR(100) NOT NULL,
    OrderDate DATE NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,
    OrderStatus NVARCHAR(20) NOT NULL,
    PaymentMethod NVARCHAR(30) NOT NULL
);
GO

INSERT INTO dbo.Orders (
    OrderID, CustomerName, City, State, Region, CustomerType,
    ProductCategory, ProductName, SalesRep, OrderDate, Quantity,
    UnitPrice, OrderStatus, PaymentMethod
)
VALUES
    (1001, N'Amelia Scott', N'Philadelphia', N'PA', N'East', N'Small Business', N'Accessories', N'Wireless Pro Mouse', N'Alex Carter', '2026-07-13', 5, 59.99, N'Completed', N'Debit Card'),
    (1002, N'Samuel King', N'Richmond', N'VA', N'East', N'Corporate', N'Accessories', N'Wireless Pro Mouse', N'Mia Sanders', '2026-07-13', 2, 59.99, N'Shipped', N'Credit Card'),
    (1003, N'Avery Johnson', N'Sacramento', N'CA', N'West', N'Consumer', N'Computers', N'MiniDesk PC', N'Bianca Lopez', '2026-03-05', 1, 649.99, N'Shipped', N'Bank Transfer'),
    (1004, N'Marcus Reed', N'Dallas', N'TX', N'South', N'Corporate', N'Gaming', N'Gaming Keyboard', N'Eric Foster', '2026-03-17', 1, 129.99, N'Pending', N'Debit Card'),
    (1005, N'Zoe Turner', N'Newark', N'NJ', N'East', N'Small Business', N'Gaming', N'Gaming Controller', N'Chris Nguyen', '2026-03-17', 3, 69.99, N'Completed', N'PayPal'),
    (1006, N'Priya Patel', N'Portland', N'OR', N'West', N'Corporate', N'Computers', N'MiniDesk PC', N'Dana Brooks', '2026-01-29', 6, 649.99, N'Cancelled', N'PayPal'),
    (1007, N'Monica Reyes', N'Folsom', N'CA', N'West', N'Consumer', N'Gaming', N'Gaming Keyboard', N'Eric Foster', '2026-02-05', 7, 129.99, N'Completed', N'PayPal'),
    (1008, N'Amelia Scott', N'Philadelphia', N'PA', N'East', N'Small Business', N'Storage', N'4TB External Drive', N'Chris Nguyen', '2026-06-01', 4, 129.99, N'Pending', N'Credit Card'),
    (1009, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Audio', N'Wireless Headphones', N'Chris Nguyen', '2026-01-25', 4, 149.99, N'Cancelled', N'Bank Transfer'),
    (1010, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Gaming', N'Gaming Keyboard', N'Mia Sanders', '2026-08-06', 6, 129.99, N'Completed', N'PayPal'),
    (1011, N'Sofia Martinez', N'Austin', N'TX', N'South', N'Consumer', N'Audio', N'Studio Pro Headset', N'Mia Sanders', '2026-06-28', 2, 199.99, N'Shipped', N'Debit Card'),
    (1012, N'Henry Adams', N'Indianapolis', N'IN', N'Central', N'Corporate', N'Audio', N'Wireless Headphones', N'Bianca Lopez', '2026-05-03', 7, 149.99, N'Completed', N'Debit Card'),
    (1013, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Displays', N'24-inch Monitor', N'Alex Carter', '2026-03-04', 1, 179.99, N'Pending', N'Bank Transfer'),
    (1014, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Computers', N'MiniDesk PC', N'Bianca Lopez', '2026-08-26', 6, 649.99, N'Completed', N'Bank Transfer'),
    (1015, N'Grace Kim', N'Chicago', N'IL', N'Central', N'Corporate', N'Gaming', N'Gaming Keyboard', N'Bianca Lopez', '2026-03-13', 3, 129.99, N'Completed', N'PayPal'),
    (1016, N'Samuel King', N'Richmond', N'VA', N'East', N'Corporate', N'Storage', N'2TB Pro SSD', N'Dana Brooks', '2026-08-22', 7, 189.99, N'Completed', N'Debit Card'),
    (1017, N'Emma Collins', N'Kansas City', N'MO', N'Central', N'Small Business', N'Networking', N'WiFi 6 Router', N'Alex Carter', '2026-07-17', 1, 159.99, N'Cancelled', N'Debit Card'),
    (1018, N'Amelia Scott', N'Philadelphia', N'PA', N'East', N'Small Business', N'Accessories', N'USB-C Dock', N'Mia Sanders', '2026-04-23', 2, 119.99, N'Completed', N'Bank Transfer'),
    (1019, N'Emma Collins', N'Kansas City', N'MO', N'Central', N'Small Business', N'Audio', N'Studio Pro Headset', N'Eric Foster', '2026-08-13', 1, 199.99, N'Pending', N'Credit Card'),
    (1020, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Storage', N'1TB Portable SSD', N'Chris Nguyen', '2026-07-20', 6, 109.99, N'Completed', N'Bank Transfer'),
    (1021, N'Taylor Morgan', N'Denver', N'CO', N'West', N'Small Business', N'Gaming', N'Gaming Keyboard', N'Alex Carter', '2026-07-08', 5, 129.99, N'Returned', N'Debit Card'),
    (1022, N'Emma Collins', N'Kansas City', N'MO', N'Central', N'Small Business', N'Accessories', N'Wireless Pro Mouse', N'Mia Sanders', '2026-03-22', 4, 59.99, N'Completed', N'Debit Card'),
    (1023, N'Henry Adams', N'Indianapolis', N'IN', N'Central', N'Corporate', N'Networking', N'8-Port Network Switch', N'Alex Carter', '2026-06-07', 6, 94.99, N'Shipped', N'Credit Card'),
    (1024, N'Caleb Foster', N'Nashville', N'TN', N'South', N'Consumer', N'Audio', N'Bluetooth Speaker', N'Bianca Lopez', '2026-01-19', 4, 79.99, N'Cancelled', N'Credit Card'),
    (1025, N'Derek Chen', N'Seattle', N'WA', N'West', N'Small Business', N'Networking', N'WiFi 6 Router', N'Alex Carter', '2026-07-18', 3, 159.99, N'Completed', N'Bank Transfer'),
    (1026, N'Henry Adams', N'Indianapolis', N'IN', N'Central', N'Corporate', N'Accessories', N'USB-C Dock', N'Chris Nguyen', '2026-05-20', 7, 119.99, N'Returned', N'Debit Card'),
    (1027, N'Zoe Turner', N'Newark', N'NJ', N'East', N'Small Business', N'Audio', N'Bluetooth Speaker', N'Dana Brooks', '2026-06-25', 6, 79.99, N'Shipped', N'Bank Transfer'),
    (1028, N'Priya Patel', N'Portland', N'OR', N'West', N'Corporate', N'Audio', N'Wireless Headphones', N'Bianca Lopez', '2026-01-21', 6, 149.99, N'Completed', N'Debit Card'),
    (1029, N'Chloe Rivera', N'New York', N'NY', N'East', N'Consumer', N'Audio', N'Wireless Headphones', N'Alex Carter', '2026-01-23', 1, 149.99, N'Completed', N'Credit Card'),
    (1030, N'Olivia Bennett', N'Charlotte', N'NC', N'South', N'Corporate', N'Computers', N'MiniDesk PC', N'Eric Foster', '2026-03-06', 5, 649.99, N'Shipped', N'Debit Card'),
    (1031, N'Henry Adams', N'Indianapolis', N'IN', N'Central', N'Corporate', N'Accessories', N'Mechanical Keyboard', N'Mia Sanders', '2026-08-18', 8, 89.99, N'Completed', N'Bank Transfer'),
    (1032, N'Noah Thompson', N'Detroit', N'MI', N'Central', N'Consumer', N'Accessories', N'Laptop Stand', N'Alex Carter', '2026-01-29', 7, 39.99, N'Completed', N'Bank Transfer'),
    (1033, N'Maya Robinson', N'Columbus', N'OH', N'Central', N'Small Business', N'Computers', N'ApexBook Pro 16', N'Mia Sanders', '2026-06-21', 2, 1399.99, N'Completed', N'PayPal'),
    (1034, N'Priya Patel', N'Portland', N'OR', N'West', N'Corporate', N'Audio', N'Wireless Headphones', N'Bianca Lopez', '2026-02-22', 8, 149.99, N'Completed', N'Debit Card'),
    (1035, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Gaming', N'Gaming Keyboard', N'Bianca Lopez', '2026-08-16', 2, 129.99, N'Shipped', N'Credit Card'),
    (1036, N'Monica Reyes', N'Folsom', N'CA', N'West', N'Consumer', N'Storage', N'1TB Portable SSD', N'Alex Carter', '2026-01-28', 4, 109.99, N'Completed', N'Bank Transfer'),
    (1037, N'Liam Carter', N'Minneapolis', N'MN', N'Central', N'Consumer', N'Accessories', N'Laptop Stand', N'Dana Brooks', '2026-08-24', 1, 39.99, N'Completed', N'Credit Card'),
    (1038, N'Grace Kim', N'Chicago', N'IL', N'Central', N'Corporate', N'Audio', N'Studio Pro Headset', N'Dana Brooks', '2026-03-19', 7, 199.99, N'Pending', N'Bank Transfer'),
    (1039, N'Jordan Williams', N'Phoenix', N'AZ', N'West', N'Consumer', N'Accessories', N'Laptop Stand', N'Chris Nguyen', '2026-03-01', 1, 39.99, N'Shipped', N'Credit Card'),
    (1040, N'Samuel King', N'Richmond', N'VA', N'East', N'Corporate', N'Displays', N'24-inch Monitor', N'Alex Carter', '2026-01-17', 8, 179.99, N'Shipped', N'Debit Card'),
    (1041, N'Monica Reyes', N'Folsom', N'CA', N'West', N'Consumer', N'Networking', N'8-Port Network Switch', N'Alex Carter', '2026-08-10', 3, 94.99, N'Completed', N'Credit Card'),
    (1042, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Audio', N'Wireless Headphones', N'Dana Brooks', '2026-02-04', 4, 149.99, N'Shipped', N'Credit Card'),
    (1043, N'Daniel Lee', N'Boston', N'MA', N'East', N'Corporate', N'Computers', N'MiniDesk PC', N'Dana Brooks', '2026-06-22', 6, 649.99, N'Returned', N'Debit Card'),
    (1044, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Displays', N'24-inch Monitor', N'Bianca Lopez', '2026-03-13', 7, 179.99, N'Completed', N'PayPal'),
    (1045, N'Maya Robinson', N'Columbus', N'OH', N'Central', N'Small Business', N'Displays', N'24-inch Monitor', N'Alex Carter', '2026-01-07', 8, 179.99, N'Shipped', N'Credit Card'),
    (1046, N'Derek Chen', N'Seattle', N'WA', N'West', N'Small Business', N'Storage', N'1TB Portable SSD', N'Bianca Lopez', '2026-05-14', 5, 109.99, N'Completed', N'PayPal'),
    (1047, N'Derek Chen', N'Seattle', N'WA', N'West', N'Small Business', N'Audio', N'Wireless Headphones', N'Chris Nguyen', '2026-03-18', 3, 149.99, N'Shipped', N'PayPal'),
    (1048, N'Daniel Lee', N'Boston', N'MA', N'East', N'Corporate', N'Networking', N'8-Port Network Switch', N'Alex Carter', '2026-06-24', 5, 94.99, N'Returned', N'Credit Card'),
    (1049, N'Jordan Williams', N'Phoenix', N'AZ', N'West', N'Consumer', N'Audio', N'Studio Pro Headset', N'Alex Carter', '2026-08-20', 2, 199.99, N'Pending', N'Debit Card'),
    (1050, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Audio', N'Bluetooth Speaker', N'Eric Foster', '2026-02-27', 6, 79.99, N'Completed', N'PayPal'),
    (1051, N'Emma Collins', N'Kansas City', N'MO', N'Central', N'Small Business', N'Networking', N'WiFi 6 Router', N'Chris Nguyen', '2026-08-24', 1, 159.99, N'Completed', N'Bank Transfer'),
    (1052, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Computers', N'ApexBook Pro 16', N'Alex Carter', '2026-03-31', 3, 1399.99, N'Shipped', N'PayPal'),
    (1053, N'Taylor Morgan', N'Denver', N'CO', N'West', N'Small Business', N'Gaming', N'Gaming Keyboard', N'Eric Foster', '2026-07-04', 7, 129.99, N'Shipped', N'Credit Card'),
    (1054, N'Derek Chen', N'Seattle', N'WA', N'West', N'Small Business', N'Accessories', N'Mechanical Keyboard', N'Eric Foster', '2026-01-14', 6, 89.99, N'Shipped', N'Debit Card'),
    (1055, N'Noah Thompson', N'Detroit', N'MI', N'Central', N'Consumer', N'Accessories', N'Mechanical Keyboard', N'Alex Carter', '2026-03-24', 6, 89.99, N'Cancelled', N'Credit Card'),
    (1056, N'Caleb Foster', N'Nashville', N'TN', N'South', N'Consumer', N'Accessories', N'Laptop Stand', N'Mia Sanders', '2026-03-09', 2, 39.99, N'Completed', N'Bank Transfer'),
    (1057, N'Daniel Lee', N'Boston', N'MA', N'East', N'Corporate', N'Accessories', N'Mechanical Keyboard', N'Bianca Lopez', '2026-08-14', 3, 89.99, N'Returned', N'Debit Card'),
    (1058, N'Noah Thompson', N'Detroit', N'MI', N'Central', N'Consumer', N'Computers', N'ApexBook 14 Laptop', N'Bianca Lopez', '2026-07-12', 6, 899.99, N'Pending', N'Bank Transfer'),
    (1059, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Audio', N'Wireless Headphones', N'Chris Nguyen', '2026-02-14', 2, 149.99, N'Completed', N'Credit Card'),
    (1060, N'Liam Carter', N'Minneapolis', N'MN', N'Central', N'Consumer', N'Audio', N'Wireless Headphones', N'Bianca Lopez', '2026-08-02', 8, 149.99, N'Completed', N'Debit Card'),
    (1061, N'Marcus Reed', N'Dallas', N'TX', N'South', N'Corporate', N'Computers', N'ApexBook 14 Laptop', N'Mia Sanders', '2026-02-23', 7, 899.99, N'Completed', N'Credit Card'),
    (1062, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Displays', N'27-inch Pro Monitor', N'Mia Sanders', '2026-05-15', 7, 329.99, N'Pending', N'PayPal'),
    (1063, N'Avery Johnson', N'Sacramento', N'CA', N'West', N'Consumer', N'Accessories', N'Wireless Pro Mouse', N'Chris Nguyen', '2026-02-19', 5, 59.99, N'Completed', N'Bank Transfer'),
    (1064, N'Caleb Foster', N'Nashville', N'TN', N'South', N'Consumer', N'Displays', N'24-inch Monitor', N'Dana Brooks', '2026-06-09', 2, 179.99, N'Completed', N'Debit Card'),
    (1065, N'Nina Brooks', N'Atlanta', N'GA', N'South', N'Small Business', N'Computers', N'ApexBook Pro 16', N'Mia Sanders', '2026-04-26', 1, 1399.99, N'Shipped', N'Debit Card'),
    (1066, N'Caleb Foster', N'Nashville', N'TN', N'South', N'Consumer', N'Gaming', N'Gaming Controller', N'Alex Carter', '2026-06-24', 6, 69.99, N'Shipped', N'Credit Card'),
    (1067, N'Samuel King', N'Richmond', N'VA', N'East', N'Corporate', N'Audio', N'Bluetooth Speaker', N'Eric Foster', '2026-03-25', 7, 79.99, N'Completed', N'PayPal'),
    (1068, N'Henry Adams', N'Indianapolis', N'IN', N'Central', N'Corporate', N'Accessories', N'Mechanical Keyboard', N'Bianca Lopez', '2026-04-22', 7, 89.99, N'Pending', N'Debit Card'),
    (1069, N'Daniel Lee', N'Boston', N'MA', N'East', N'Corporate', N'Storage', N'2TB Pro SSD', N'Chris Nguyen', '2026-04-18', 1, 189.99, N'Completed', N'Debit Card'),
    (1070, N'Noah Thompson', N'Detroit', N'MI', N'Central', N'Consumer', N'Storage', N'2TB Pro SSD', N'Eric Foster', '2026-06-21', 6, 189.99, N'Shipped', N'Bank Transfer'),
    (1071, N'Lucas Green', N'Baltimore', N'MD', N'East', N'Consumer', N'Accessories', N'Laptop Stand', N'Eric Foster', '2026-05-06', 3, 39.99, N'Shipped', N'PayPal'),
    (1072, N'Emma Collins', N'Kansas City', N'MO', N'Central', N'Small Business', N'Storage', N'4TB External Drive', N'Chris Nguyen', '2026-01-28', 4, 129.99, N'Pending', N'Debit Card'),
    (1073, N'Maria Stone', N'Folsom', N'CA', N'West', N'Small Business', N'Accessories', N'Wireless Pro Mouse', N'Alex Carter', '2026-03-15', 4, 59.99, N'Completed', N'Credit Card'),
    (1074, N'James Monroe', N'Austin', N'TX', N'South', N'Corporate', N'Computers', N'ApexBook Pro 16', N'Dana Brooks', '2026-04-20', 2, 1399.99, N'Pending', N'Bank Transfer'),
    (1075, N'Melissa Grant', N'Boston', N'MA', N'East', N'Consumer', N'Gaming', N'Gaming Keyboard', N'Chris Nguyen', '2026-05-09', 3, 129.99, N'Cancelled', N'PayPal'),
    (1076, N'Andre Lewis', N'Sacramento', N'CA', N'West', N'Consumer', N'Storage', N'2TB Pro SSD', N'Mia Sanders', '2026-06-12', 5, 189.99, N'Shipped', N'Debit Card'),
    (1077, N'Megan Price', N'Denver', N'CO', N'West', N'Corporate', N'Displays', N'27-inch Pro Monitor', N'Eric Foster', '2026-07-01', 1, 329.99, N'Returned', N'Credit Card'),
    (1078, N'Michael Young', N'Miami', N'FL', N'South', N'Consumer', N'Audio', N'Wireless Headphones', N'Bianca Lopez', '2026-07-18', 6, 149.99, N'Completed', N'PayPal'),
    (1079, N'Morgan Fields', N'Chicago', N'IL', N'Central', N'Small Business', N'Networking', N'WiFi 6 Router', N'Alex Carter', '2026-08-03', 2, 159.99, N'Pending', N'Credit Card'),
    (1080, N'Michelle Park', N'New York', N'NY', N'East', N'Corporate', N'Displays', N'34-inch Gaming Monitor', N'Dana Brooks', '2026-08-22', 2, 549.99, N'Completed', N'Bank Transfer');
GO

-- Quick verification
SELECT TOP (10) *
FROM dbo.Orders
ORDER BY OrderID;
