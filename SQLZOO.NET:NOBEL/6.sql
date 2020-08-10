/*Show all details of the presidential winners:

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama
*/
select * 
from nobel 
where winner in('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama')