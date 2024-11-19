-- Determine the top 3 most ordered pizza types based on revenue.

SELECT pizza_types.name, sum(pizzas.price*order_details.quantity) AS revenue
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
ON order_details.pizza_Id = pizzas.pizza_id
GROUp By pizza_types.name
ORDER BY revenue DESC LIMIT 3;