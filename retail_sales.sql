Query 1: Total Revenue

SELECT SUM(total_amount) AS total_revenue
FROM retail_sales;

Query 2 Revenue by Product Category

SELECT
    product_category,
    SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY product_category
ORDER BY revenue DESC;

Query 3: Revenue by Gender

SELECT
    gender,
    SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY gender;

Query 4: Top 10 Customers

SELECT
    customer_id,
    SUM(total_amount) AS spending
FROM retail_sales
GROUP BY customer_id
ORDER BY spending DESC
LIMIT 10;

Query 5: Monthly Sales Trend

SELECT
    month,
    SUM(total_amount) AS monthly_sales
FROM retail_sales
GROUP BY month
ORDER BY monthly_sales DESC;

Query 6: Sales by Age Group

SELECT
    age,
    SUM(total_amount) AS revenue
FROM retail_sales
GROUP BY age
ORDER BY revenue DESC;

Query 7: Best Selling Product Category

SELECT
    product_category,
    SUM(quantity) AS units_sold
FROM retail_sales
GROUP BY product_category
ORDER BY units_sold DESC;