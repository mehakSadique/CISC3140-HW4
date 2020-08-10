/*List each country name where the population is larger than that of 'Russia'.*/

select name 
from world 
where population>(select population from world where name='Russia')