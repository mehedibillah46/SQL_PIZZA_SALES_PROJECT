-- List the top 5 most ordered pizza types along with their quantities.

SELECT pizzas.pizza_type_id , pizza_types.name, SUM(order_details.Quantity) AS most_ordered_pizza
FROM pizzas JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON pizzas.pizza_id = order_details.pizza_Id
Group BY pizzas.pizza_type_id, pizza_types.name
ORDER BY most_ordered_pizza DESC LIMIT 5;