# Sales Data Cleaning and SQL Analysis

## Project Overview

This project focuses on cleaning a badly structured Excel sales file and preparing it for SQL analysis.

The original dataset contained multi-row headers and sales values spread across multiple columns, making it difficult to analyze directly. I cleaned and reshaped the data into a tidy format, loaded it into MySQL, and used SQL queries to generate business insights.

## Business Questions

This analysis answers the following questions:

- Which customer segment generated the most total sales?
- Which shipping mode generated the most total sales?
- Which segment and shipping mode combination performed best?
- How did sales trend by month?
- How did sales trend by year?

## Tools Used

- Excel
- Python / pandas
- Jupyter Notebook
- SQL / MySQL
- MySQL Workbench


## Data Cleaning Summary

The raw Excel file was cleaned using Python and pandas. The main cleaning steps were:

- Loaded the raw Excel file while preserving the original structure.
- Rebuilt column headers from multiple header rows.
- Converted the data from wide format to long format.
- Removed blank sales rows created during restructuring.
- Split combined fields into separate `segment` and `ship_mode` columns.
- Converted `order_date` into date format.
- Converted `sales` into numeric format for calculation.
- Validated the final cleaned dataset before export.

## Data Validation Summary

The final cleaned dataset contains 822 rows and 4 columns:

- `order_date`
- `segment`
- `ship_mode`
- `sales`

Validation checks confirmed that:

- There were no missing values in the final dataset.
- There were no duplicate rows.
- Sales values were successfully converted into numeric format.
- All sales values were positive.
- The sales distribution was right-skewed, meaning a small number of high-value orders increased the average sales value.

## SQL Analysis

After cleaning, the dataset was loaded into MySQL for analysis.

The SQL analysis focused on:

- Total sales by customer segment
- Total sales by shipping mode
- Total sales by segment and shipping mode combination
- Monthly sales trends
- Yearly sales summary, including total sales, record count, and average sales

## Key Findings

### 1. Sales By Customer Segment

**Business question:**  
Which customer segment generated the most sales?

**SQL output used:**  
`sales_by_segment.csv`

**Finding:**  
The Consumer segment generated the highest total sales.

**Business meaning:**  
This suggests that the Consumer segment is the strongest revenue contributor in the dataset.

**Recommendation:**  
Further analysis should compare profit, order quantity, and customer count by segment to understand whether this segment is also the most profitable.

---

### 2. Sales By Shipping Mode

**Business question:**  
Which shipping mode generated the most sales?

**SQL output used:**  
`sales_by_ship_mode.csv`

**Finding:**  
Standard Class shipping generated the highest total sales.

**Business meaning:**  
This suggests that Standard Class shipping is commonly associated with higher total sales.

**Recommendation:**  
Further analysis should compare shipping cost, delivery time, and profit by shipping mode before making operational decisions.

---

### 3. Sales By Segment And Shipping Mode

**Business question:**  
Which customer segment and shipping mode combination generated the most sales?

**SQL output used:**  
`sales_by_segment_ship_mode.csv`

**Finding:**  
The Consumer segment using Standard Class shipping generated the highest total sales.

**Business meaning:**  
This combination appears to be an important driver of sales performance.

**Recommendation:**  
The business should investigate whether this combination also produces strong profit margins, not just high revenue.

---

### 4. Monthly Sales Trend

**Business question:**  
How did sales change over time by month?

**SQL output used:**  
`monthly_sales_trend.csv`

**Finding:**  
Monthly sales fluctuated significantly across the period, with sharp spikes rather than a smooth upward or downward trend. The highest monthly sales occurred in March 2013 at 32,911.12, while the lowest monthly sales occurred in February 2014 at 1,156.51. Another major spike appeared in November 2016 at 28,717.42.

**Business meaning:**  
This suggests that monthly sales performance was uneven and may have been influenced by specific high-value months rather than consistent month-to-month growth. The large spikes indicate that a few months contributed disproportionately to overall sales.

**Recommendation:**  
Further analysis should investigate whether the high-sales months were driven by specific products, customers, promotions, seasonal demand, or unusually large orders. Additional data such as product category, customer ID, order quantity, discount, and profit would be needed to explain the cause of these spikes.

---

### 5. Yearly Sales Summary

**Business question:**  
How did sales perform across years, and were changes in total sales driven more by the number of records or by higher average sales values?

**SQL output used:**  
`yearly_sales_summary.csv`

**Finding:**  
2016 recorded the highest total sales at 122,977.00, with the highest number of records at 274. The number of records increased each year from 165 in 2013 to 274 in 2016.

However, 2013 had the highest average sales per record at 629.37, even though it had fewer records than later years. Average sales dropped to 419.76 in 2014, then recovered slightly to 439.15 in 2015 and 448.82 in 2016.

**Business meaning:**  
The increase in total sales by 2016 appears to be driven mainly by a higher number of sales records rather than a major increase in average sales per record. This suggests stronger sales activity in 2016.

In contrast, 2013 appears to have been supported by higher-value records, since its average sales per record was the highest in the dataset. This may indicate that 2013 included several larger transactions, although the dataset does not contain enough detail to confirm the cause.

**Recommendation:**  
Further analysis should investigate what drove the increase in record count by 2016 and why 2013 had a higher average sales value. Additional fields such as customer ID, product category, order quantity, profit, discount, and region would help determine whether yearly sales changes were caused by more customers, repeat purchases, specific products, or unusually large transactions.

## Limitations

This dataset only contains `order_date`, `segment`, `ship_mode`, and `sales`.

Because the dataset does not include product, profit, discount, quantity, customer ID, region, or marketing information, this analysis can identify sales patterns but cannot fully explain the exact causes behind those patterns.

Further analysis would require additional fields such as product category, profit, order quantity, customer details, region, discount, and shipping cost.

## Final Deliverables

This project produced the following outputs:

- Cleaned sales dataset
- SQL analysis queries
- Exported SQL summary tables
- Analysis notes
- Portfolio README summary

## Conclusion

This project demonstrates a complete beginner-friendly data analysis workflow: cleaning messy Excel data with Python, validating the cleaned dataset, loading it into MySQL, using SQL to answer business questions, and translating query results into client-friendly insights.
