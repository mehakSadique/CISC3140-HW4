/*
You can use WHERE name LIKE 'B%' to find the countries that start with "B".

The % is a wild-card it can match any characters
Find the country that start with Y */

SELECT name FROM world
  WHERE name LIKE 'y%'


/*
Find the countries that end with y */
SELECT name FROM world
  WHERE name LIKE '%y'
  /*
Luxembourg has an x - so does one other country. List them both.

Find the countries that contain the letter x
*/

SELECT name FROM world
  WHERE name LIKE '%x%'
  /*
Iceland, Switzerland end with land - but are there others?

Find the countries that end with land
*/

SELECT name FROM world
  WHERE name LIKE '%land'

  /*
Columbia starts with a C and ends with ia - there are two more like this.

Find the countries that start with C and end with ia
*/
SELECT name FROM world
  WHERE name LIKE 'C%%ia'
  /*
Greece has a double e - who has a double o?

Find the country that has oo in the name
*/
SELECT name FROM world
  WHERE name LIKE '%oo%'
/*7*/
  SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

/*8*/
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name
/*9*/
SELECT name FROM world
 WHERE name LIKE '%o_o%'
/*10*/
SELECT name FROM world
WHERE name LIKE '____';
/*11*/
SELECT name FROM world
WHERE name = capital;
/*12*/
SELECT name FROM world
WHERE capital = concat(name, ' City');
/*13*/
SELECT capital, name FROM world
WHERE capital LIKE concat('%', name, '%');
/*14*/
SELECT capital, name FROM world
WHERE capital LIKE concat(name, '_%');
/*15*/
SELECT name, REPLACE(capital, name, '') FROM world
WHERE capital LIKE concat ('%', name, '%') AND capital > name;
