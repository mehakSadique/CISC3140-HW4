/* For each continent show the continent and number of countries.*/

select continent,count(name) from world  group by continent