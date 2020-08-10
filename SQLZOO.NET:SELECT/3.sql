/*List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.*/

select name,continent 
from world
where continent in (select continent 
                   from world where name='Argentina' or name='Australia')
order by name