/* List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
*/
select winner,yr,subject
from nobel 
where winner like'Sir%' order by yr desc, winner
