#Solutions 
 
```SQL
-- 1. Get all customers and their addresses.
SELECT first_name, last_name, street, city, state, zip, address_type FROM customers
JOIN addresses ON customers.id = addresses.customer_id
```

```SQL
-- 2.  Get all orders and their line items (orders, quantity and product)
SELECT * FROM orders
JOIN line_items on orders.id = line_items.order_id
```

```SQL
-- 3. Which warehouses have cheetos?
SELECT *
		FROM warehouse_product
		JOIN products ON products.id = warehouse_product.product_id
		JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
		WHERE description = 'cheetos';
```

```SQL 
Test for both was using the following showing questions 4 exact tests 
SELECT * FROM products = 6
SELECT * FROM warehouse_product = 1, 3, 4 had product_id 6 
SELECT * FROM warehouse = to see what ones had 1, 3, 4 
```

```SQL
-- 4. Which warehouses have diet pepsi?
SELECT warehouse FROM warehouse_product
JOIN products ON products.id = warehouse_product.product_id
JOIN warehouse ON warehouse.id = warehouse_product.warehouse_id
WHERE description = 'diet pepsi';
```

```SQL
-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT COUNT(*), customers.first_name, customers.last_name FROM orders
JOIN addresses on orders.address_id = addresses.id
JOIN customers on addresses.customer_id = customers.id
GROUP BY customers.id;
```

```SQL
-- 6. How many customers do we have?
SELECT COUNT(*) FROM customers
```

```SQL
-- 7. How many products do we carry?
SELECT COUNT(*) FROM products
```

```SQL
-- 8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM(on_hand) FROM warehouse_product
JOIN products ON products.id = warehouse_product.product_id
WHERE description = 'diet pepsi';
```