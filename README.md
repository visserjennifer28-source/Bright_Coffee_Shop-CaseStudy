# Project Overview


This project analyzes transactional data from Bright Coffee Shop to generate actionable business insights. The goal is to support decision-making by identifying revenue drivers, understanding customer behavior, and uncovering opportunities for growth.

# Objectives
Identify top-performing products

Analyze sales trends across different time intervals

Evaluate product performance (revenue vs volume)

Provide strategic recommendations to increase revenue

# Dataset Description


The dataset contains point-of-sale (POS) transaction records, including:

* Product Name & Category

* Unit Price

* Quantity Sold

* Transaction Date & Time

* Methodology


# Data Processing (ETL)
Cleaned dataset (removed nulls & duplicates)

Standardized formats (price & timestamps)

Created calculated fields:

total_amount = unit_price × quantity

Grouped data into time buckets (30/60 mins)



# Data Analysis


Performed using SQL & pivot tables:

Revenue by category

Sales trends over time

Transaction volume distribution

Product-level performance



# Data Visualization
* Bar Charts → Revenue by category

* Line Charts → Sales trends

* Column Charts → Transaction density

* Pie Charts → Product contribution

# Key Insights
* Beverages dominate revenue, contributing the highest share of total sales

* Top-selling items include espresso-based drinks and regular coffee

* Peak sales occur in the morning, driven by commuter demand

* Afternoon slump identified with lower transaction volume

* Some products underperform and may require promotion or removal

# Business Recommendations
  * Launch targeted promotions during low-traffic hours

* Optimize inventory for high-demand products

* Introduce product bundles (e.g., coffee + pastry deals)

* Align staffing with peak sales periods

* Explore digital solutions (loyalty programs, mobile ordering)

