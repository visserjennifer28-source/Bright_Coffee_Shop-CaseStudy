# Bright Coffee Shop Sales Analysis

# Overview

This case study focuses on analyzing historical transactional data from Bright Coffee Shop to uncover actionable business insights. The goal of the analysis is to support data-driven decision-making by identifying key revenue drivers, understanding customer purchasing behavior, and highlighting opportunities for growth.

The project explores sales performance across products, categories, and time intervals, providing strategic recommendations to improve overall business performance.

# Approach & Methodology

# 1. Data Collection

The dataset consists of transactional records from the coffee shop’s point-of-sale (POS) system, including:

* Product names and categories

* Unit prices

* Quantity sold

* Transaction timestamps

# 2. Data Processing (ETL)

A structured ETL (Extract, Transform, Load) process was implemented:

* Data Cleaning: Removed duplicates and handled missing values

* Standardization: Ensured consistent formatting of unit prices and timestamps

* Feature Engineering:

  a) Created total_amount (price × quantity)

  b) Grouped timestamps into time intervals (30/60 minutes)

# 3. Data Analysis

SQL queries and pivot tables were used to analyze:

* Revenue by product category

* Sales trends over time

* Transaction volume patterns

* Product performance (top-sellers vs underperformers)

# 4. Visualization

Insights were presented using charts such as:

* Bar charts (category revenue)

* Line graphs (sales trends over time)

* Column charts (transaction density)

* Pie charts (product contribution)

# Key Insights
* Top Revenue Drivers: Beverage products (e.g., coffee-based drinks) contributed the largest share of total revenue.

* Best-Selling Products: High-volume items such as espresso and regular coffee dominated sales quantity.

* Peak Sales Periods: The morning hours (especially early commute times) generated the highest sales activity.

* Low-Performance Periods: Mid-afternoon showed a noticeable drop in transaction volume.

* Product Opportunities: Some items underperformed, indicating potential for promotional strategies or menu optimization.

# Summary of Findings

The analysis revealed that a significant portion of revenue is driven by a limited number of high-performing products and peak time periods. Customer behavior is highly time-dependent, with strong demand during morning hours and reduced activity later in the day.

By leveraging these insights, the business can:

* Optimize inventory for high-demand products

* Align staffing with peak hours

* Introduce targeted promotions during slower periods

* Improve overall operational efficiency

# Tools & Technologies Used
* SQL – Data extraction, transformation, and aggregation

* Snowflake – Data storage and querying

* Microsoft Excel – Pivot tables and data visualization

* PowerPoint – Presentation of insights

* Miro – Data architecture and workflow visualization

# Conclusion

This case study demonstrates the value of data analytics in driving business decisions. By transforming raw transactional data into meaningful insights, Bright Coffee Shop can enhance its sales strategy, improve customer experience, and unlock new growth opportunities.



