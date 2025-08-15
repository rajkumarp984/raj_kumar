CREATE DATABASE sales_db;

USE sales_db;

CREATE TABLE sales (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    product VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO sales (product, quantity, price) VALUES
('Laptop', 5, 1200.00),
('Mouse', 25, 25.50),
('Keyboard', 15, 75.00),
('Monitor', 10, 300.00),
('Laptop', 3, 1150.00),
('Mouse', 30, 24.00),
('Webcam', 20, 50.00);

# 2. Define the SQL Query
# This query calculates the total quantity sold and total revenue for each product.
sql_query = """
    SELECT
        product,
        SUM(quantity) AS total_qty,
        SUM(quantity * price) AS revenue
    FROM
        sales
    GROUP BY
        product
    ORDER BY
        revenue DESC;
"""

