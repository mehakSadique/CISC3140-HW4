/*this is a comment*/
SELECT capital, name FROM world
WHERE capital LIKE concat('%', name, '%');