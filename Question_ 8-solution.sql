-- Q.8. Join relevant tables to find the category-wise 
-- distribution of pizzas.

select category , count(name) from pizza_types
group by category;


-- Result :

'Chicken','6'
'Classic','8'
'Supreme','9'
'Veggie','9'
