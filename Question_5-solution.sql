-- Q.5. List the top 5 most ordered pizza types along with their quantities.

 select pizza_types.name,
 sum(order_details.quantity) as quantity
 
 from pizza_types join pizzas
 on pizza_types.pizza_type_id = pizzas.pizza_type_id
 
 join order_details
 on order_details.pizza_id = pizzas.pizza_id
 
 group by pizza_types.name order by quantity desc limit 5;


-- Result:

-- 'The Classic Deluxe Pizza','2453'
-- 'The Barbecue Chicken Pizza','2432'
-- 'The Hawaiian Pizza','2422'
-- 'The Pepperoni Pizza','2418'
-- 'The Thai Chicken Pizza','2371'
