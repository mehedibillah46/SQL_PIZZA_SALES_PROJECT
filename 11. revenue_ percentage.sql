-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT pizza_types.category, round((sum(order_details.quantity*pizzas.price)/(SELECT SUM(order_details.Quantity * pizzas.price) 
            FROM order_details JOIN pizzas 
            ON order_details.pizza_Id = pizzas.pizza_id))*100,2) AS revenue
            
FROM order_details JOIN pizzas
ON order_details.pizza_Id = pizzas.pizza_id
JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
Group BY pizza_types.category
Order by revenue DESC;