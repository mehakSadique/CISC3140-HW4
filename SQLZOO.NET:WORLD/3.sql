/*
Give the name and the per capita GDP for those countries with a population of at least 200 million.

HELP:How to calculate per capita GDP
*/
SELECT name,GDP/population 
FROM world
WHERE population >200000000
