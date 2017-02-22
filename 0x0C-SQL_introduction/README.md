#Holberton School - 0x0C-SQL_introduction
Introduction to SQL

## Setup
1. Install sql ``sudo apt-get install mysql-server-5.5``
2. Connect to your MySQL server
  1. ``~> mysql -hlocalhost -uroot -p``
  2. ``mysql> quit``
  3. ``Bye``

## New commands / functions used:
``mysql> help``, ``DDL``, ``DML``, ``CREATE``, ``ALTER``, ``SELECT``, ``INSERT``, ``UPDATE``, ``DELETE``

## Helpful Links
* [Youtube primer on MySQL](https://www.youtube.com/watch?v=FR4QIeZaPeM)
* [Basic MySQL tutorial](https://www.digitalocean.com/community/tutorials/a-basic-mysql-tutorial)
* [Basic SQL Statements: DDL and DML](http://www.tomjewett.com/dbdesign/dbdesign.php?page=ddldml.php)
* [Basic SQL Queries: SQL and RA](http://www.tomjewett.com/dbdesign/dbdesign.php?page=queries.php)
* [SQL Technique: functions](http://www.tomjewett.com/dbdesign/dbdesign.php?page=functions.php)
* [SQL Technique: subqueries](http://www.tomjewett.com/dbdesign/dbdesign.php?page=subqueries.php)
* [Resource for SQL information: dev.mysql.com](https://dev.mysql.com/doc/refman/5.7/en/sql-syntax.html)

## Description of Files
<h6>0-list_databases.sql</h6>
Script that lists all databases of a MySQL server

<h6>1-create_database_if_missing.sql</h6>
Script that creates a database hbtn_0c_0 in the MySQL server

<h6>2-remove_database.sql</h6>
Deletes the database hbtn_0c_0 from the server. Should not fail if it doesn't exist.

<h6>3-list_tables.sql</h6>
Lists all tables of a database

<h6>4-first_table.sql</h6>
Creates a table called first_table in the database hbtn_0c_0

<h6>5-full_table.sql</h6>
Creates the full description of the table first_table in the hbtn_0c_0

<h6>6-list_values.sql</h6>
Lists all rows of the table first_table in the database hbtn_0c_0

<h6>7-insert_value.sql</h6>
Inserts a new row in the table first_table in the database hbtn_0c_0

<h6>8-count_89.sql</h6>
Displays the number of records with the ``id = 89`` in the table ``first_table`` in the database hbtn_0c_0

<h6>9-full_creation.sql</h6>
Creates a table second_table in the database hbtn_0c_0 and adds multiple rows

<h6>10-top_score.sql</h6>
Lists all records of the table second_table in the database hbtn_0c_0

<h6>11-best_score.sql</h6>
Lists all records with a score >= 10 in the table second table in the database hbtn_0c_0

<h6>12-no_cheating.sql</h6>
Updates the score of Bob to 10

<h6>13-change_class.sql</h6>
Removes all records with a score <= 5 in the table second_table in the database hbtn_0c_0

<h6>14-average.sql</h6>
Computes the average score of all records in the table second_table in the database hbtn_0c_0

<h6>15-groups.sql</h6>
Lists the number of records with the same score in the table second_table in the database hbtn_0c_0

<h6>16-no_link.sql</h6>
Lists all records of the table second_table in the database hbtn_0c_0

<h6>100-move_to_utf8.sql</h6>
Converts the table first_table field, name in hbtn_0c_0 database to UTF8 (utf8mb4, collate utf8mb4_unicode_ci)

<h6>101-avg_temperatures.sql</h6>
Import this [table dump](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-higher-level_programming+/272/temperatures.sql) into the database hbtn_0c_0 and write a script that displays the average temperature by city, ordered by temperature, descending.

<h6>102-top_city.sql</h6>
Imports this [table dump](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-hig    her-level_programming+/272/temperatures.sql) into the database hbtn_0c_0 and displays the top 3 city temperatures during July and August, ordered by temperature, descending.

<h6>103-max_state.sql</h6>
Imports this [table dump](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-hig    her-level_programming+/272/temperatures.sql) into the database hbtn_0c_0 and displays the max temperature of each state.


















