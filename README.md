# Mobile Sales Data Analysis — SQL

## Project Overview

This project demonstrates practical SQL data analysis using a 50,000-row mobile sales dataset. The analysis focuses on extracting business insights from sales, products, customers, pricing, quantities, brands, regions, inventory dates, and dispatch activity.

The project follows a structured analytical workflow: data exploration, filtering, sorting, transformation, aggregation, conditional analysis, date analysis, and business-focused SQL.

## Objectives

The main objectives of this project are to:

- Explore and understand the mobile sales dataset
- Analyze products, brands, pricing, and quantity sold
- Examine customer and regional sales information
- Analyze inventory and dispatch activity
- Apply SQL filtering, sorting, functions, aggregation, and conditional logic
- Identify patterns and relationships within the data
- Translate business questions into SQL queries
- Communicate data-driven findings clearly

## SQL Analysis Covered

- Data exploration and filtering
- Product and brand analysis
- Price and quantity analysis
- Customer analysis
- Regional analysis
- Sorting and conditional filtering
- Aggregate analysis
- String manipulation
- Conditional logic using CASE
- Date and time analysis
- Date difference calculations
- Inventory and dispatch analysis
- Business-focused analytical queries
- Subqueries
- Common Table Expressions (CTEs)
- Window functions for ranking and partitioned analysis

## Tools Used

- Microsoft SQL Server
- SQL
- GitHub
- CSV

## SQL Skills Demonstrated

### Data Exploration

- SELECT
- Column selection
- Filtering records
- Sorting results
- Exploring dataset structure

### Data Filtering and Logic

- WHERE
- AND
- OR
- NOT
- BETWEEN
- Conditional filtering

### Data Sorting

- ORDER BY
- ASC
- DESC
- Multiple-column sorting

### Data Aggregation

- GROUP BY
- HAVING
- SUM
- COUNT
- AVG
- MIN
- MAX

### Conditional Analysis

- CASE statements
- Business classification
- Conditional logic

### String Functions

- UPPER
- LOWER
- TRIM
- LEN
- CONCAT

### Date Analysis

- YEAR
- MONTH
- DAY
- DATEDIFF
- Inventory-to-dispatch duration analysis

### Advanced SQL

- Subqueries
- Correlated subqueries
- Common Table Expressions (CTEs)
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- PARTITION BY
- Windowed SUM()
- Windowed AVG()

## Key Dataset Findings

The analysis was performed on the repository's 50,000-row dataset.

- **Total transactions:** 50,000
- **Total quantity sold:** 275,689 units
- **Total gross sales value:** ₦28.28 billion
- **Average product price:** ₦102,641.41
- **Average transaction sales value:** ₦565,581.62
- **Price range:** ₦5,008 to ₦199,999
- **Product mix:** 25,017 laptops and 24,983 mobile phones
- **Highest-sales region:** West, with approximately ₦5.86 billion in gross sales
- **Highest-sales brand:** Google, with approximately ₦1.51 billion in gross sales
- **Dispatch delays over 7 days:** 44,247 transactions, approximately 88.5% of the dataset

### Price Segmentation

Using the project's final price categories:

- **Low Price:** below ₦75,000 — 17,997 transactions
- **Medium Price:** ₦75,000–₦150,000 — 19,142 transactions
- **High Price:** above ₦150,000 — 12,861 transactions

## Business Insights

The analysis shows that the dataset contains a nearly balanced mix of laptops and mobile phones by transaction count, while laptops generate slightly higher total sales value.

Regional sales are relatively close across the five regions, with the West region recording the highest gross sales value. This suggests that sales are distributed across the business rather than being concentrated overwhelmingly in one region.

Brand-level sales are also relatively distributed. Google records the highest gross sales among the brands in the dataset, followed by Nokia and Apple.

The dispatch analysis identifies a significant operational pattern: a large proportion of transactions take more than seven days from inward receipt to dispatch. This provides a clear area for further operational investigation.

## Business Questions

The analysis explores questions such as:

1. Which products have the highest prices?
2. Which products have the highest quantities sold?
3. Which brands appear most frequently in the dataset?
4. What are the sales patterns across different regions?
5. Which products combine higher prices with stronger quantities sold?
6. How can customer and product information be analyzed together?
7. Which brands generate the highest gross sales value?
8. Which regions generate the highest gross sales value?
9. Which products have sales above the overall average?
10. Which products are priced above their brand average?
11. Which products have the highest price within each brand?
12. Which transactions experience dispatch delays exceeding seven days?

## Analysis Approach

The project follows a structured data analysis process:

1. Understand the dataset and business requirements
2. Explore available fields and records
3. Filter relevant records
4. Sort and organize results
5. Apply SQL functions and conditional logic
6. Calculate business metrics
7. Analyze patterns and relationships
8. Apply advanced SQL techniques
9. Interpret findings
10. Communicate business insights

## Project Structure

The repository contains the following project files:

- `Patrick-Goodness  mobile-sales-sql-analysis.sql` — SQL queries used for data exploration, filtering, sorting, aggregation, conditional analysis, date analysis, advanced SQL, and business-focused analysis.
- `mobile_sales_data.csv` — Mobile sales dataset used for the analysis.
- `README.md` — Project documentation, findings, methodology, and SQL skills demonstrated.
- `BUSINESS_INSIGHTS.md` — Detailed business findings and recommendations from the dataset analysis.

## Business Recommendations

Based on the descriptive analysis:

- Investigate the causes of dispatches taking more than seven days and identify operational bottlenecks.
- Review regional performance, particularly the West region, to understand which products and brands contribute most to its sales.
- Examine brand-level sales and quantity patterns to understand whether high sales value is driven by pricing, volume, or both.
- Use the price segmentation to compare demand and sales value across low-, medium-, and high-price products.
- Combine future customer-level analysis with repeat-purchase or customer-segmentation data if additional customer history becomes available.

These recommendations are based on the current dataset and should be treated as areas for further investigation rather than causal conclusions.

## Skills Demonstrated

This project demonstrates my ability to:

- Work with large structured datasets using SQL
- Write business-focused SQL queries
- Filter and organize data effectively
- Apply SQL functions and conditional logic
- Perform aggregation and grouped analysis
- Analyze sales, products, customers, and regional information
- Analyze operational timing using dates
- Translate business questions into analytical queries
- Use advanced SQL for comparative analysis
- Interpret query results and communicate findings

## Project Status

**Completed portfolio project.**

The SQL analysis, dataset, documentation, and business findings are now organized in the repository.

Future improvements can include connecting the SQL results to Power BI for interactive visualization and building a separate advanced SQL project using more complex analytical techniques.
