-- Calculate the total revenue generated from pizza sales.

SELECT round(sum(order_details.Quantity * pizzas.price), 2) AS total_revenue
FROM order_details JOIN pizzas
ON order_details.pizza_Id = pizzas.pizza_id;