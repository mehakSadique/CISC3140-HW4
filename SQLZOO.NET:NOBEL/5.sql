/*Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.*/

select yr,subject,winner
from nobel 
where subject='Literature' and yr between 1980 and 1989
