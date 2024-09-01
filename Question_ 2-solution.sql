--  Q.2. Calculate the total revenue generated from pizza sales.

-- here we have to apply joint cause ,
-- the quantity is in "order details" and price is in"pizzas"
-- here we will use pizza_id as common and , (Quantity X Price)  

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),2) AS total_sales
FROM
    order_details
        JOIN
    pizzas 
ON pizzas.pizza_id = order_details.pizza_id
