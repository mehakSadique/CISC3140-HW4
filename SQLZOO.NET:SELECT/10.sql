/* Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.
*/
select name,continent from world x
where x.population >=all(select y.population*3 from world y 
where y.continent=x.continent and population >0 and x.name!=y.name )