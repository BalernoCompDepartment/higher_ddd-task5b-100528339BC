[![Work in Repl.it](https://classroom.github.com/assets/work-in-replit-14baed9a392b3a25080506f3b7b6d57f295ec2978f6f33ec97e36a161684cbe9.svg)](https://classroom.github.com/online_ide?assignment_repo_id=4201533&assignment_repo_type=AssignmentRepo)
# HigherDDD_Ex6b

The database for this task has 2 tables, Country and City. 

![databaseTables](/Ex5b_tables.png)

Use Main.sql to write your SQL querries in

remember ; at the end of the query

all querys in the file at once

dont change lines 1-4

## Your Task

Wrtite queries for each of these tasks

1.	List the name of each city in Ethiopia together with the population of the city which should be displayed in thousands.

2.	List the name of each country together with its country code and population density (this tells us how many people live in each square kilometre of the country). The only countries listed should be those with a country code that starts with the letter ‘M’.

Note:	population density is calculated by dividing the total population of the country by its area

3.	List the name of the capital cities that have a population of more than 2,000,000 together with the area of their countries in square miles. The only cities shown should be those in countries that have an area over 500,000 square miles. These details should be listed in alphabetical order of capital city.

Note:	the area of each country is currently in square kilometres. To convert to square miles, multiply by 0.39
	
4.	List each country that is east of the UK with the name of its capital city and the time difference in hours between it and the UK. This first countries listed should be those that have the greatest time difference from the UK; countries with the same time difference should be listed alphabetically.

Notes:	\
  (1) the UK has a longitude of 0 and all countries east of the UK have a longitude > 0\
	(2) each degree of longitude is equivalent to 4 minutes of time\
	(3) generate the time difference in hours by dividing the longitude by 15

5.	List the name of each European capital city north of London with its latitudinal distance north of London. These cities should be listed alphabetically.

Notes:	\
  (1) European cities have a longitude which is less than 35\
	(2) cities north of London have a latitude which is greater than 51.5\
	(3) each degree of difference in latitude if equivalent to 113 kilometres

