/* Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.*/

select name 
from world
where gdp/population > (select gdp/population 
from world where name='United Kingdom' ) and continent='Europe'