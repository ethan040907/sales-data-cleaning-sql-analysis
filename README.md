# Sales Data Cleaning and SQL Analysis

## Project Overview

This project demonstrates an end-to-end data analysis workflow: cleaning a poorly structured Excel dataset, transforming it into a usable format, and analyzing it using SQL to generate business insights.

The original dataset contained multi-row headers and sales values spread across multiple columns, making direct analysis difficult. Using Python and pandas, the data was cleaned and reshaped into a structured format, then loaded into MySQL for querying and analysis.

---

## Business Questions

This analysis focuses on answering the following:

- Which customer segment generated the most total sales?
- Which shipping mode generated the most total sales?
- Which segment and shipping mode combination performed best?
- How did sales trend over time, both monthly and yearly?

---

## Tools Used

- Excel
- Python / pandas
- Jupyter Notebook
- SQL / MySQL
- MySQL Workbench

---

## Data Cleaning Process

The raw dataset was cleaned and transformed using Python. Key steps included:

- Loading the original Excel file while preserving its structure
- Rebuilding column headers from multiple rows
- Converting data from wide format to long format
- Removing invalid or blank rows created during restructuring
- Splitting combined fields into `segment` and `ship_mode`
- Converting `order_date` into proper date format
- Converting `sales` into numeric format
- Validating the final dataset before export

---

## Data Validation

The final cleaned dataset contains **822 rows and 4 columns**:

- `order_date`
- `segment`
- `ship_mode`
- `sales`

Validation checks confirmed:

- No missing values
- No duplicate rows
- All sales values are numeric and positive
- Sales distribution is right-skewed, indicating a small number of high-value transactions

---

## Key Insights

### 1. Sales by Customer Segment

The **Consumer segment** generated the highest total sales.

**Interpretation:**  
This indicates that revenue is heavily driven by Consumer customers, making this segment the primary contributor to overall sales performance.

---

### 2. Sales by Shipping Mode

**Standard Class shipping** generated the highest total sales.

**Interpretation:**  
This suggests that Standard Class is the dominant shipping mode by sales contribution. However, shipping cost, delivery time, and profit data would be needed to determine whether this shipping mode is also the most efficient or profitable.

---

### 3. Sales by Segment and Shipping Mode

The **Consumer segment using Standard Class shipping** produced the highest total sales.

**Interpretation:**  
This combination represents the strongest sales contributor in the dataset and reinforces that Consumer customers using Standard Class shipping are an important part of overall sales performance.

---

### 4. Monthly Sales Trend

Sales showed **significant fluctuations across months**, with sharp spikes rather than a consistent trend.

**Interpretation:**  
Revenue appears to be influenced by irregular high-performing periods rather than steady month-to-month growth. This suggests that a small number of strong months contributed disproportionately to total sales.

---

### 5. Yearly Sales Performance

Total sales were highest in **2016**, which also had the highest number of records.

However, **average sales per record were highest in 2013**.

**Interpretation:**  
Overall growth appears to be driven mainly by increased sales activity, as the number of records rose over time while average sales per record remained below the 2013 level. This suggests that 2016's higher total sales were more closely associated with transaction volume than with larger individual sales values.

---

## Final Recommendations

Based on the available data:

- Focus further analysis on the **Consumer segment**, as it is the primary revenue driver
- Review **Standard Class shipping** performance alongside shipping cost, delivery time, and profit data
- Investigate whether increased yearly sales activity was driven by more customers, repeat purchases, or broader product demand
- Investigate the causes of irregular monthly spikes to identify repeatable drivers of high performance

---

## Limitations

This dataset only includes:

- `order_date`
- `segment`
- `ship_mode`
- `sales`

Due to these limitations, this analysis identifies **what happened**, but cannot fully explain **why it happened**.

Further analysis would require additional fields such as:

- Product category
- Customer ID
- Order quantity
- Profit
- Discount
- Region
- Shipping cost

---

## Conclusion

This project demonstrates a complete data workflow: transforming messy raw data into a structured dataset, analyzing it using SQL, and translating results into clear, business-focused insights.
