/* What is the total population of ('Estonia', 'Latvia', 'Lithuania')*/

select sum(population) from world where name in('Estonia', 'Latvia', 'Lithuania')