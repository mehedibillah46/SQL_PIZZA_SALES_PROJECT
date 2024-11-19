-- Determine the distribution of orders by hour of the day.

SELECT hour(Order_time), count(order_id) AS Quantity_order_hour
FROM orders
Group By hour(Order_time);