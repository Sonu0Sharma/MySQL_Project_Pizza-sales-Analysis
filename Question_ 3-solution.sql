-- Q.3. Identify the highest-priced pizza.


SELECT 
    (pizza_types.name) AS highest_price_pizza_name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas 

 ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- Result:

-- The Greek Pizza  35.95
