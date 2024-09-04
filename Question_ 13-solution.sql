-- Q.13. Determine the top 3 most ordered pizza types based on 
-- revenue for each pizza category.

select category , name , revenue , rnk
from 
(select category , name , revenue ,
rank() over(partition by category order by revenue desc) as rnk
from
(select pizza_types.category , pizza_types.name ,
sum(order_details.quantity * pizzas.price) as revenue

from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id 
group by pizza_types.category , pizza_types.name ) as a) as b 

where rnk <=3 ;

-- Results :

'Chicken','The Thai Chicken Pizza','43434.25','1'
'Chicken','The Barbecue Chicken Pizza','42768','2'
'Chicken','The California Chicken Pizza','41409.5','3'
'Classic','The Classic Deluxe Pizza','38180.5','1'
'Classic','The Hawaiian Pizza','32273.25','2'
'Classic','The Pepperoni Pizza','30161.75','3'
'Supreme','The Spicy Italian Pizza','34831.25','1'
'Supreme','The Italian Supreme Pizza','33476.75','2'
'Supreme','The Sicilian Pizza','30940.5','3'
'Veggie','The Four Cheese Pizza','32265.70000000065','1'
'Veggie','The Mexicana Pizza','26780.75','2'
'Veggie','The Five Cheese Pizza','26066.5','3'
