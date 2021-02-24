/* do not change the following two lines! */
.header on
.mode column
/* do not change the above two lines! */


/* Task One: List the name of each city in Ethiopia together with the population of the city which should be displayed in thousands.*/
Select cityName, (City.population/1000) as "population in thousands"
From Country, City
Where Country.countryCode = City.countryCode AND countryName = "Ethiopia";

/* Task Two: List the name of each country together with its country code and population density (this tells us how many people live in each square kilometre of the country). The only countries listed should be those with a country code that starts with the letter ‘M’*/
Select countryName, countryCode, (totalPopulation / area) as "population density"
From Country
Where countryName like "M%";
/* Note:	population density is calculated by dividing the total population of the country by its area */


/* Task Three: List the name of the capital cities that have a population of more than 2,000,000 together with the area of their countries in square miles. The only cities shown should be those in countries that have an area over 500,000 square miles. These details should be listed in alphabetical order of capital city. */
/* Note:	the area of each country is currently in square kilometres. To convert to square miles, multiply by 0.39 */
select capital, (area*0.39) as "Square Miles"
from City, Country
Where Country.countryCode = City.countryCode AND capital = cityName AND City.population > 2000000 AND (area*0.39)> 500000
Order by capital asc;

/*Task Four: List each country that is east of the UK with the name of its capital city and the time difference in hours between it and the UK. This first countries listed should be those that have the greatest time difference from the UK; countries with the same time difference should be listed alphabetically.*/

select countryName, capital, (City.longitude/15) as "Time Difference"
from Country, City
where Country.countryCode = City.countryCode AND capital = cityName AND longitude > 0
order by (City.longitude/15) desc, countryName asc;
/* Notes:	(1) the UK has a longitude of 0 and all countries east of the UK have a longitude > 0
	        (2) each degree of longitude is equivalent to 4 minutes of time
	        (3) generate the time difference in hours by dividing the longitude by 15 */
  
  
/* Task Five:  List the name of each European capital city north of London with its latitudinal distance north of London. These cities should be listed alphabetically.*/

select capital, (latitude*113) as "North Distance"
from Country, City
where Country.countryCode = City.countryCode AND capital = cityName AND longitude < 35 AND latitude > 51.5
order by capital asc;
/* Notes:	(1) European cities have a longitude which is less than 35
	        (2) cities north of London have a latitude which is greater than 51.5
	        (3) each degree of difference in latitude if equivalent to 113 kilometres */ 
          
          

