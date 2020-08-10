/* Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.
*/
select name,continent,population 
from world x 
where 25000000 >=all(select y.population 
from world y where x.continent=y.continent and population>0)