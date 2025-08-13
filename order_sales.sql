create database online_sales
use database online_sales

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    amount DECIMAL(10,2)
);

INSERT INTO orders (order_id, order_date, customer_id, amount) VALUES
(1, '2024-01-15', 101, 250.00),
(2, '2024-01-20', 102, 150.00),
(3, '2024-02-05', 103, 300.00),
(4, '2024-02-18', 104, 200.00),
(5, '2024-03-02', 105, 450.00),
(6, '2024-03-15', 101, 350.00),
(7, '2024-04-10', 102, 500.00),
(8, '2024-04-25', 103, 400.00),
(9, '2024-05-05', 104, 600.00),
(10,'2024-05-15', 105, 550.00),
(11,'2024-06-01', 106, 700.00),
(12,'2024-06-12', 107, 800.00);

SELECT 
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY order_year, order_month
ORDER BY order_year, order_month;