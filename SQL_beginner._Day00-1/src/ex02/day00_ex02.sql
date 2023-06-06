SELECT name, rating FROM pizzeria where (rating>=3.5 AND rating<=5) ORDER BY rating;
SELECT name, rating FROM pizzeria where rating BETWEEN 3.5 AND 5 ORDER BY rating;