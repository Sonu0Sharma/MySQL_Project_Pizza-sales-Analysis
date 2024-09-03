-- Q.7. Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) AS hour, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY HOUR(order_time);

-- Result :

'11','1231'
'12','2520'
'13','2455'
'14','1472'
'15','1468'
'16','1920'
'17','2336'
'18','2399'
'19','2009'
'20','1642'
'21','1198'
'22','663'
'23','28'
'10','8'
'9','1'
