# Northstar Retail SQL Filtering Project

## Project Scenario

You are a junior data analyst supporting **Northstar Retail**, a fictional technology retailer.
Business teams have started sending requests for filtered order data. Your job is to write clear,
readable SQL queries that answer each request accurately.

This project focuses on foundational SQL skills:

- SELECT
- DISTINCT
- WHERE
- Comparison operators
- AND
- OR
- NOT
- BETWEEN
- IN
- LIKE
- ORDER BY

## Dataset

The project contains one table:

`dbo.Orders`

Columns:

- OrderID
- CustomerName
- City
- State
- Region
- CustomerType
- ProductCategory
- ProductName
- SalesRep
- OrderDate
- Quantity
- UnitPrice
- OrderStatus
- PaymentMethod

## Business Requests

Complete the requests in `sql/analysis_queries.sql`.

Do not modify the original dataset to answer a request.

## Repository Structure

```text
northstar-retail-sql-project/
├── README.md
├── data/
│   └── northstar_retail_orders.csv
├── setup/
│   └── northstar_retail_setup.sql
└── sql/
    └── analysis_queries.sql
```

## How to Run

1. Open SQL Server Management Studio.
2. Open `setup/northstar_retail_setup.sql`.
3. Run the script. It creates `NorthstarRetailDB` and loads the practice data.
4. Open `sql/analysis_queries.sql`.
5. Complete each ticket.
6. Run and verify each query.
7. Commit your completed work to GitHub.

## Project Goal

Treat each ticket like a small real-world analyst request. Prefer readable SQL over clever SQL.
Add short comments explaining your interpretation when a request could be misunderstood.
