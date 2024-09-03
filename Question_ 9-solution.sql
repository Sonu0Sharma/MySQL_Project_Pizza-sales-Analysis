-- Q.9. Group the orders by date and calculate the average number 
-- of pizzas ordered per day.

select round(avg( quantity),0) as avg_order_per_day from 

(select orders.order_date ,
sum(order_details.quantity) as quantity

from orders join order_details
on orders.order_id = order_details.order_id

group by orders.order_date ) as order_quantity ;

-- Result :

-- 138
