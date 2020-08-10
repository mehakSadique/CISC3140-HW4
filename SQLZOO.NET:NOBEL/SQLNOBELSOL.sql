/*Change the query shown so that it displays Nobel prizes for 1950.*/
select yr, subject, winner   from nobel   where yr=1950

/*Show who won the 1962 prize for Literature.*/
select winner from nobel where yr=1962 and subject='Literature'

/*Show the year and subject that won 'Albert Einstein' his prize.*/
select yr,subject from nobel where winner='Albert Einstein'

/*Give the name of the 'Peace' winners since the year 2000, including 2000.*/
select winner from nobel where subject='Peace' and yr>=2000

/*Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive.*/

select yr,subject,winner
from nobel 
where subject='Literature' and yr between 1980 and 1989

/*Show all details of the presidential winners:

Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama
*/
select * 
from nobel 
where winner in('Theodore Roosevelt','Woodrow Wilson','Jimmy Carter','Barack Obama')
/*
 Show the winners with first name John*/

select winner from nobel where winner like'John%'

/*
 Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
*/
select yr,subject,winner 
from nobel 
where (subject='Physics' and yr=1980) or (subject='Chemistry' and yr=1984)

/*
 Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine*/

select yr,subject,winner
 from nobel 
where subject not in('Chemistry', 'Medicine') and yr=1980
/*

Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
*/
select yr,subject,winner 
from nobel 
where (subject='Medicine' and yr < 1910) 
or (subject='Literature' and yr >= 2004)

/* Find all details of the prize won by PETER GRÜNBERG*/

select * from nobel where winner='PETER GRÜNBERG'

/* Find all details of the prize won by EUGENE O'NEILL*/

select * from nobel where winner like'EUGENE O''NEILL'   #这里引号使用注意


/* List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
*/
select winner,yr,subject
from nobel 
where winner like'Sir%' order by yr desc, winner


/*The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1.

Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
*/
select winner, subject
from nobel
where yr=1984
order by subject in ('Physics','Chemistry'),subject,winner
