SELECT 
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin_pct
FROM sales_data;

SELECT COUNT(*) FROM sales_data;

CREATE TABLE sales_data (
    order_id TEXT,
    order_date DATE,
    customer_name TEXT,
    region TEXT,
    category TEXT,
    sub_category TEXT,
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC
);

SELECT ROUND(SUM(profit)/SUM(sales)*100, 2) AS profit_margin_pct
FROM sales_data;

SELECT 
    category,
    SUM(sales) AS revenue,
    SUM(profit) AS profit,
    ROUND(SUM(profit)/SUM(sales)*100, 2) AS margin_pct
FROM sales_data
GROUP BY category
ORDER BY margin_pct DESC;

SELECT 
    sub_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND((SUM(profit)/SUM(sales))*100, 2) AS margin_pct
FROM sales_data
GROUP BY sub_category
ORDER BY margin_pct ASC;

SELECT 
    discount,
    COUNT(*) AS orders,
    ROUND(AVG(profit), 2) AS avg_profit
FROM sales_data
GROUP BY discount
ORDER BY discount;