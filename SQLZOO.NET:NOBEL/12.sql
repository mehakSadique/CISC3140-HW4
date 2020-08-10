/*The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.

Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
*/
select winner, subject
from nobel
where yr=1984
order by subject in ('Physics','Chemistry'),subject,winner
