/*Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)
*/
select name
from world
where gdp > all(select gdp from world
              where continent='Europe' and gdp>0)