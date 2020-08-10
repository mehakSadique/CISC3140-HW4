/* List the continents that have a total population of at least 100 million.
*/
select continent 
from world  
group by continent
having sum(population)>100000000