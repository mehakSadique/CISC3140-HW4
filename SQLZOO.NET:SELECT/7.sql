/*Find the largest country (by area) in each continent, show the continent, the name and the area:
*/
select continent,name,area from world x
where x.area >= all(select y.area from world y 
where y.continent=x.continent and area>0)