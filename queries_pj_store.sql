-- Exploring the data

SELECT * FROM products;

SELECT * FROM categories;

SELECT * FROM customers;

SELECT * FROM order_details;

SELECT * FROM orders;

SELECT * FROM shippers;

SELECT * FROM products AS p
INNER JOIN categories AS c ON c.category_id = p.category_id;

SELECT * FROM products
INNER JOIN categories ON categories.category_id = products.category_id
WHERE products.price < 10
ORDER BY price ASC;

-- Basic Inner Join

SELECT p.product_name, p.price, od.quantity FROM products AS p
INNER JOIN order_details AS od ON od.product_id = p.product_id
ORDER BY p.price DESC;

-- Basic sales list

SELECT p.product_name, c.category_name, p.price, od.quantity, (p.price*od.quantity) AS product_sales FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
JOIN order_details AS od ON od.product_id = p.product_id
ORDER BY p.price DESC;

-- Sales per product and category

SELECT p.product_name, c.category_name, SUM(p.price*od.quantity) AS product_sales FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
JOIN order_details AS od ON od.product_id = p.product_id
GROUP BY p.product_name, c.category_name
ORDER BY SUM(od.quantity) DESC;

-- Top 5 best selling products

SELECT p.product_name, p.price, SUM(od.quantity*p.price) AS total_sales FROM products AS p
JOIN order_details AS od ON od.product_id = p.product_id
GROUP BY p.product_name, p.price
ORDER BY total_sales DESC
LIMIT 5;

-- Top 5 highest prices

SELECT DISTINCT product_name, price FROM products
ORDER BY price DESC
LIMIT 5;

-- Best selling products from White Chocolate and DarkChocolate (using an AND, IN and OR script)

SELECT p.product_name, c.category_name, p.price, od.quantity, (p.price*od.quantity) AS category_total_amount FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
JOIN order_details AS od ON od.product_id = p.product_id
WHERE c.category_name IN ('White Chocolate', 'Dark Chocolate') AND (od.quantity > 16 OR (p.price*od.quantity) > 400)
ORDER BY od.quantity, (p.price*od.quantity) DESC;


-- Quantity per category

SELECT c.category_name, COUNT(od.quantity) AS category_total_count FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
JOIN order_details AS od ON od.product_id = p.product_id
GROUP BY c.category_name
ORDER BY category_total_count;

-- Calculating the total order price (price * quantity)

SELECT p.product_name, p.price, od.quantity, (p.price*od.quantity) AS order_amount FROM products AS p
INNER JOIN order_details AS od ON od.product_id = p.product_id
ORDER BY order_amount DESC;

-- Group by categories and COUNT() quantity for each one, 3 tables join

SELECT c.category_name, COUNT(quantity) AS category_quantity FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
JOIN order_details AS od ON od.product_id = p.product_id
GROUP BY c.category_name
ORDER BY category_quantity DESC;

-- AVG price for each category

SELECT c.category_name, ROUND(AVG(p.price)) AS avg_price_per_categ FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY avg_price_per_categ DESC;

-- AVG refound for each category

SELECT c.category_name, ROUND(AVG(p.price*od.quantity)) AS category_total_amount FROM categories AS c
JOIN products AS p ON p.category_id = c.category_id
JOIN order_details AS od ON od.product_id = p.product_id
GROUP BY c.category_name
ORDER BY category_total_amount;

-- Top 5 Best Customers

SELECT cu.customer_id, cu.customer_name, COUNT(o.order_id) AS orders_per_customer FROM customers AS CU
LEFT JOIN orders AS o ON o.customer_id = cu.customer_id
GROUP BY cu.customer_id, cu.customer_name
ORDER BY orders_per_customer DESC
LIMIT 5;

-- TOP 5 BIGGEST SALES WITH CUSTOMER NAME AND ID

SELECT p.product_name, c.category_name, (p.price*od.quantity) AS sale_price, o.order_id, cu.customer_id, cu.customer_name
FROM products p
JOIN categories c ON c.category_id = p.category_id
JOIN order_details od ON od.product_id = p.product_id
JOIN orders o ON o.order_id = od.order_id
JOIN customers cu ON cu.customer_id = o.customer_id
ORDER BY sale_price DESC
LIMIT 5;

-- Top 5 cities with most sales 

SELECT cu.city, COUNT(od.quantity) AS total_sales_count
FROM customers AS cu
JOIN orders AS o ON o.customer_id = cu.customer_id
JOIN order_details od ON od.order_id = o.order_id
GROUP BY cu.city
ORDER BY total_sales_count DESC
LIMIT 5;

-- Best customer from Milano (using LIKE and =)

SELECT cu.customer_name, (p.price*od.quantity) AS sales FROM customers cu
JOIN orders AS o ON o.customer_id = cu.customer_id
JOIN order_details od ON od.order_id = o.order_id
JOIN products p ON p.product_id = od.product_id
WHERE cu.city LIKE '%Milano%'
ORDER BY sales DESC;

SELECT cu.customer_name, (p.price*od.quantity) AS sales FROM customers cu
JOIN orders AS o ON o.customer_id = cu.customer_id
JOIN order_details od ON od.order_id = o.order_id
JOIN products p ON p.product_id = od.product_id
WHERE cu.city = 'Milano'
ORDER BY sales DESC;

-- Best and worst Dark Chocolate sale for each product (Max/MIN)

SELECT p.product_name, p.price, MAX(p.price*od.quantity) AS best_dkc_sale
FROM products p
JOIN order_details od ON od.product_id = p.product_id
JOIN categories c ON c.category_id = p.category_id
WHERE c.category_name = 'Dark Chocolate'
GROUP BY p.product_name, p.price;

SELECT p.product_name, p.price, MIN(p.price*od.quantity) AS best_dkc_sale
FROM products p
JOIN order_details od ON od.product_id = p.product_id
JOIN categories c ON c.category_id = p.category_id
WHERE c.category_name = 'Dark Chocolate'
GROUP BY p.product_name, p.price;

-- SELECT random product with a price lower than 15 and that is NOT Dark Chocolate

SELECT p.product_name, p.price, c.category_name FROM products p
JOIN categories c ON c.category_id = p.category_id
WHERE NOT c.category_name = 'Dark Chocolate' AND p.price <  15
ORDER BY RANDOM();

-- Orders per month with EXTRACT() 

SELECT EXTRACT(MONTH FROM order_date) AS month, COUNT(order_id) AS monthly_orders FROM orders
GROUP BY month
ORDER BY monthly_orders DESC;

-- 10 RANDOM customers with postal_code (USING NOT NULL)

SELECT cu.customer_name, o.customer_id, cu.postal_code FROM customers cu
RIGHT JOIN orders o ON o.customer_id = cu.customer_id
WHERE postal_code IS NOT NULL
ORDER BY RANDOM()
LIMIT 10;

-- SECOND BIGGEST SALE (USING OFFSET)

SELECT od.order_details_id, o.order_id, p.product_name, od.quantity, (od.quantity*p.price) second_biggest_sale FROM order_details od
JOIN products p ON p.product_id = od.product_id
JOIN orders o ON o.order_id = od.order_id
ORDER BY second_biggest_sale DESC
LIMIT 1 OFFSET 1;

-- TOTAL ORDERS REGISTERED

SELECT SUM(quantity) AS total_orders FROM order_details;

-- CREATE A NEW TABLE WITH THE BEST DARK CHOCOLATE's SALES

CREATE TABLE best_dchoco_sales (
	product_name VARCHAR(255),
	category_name VARCHAR(255),
	sale_price NUMERIC,
	order_id INT,
	customer_id INT,
	customer_name VARCHAR(255),
	order_details_id INT);
	
	
INSERT INTO best_dchoco_sales 
	SELECT p.product_name, c.category_name, (p.price*od.quantity) AS sale_price, o.order_id, cu.customer_id, cu.customer_name, od.order_details_id
	FROM products p
	JOIN categories c ON c.category_id = p.category_id
	JOIN order_details od ON od.product_id = p.product_id
	JOIN orders o ON o.order_id = od.order_id
	JOIN customers cu ON cu.customer_id = o.customer_id
	WHERE c.category_name = 'Dark Chocolate'
	ORDER BY sale_price DESC
	LIMIT 10;
	
-- SELECT script to show the new table

SELECT * FROM best_dchoco_sales;

-- Script to export and use in Power Bi and Tableau

SELECT p.product_name, c.category_name, (p.price*od.quantity) AS sale_price, o.order_id, cu.customer_id, cu.customer_name, cu.city
FROM products p
JOIN categories c ON c.category_id = p.category_id
JOIN order_details od ON od.product_id = p.product_id
JOIN orders o ON o.order_id = od.order_id
JOIN customers cu ON cu.customer_id = o.customer_id
ORDER BY sale_price DESC;