# Task 4 - SQL for Data Analysis

This project is part of the Data Analyst Internship tasks.  
The goal is to use SQL queries to extract and analyze data from a sample **Ecommerce database**.

---

## Files in this Repository
- **`ecommerce_sample.sql`** → Database schema + sample data (tables + inserts).  
- **`task4.sql`** → SQL queries for analysis.  
- **`screenshots/`** → Query result screenshots and charts.  
- **`README.md`** → Project explanation (this file).  

---

## Database Schema
The dataset simulates an Ecommerce platform with the following tables:
- **Users**: Customer information (user_id, name, country, signup_date).  
- **Products**: Product details (product_id, name, category, price).  
- **Orders**: Order information (order_id, user_id, order_date, total_amount).  
- **Order_Items**: Order breakdown (order_item_id, order_id, product_id, quantity, subtotal).  

---

## Queries Included
1. **Top 5 most expensive products** (SELECT + ORDER BY).  
2. **Total sales by country** (JOIN + GROUP BY).  
3. **Customers who spent above average order value** (Subquery).  
4. **Orders with customer details** (INNER JOIN).  
5. **Products with their order items** (LEFT JOIN).  
6. **Right Join example** (not supported in SQLite, but works in MySQL/PostgreSQL).  
7. **Average revenue per user** (Aggregate function).  
8. **Sales summary view** (CREATE VIEW).  
9. **Index optimization** (CREATE INDEX).  

---

## Screenshots
The **`screenshots/`** folder contains:
- Query result tables (PNG).  
- Charts (bar plots) for better visualization.  

---

## Steps to Run
1. Import `ecommerce_sample.sql` into your database (MySQL/Postgres/SQLite).  
2. Run queries from `task4.sql`.  
3. Compare your outputs with the provided screenshots.  
4. Explore and extend queries for deeper insights.  

---

## Outcome
- Learned how to query structured data using SQL.  
- Practiced joins, aggregates, subqueries, views, and indexing.  
- Produced both tabular outputs and visualizations for analysis.  
