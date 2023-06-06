UPDATE menu SET price=(SELECT menu.price) * 0.9
WHERE menu.pizza_name = 'greek pizza';