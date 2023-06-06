SELECT menu.pizza_name AS pizza_name, pizzeria.name AS pizzeria_name_1,
       sub_pizzeria.name AS pizzeria_name_2, menu.price FROM pizzeria
JOIN menu on pizzeria.id=menu.pizzeria_id
JOIN menu AS sub_menu ON menu.price=sub_menu.price
JOIN pizzeria AS sub_pizzeria ON sub_menu.pizzeria_id=sub_pizzeria.id
WHERE ( menu.pizza_name=sub_menu.pizza_name
           AND pizzeria.name<sub_pizzeria.name)
ORDER BY 1;
