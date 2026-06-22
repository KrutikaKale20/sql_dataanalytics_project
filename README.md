
# SQL Data Analytics Project

## Overview
End-to-end SQL analytics project analysing sales performance, 
customer segmentation, and product KPIs across 60,000+ transactions.

## Tools Used
- SQLite / DB Browser for SQLite
- SQL (CTEs, Window Functions, Views, Aggregations)

## Dataset
Three tables: dim_customers, dim_products, fact_sales

## Analysis Performed
- Change over time analysis (revenue trends by year/month)
- Cumulative sales and moving average price
- Product performance vs average benchmarks
- Customer segmentation (VIP, Regular, New)
- Part-to-whole category analysis
- Customer and Product report views with KPIs

## Key Findings

### Sales Performance (2010–2014)
Sales peaked significantly in 2013 at £16.3M across 17,427 customers, 
representing the strongest year in the dataset. 2011 and 2012 maintained 
solid performance at £7.1M and £5.8M respectively, while 2010 and 2014 
show partial year data with lower figures.

### Customer Segmentation
Of 18,484 total customers analysed:
- 79.8% are New customers (14,754) — high acquisition but retention opportunity
- 11.3% are Regular customers (2,096) — established but moderate spenders
- 8.9% are VIP customers (1,634) — long-term, high-value accounts

The data suggests the business relies heavily on new customer acquisition. 
A retention strategy targeting the 14,754 New customers could significantly 
increase the VIP and Regular base over time.

### Top Performing Products
The Mountain-200 product line dominates revenue, with all top 5 products 
belonging to this range. The Mountain-200 Black (46) leads at £1.37M, 
with minimal variation across the top 5 — suggesting strong, consistent 
demand for this product family with no single variant significantly 
outperforming others.
