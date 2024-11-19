-- Group the orders by date and calculate the average number of pizzas ordered per day.


SELECT round(avg(quantity), 2) FROM
(SELECT orders.Order_Date, SUM(order_details.quantity) AS quantity
From orders JOIN order_details
ON orders.Order_id = order_details.ORder_Id
Group BY orders.Order_Date) AS avg_pizza_everyday