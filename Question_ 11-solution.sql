-- Q.11. Calculate the percentage contribution of each pizza type to 
-- total revenue.

 use pizzahut ;
 select pizza_types.category ,
  
round((sum(order_details.quantity * pizzas.price) / (SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),2) AS total_sales
FROM
    order_details
        JOIN
    pizzas 
ON pizzas.pizza_id = order_details.pizza_id)) * 100,2) as revenue
 
 from pizza_types join pizzas
 on pizza_types.pizza_type_id = pizzas.pizza_type_id
 
 join order_details
 on order_details.pizza_id = pizzas.pizza_id
 
 group by pizza_types.category order by revenue desc ;


-- Result : 

'Classic','26.91'
'Supreme','25.46'
'Chicken','23.96'
'Veggie','23.68'
