/* List each continent and the name of the country that comes first alphabetically.
*/
select continent,name from world x
where x.name=(select y.name from world y 
where x.continent=y.continent order by name limit 1)