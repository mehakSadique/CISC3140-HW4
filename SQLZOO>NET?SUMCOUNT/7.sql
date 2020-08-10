/* For each continent show the continent and number of countries with populations of at least 10 million.
*/
select continent,count(name) from world 
where population >=10000000 group by continent