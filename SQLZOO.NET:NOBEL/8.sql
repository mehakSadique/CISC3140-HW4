/*
 Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
*/
select yr,subject,winner 
from nobel 
where (subject='Physics' and yr=1980) or (subject='Chemistry' and yr=1984)
