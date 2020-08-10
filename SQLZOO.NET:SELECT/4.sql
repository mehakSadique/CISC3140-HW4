/*Which country has a population that is more than Canada but less than Poland? Show the name and the population.*/

select name,population 
from world
where population> (select population from world where name='Canada ')
and population <(select population from world where name='Poland')