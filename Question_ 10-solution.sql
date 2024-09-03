-- Q.10. Determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name,
sum(order_details.quantity * pizzas.price) as revenue

from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id

group by pizza_types.name order by revenue desc limit 3;

-- Result :

'The Thai Chicken Pizza','43434.25'
'The Barbecue Chicken Pizza','42768'
'The California Chicken Pizza','41409.5'
