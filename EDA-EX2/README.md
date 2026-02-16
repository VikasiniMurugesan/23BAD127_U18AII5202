Name: Vikasini M
Roll No: 23BAD127

**Experiment Title**

Exploratory Data Analysis using Advanced Visualization Techniques

**Objective**

To explore data distribution, variability, and abnormal patterns in e-commerce transaction data using visualization techniques such as histogram, boxplot, and heatmap.

**Scenario**

A startup analyzes e-commerce transaction data to understand customer spending behavior and detect abnormal purchase patterns for better business decision-making.

Software & Tools Used

R Version: 4.4.1

Libraries Used:

ggplot2

dplyr

tidyr

**Dataset Description**

File Name: 2.ecommerce_transactions.csv

Number of Records: 100

Attributes:

Transaction_ID

Customer_ID

Transaction_Date

Product_Category

Transaction_Amount

Payment_Mode

Region

**Steps Performed**
1. Library Loading

Required R libraries were loaded for data manipulation and visualization.

2. Data Import and Inspection

The dataset was imported using read.csv() and inspected using str() and summary() to understand data structure and summary statistics.

3. Histogram – Transaction Amount Distribution

A histogram was plotted to visualize the distribution of transaction amounts and identify spending patterns.

4. Boxplot – Outlier Detection

A boxplot was used to detect abnormal or extreme transaction values indicating possible outliers.

5. Heatmap – Monthly Sales Intensity

The transaction date was converted to Date format.

Month was extracted from the transaction date.

Monthly total sales were calculated.

A heatmap was created to visualize sales intensity across months.

**Outputs Generated**

Histogram showing transaction amount distribution

Boxplot highlighting outliers

Heatmap representing monthly sales intensity

(Screenshots of code and output are attached separately)

**Result**

The analysis revealed customer spending distribution, detected high-value transactions as outliers, and highlighted monthly variations in sales intensity.

**Conclusion**

Exploratory data analysis using visualization techniques provides meaningful insights into customer behavior and sales trends. These insights can support anomaly detection, business planning, and AI-driven decision-making.
