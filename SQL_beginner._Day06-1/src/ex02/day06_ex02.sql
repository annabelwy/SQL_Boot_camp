SELECT person.name AS name, menu.pizza_name, menu.price,
        menu.price - menu.price * 0.01 * person_discounts.discount AS discount_price,
       pizzeria.name AS pizzeria_name
FROM person_order
JOIN person ON person.id = person_order.person_id
JOIN person_discounts ON person_discounts.person_id = person.id
JOIN menu ON person_order.menu_id = menu.id
JOIN pizzeria ON menu.pizzeria_id = pizzeria.id AND person_discounts.pizzeria_id = pizzeria.id
ORDER BY 1, 2;