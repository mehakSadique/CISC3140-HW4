/*this is a comment*/
SELECT name, REPLACE(capital, name, '') FROM world
WHERE capital LIKE concat ('%', name, '%') AND capital > name;