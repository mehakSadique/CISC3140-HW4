/*List each country name where the population is larger than that of 'Russia'.*/

select name 
from world 
where population>(select population from world where name='Russia')
/* Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.*/

select name 
from world
where gdp/population > (select gdp/population 
from world where name='United Kingdom' ) and continent='Europe'
/*List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.*/

select name,continent 
from world
where continent in (select continent 
                   from world where name='Argentina' or name='Australia')
order by name
/*Which country has a population that is more than Canada but less than Poland? Show the name and the population.*/

select name,population 
from world
where population> (select population from world where name='Canada ')
and population <(select population from world where name='Poland')
/* Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.*/

Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.

select name,
concat(round(100*population/(select population 
                   from world where name='Germany')),'%')
from world
where continent='Europe'
/*Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)
*/
select name
from world
where gdp > all(select gdp from world
              where continent='Europe' and gdp>0)
/*Find the largest country (by area) in each continent, show the continent, the name and the area:
*/
select continent,name,area from world x
where x.area >= all(select y.area from world y 
where y.continent=x.continent and area>0)
/* List each continent and the name of the country that comes first alphabetically.
*/
select continent,name from world x
where x.name=(select y.name from world y 
where x.continent=y.continent order by name limit 1)
/* Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.
*/
select name,continent,population 
from world x 
where 25000000 >=all(select y.population 
from world y where x.continent=y.continent and population>0)
/* Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.
*/
select name,continent from world x
where x.population >=all(select y.population*3 from world y 
where y.continent=x.continent and population >0 and x.name!=y.name )
