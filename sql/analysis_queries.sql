/*
Northstar Retail - SQL Filtering Mini Project

Rules:
- Use only SQL concepts you have learned so far.
- End each finished query with a semicolon.
- Add a short comment explaining what your query is doing.
- Do not use GROUP BY, JOIN, subqueries, or other concepts not required yet.
*/

USE NorthstarRetailDB;
GO


/* ============================================================
TICKET 01 — Operations
Request:
"Give me all orders that are still Pending."

Skills: WHERE, comparison operator
============================================================ */

-- Write your query below:

SELECT TOP(10) *
FROM Orders;

SELECT *
FROM Orders
WHERE OrderStatus = 'Pending';

--First, I reviewed the top 10 data to review the data and locate the correct column
--Then I used an equal sign with the value of Pending to show me only Pended orders. 
--Results show 12 orders currently in Pending status

/* ============================================================
TICKET 02 — West Coast Sales
Request:
"Show orders from California, Washington, or Oregon.
Only show OrderID, CustomerName, State, ProductName, and OrderStatus.
Sort by State, then CustomerName."

Skills: SELECT columns, IN, ORDER BY
============================================================ */

-- Write your query below:

-- Return orders from CA, WA, and OR with only the requested columns.
-- Sort results by State, then CustomerName.
SELECT OrderID, CustomerName, State, ProductName, OrderStatus
FROM Orders
WHERE State IN ('CA', 'WA', 'OR')
ORDER BY State, CustomerName;

/* ============================================================
TICKET 03 — Sales Manager
Request:
"I want orders handled by Alex Carter where the quantity was 4 or more."

Skills: AND, >=
============================================================ */

-- Write your query below:
SELECT *
FROM dbo.Orders
WHERE SalesRep = 'Alex Carter' AND Quantity >= 4;

-- Return orders handled by Alex Carter with a quantity of 4 or more.



/* ============================================================
TICKET 04 — Customer Service
Request:
"Find orders that were either Cancelled or Returned."

Skills: OR
============================================================ */

-- Write your query below:
SELECT *
FROM dbo.Orders
WHERE OrderStatus IN ('Cancelled','Returned');

--Return orders that are either cancelled or returned. 12 records found. 

/* ============================================================
TICKET 05 — Product Team
Request:
"Show products with 'Pro' anywhere in the product name."

Skills: LIKE
============================================================ */

-- Write your query below:
SELECT ProductName
FROM dbo.Orders
WHERE ProductName LIKE '%Pro%';

-- Return products that show "Pro" anywhere in the ProductName. 19 records found.


/* ============================================================
TICKET 06 — Finance
Request:
"Show orders where UnitPrice is between $100 and $300.
Sort from highest UnitPrice to lowest."

Skills: BETWEEN, ORDER BY DESC
============================================================ */

-- Write your query below:
SELECT *
FROM dbo.Orders
WHERE UnitPrice BETWEEN 100 AND 300  
ORDER BY UnitPrice Desc;
--Return orders with UnitPrice between $100 and $300 
--Sorted UnityPrice by descending, highest to lowest.
--Validation: 42 records returned

/* ============================================================
TICKET 07 — Regional Director
Request:
"Show orders that are NOT from the West region."

Skills: NOT
============================================================ */

-- Write your query below:
SELECT *
FROM dbo.Orders
WHERE NOT Region = 'West';

--Return orders that are not in the West region
--Validation: 61 records returned


/* ============================================================
TICKET 08 — Marketing
Request:
"Find Consumer customers who purchased an Audio or Gaming product."

Skills: AND, OR / IN
============================================================ */

-- Write your query below:

SELECT *
FROM dbo.Orders
WHERE CustomerType = 'Consumer' AND ProductCategory IN ('Audio', 'Gaming');

--Returned Consumers orders for either Gaming or Audio products
--Validation: 12 Records returned

/* ============================================================
TICKET 09 — Quarterly Review
Request:
"Show all orders placed between April 1, 2026 and June 30, 2026.
Sort them from earliest to latest."

Skills: BETWEEN with dates, ORDER BY
============================================================ */

-- Write your query below:
SELECT *
FROM dbo.Orders
WHERE OrderDate BETWEEN '04/01/2026' AND '06/30/2026'
ORDER BY OrderDate;

--Return all orders from 4/1/26 through 6/30/2026
--Sort orders from earliest to latest
--Validation: 22 Records returned


/* ============================================================
TICKET 10 — Account Research
Request:
"Find customers whose names begin with the letter M."

Skills: LIKE
============================================================ */

-- Write your query below:
SELECT DISTINCT CustomerName
FROM dbo.Orders
WHERE CustomerName LIKE 'M%';

--Return customers that start with the letter M
--Validation: 9 unique customers returned
--Only shows CustomerName column

/* ============================================================
TICKET 11 — Management
Request:
"Give me a unique list of all product categories represented
in the order data, alphabetically."

Skills: DISTINCT, ORDER BY
============================================================ */

-- Write your query below:
SELECT DISTINCT ProductCategory
FROM dbo.Orders
ORDER BY ProductCategory;

--Return unique product categories 
--Sort categories by Alphabetical order
--Validation: 7 unique product categories returned


/* ============================================================
TICKET 12 — Exception Review
Request:
"Find Pending orders from Corporate customers where the
UnitPrice is greater than $300."

Skills: multiple AND conditions, >
============================================================ */

-- Write your query below:



/* ============================================================
FINAL CHALLENGE — Sales Investigation
Request:
"We're reviewing larger West-region orders. Show orders that:
- are from the West region,
- have a quantity between 2 and 6,
- are NOT Cancelled,
- and have either 'Pro' or 'Wireless' in the product name.

Return:
OrderID, CustomerName, State, ProductName, Quantity,
UnitPrice, OrderStatus, and SalesRep.

Sort by UnitPrice from highest to lowest."

Skills: AND, NOT, BETWEEN, LIKE, OR, ORDER BY
============================================================ */

-- Write your query below:

