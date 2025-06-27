# SQL

## Data Manipulation Language (DML) Commands

### The SELECT command retrieves data from a database.

```sql
SELECT <column1>, <column2> FROM <table_name>;
```

### The INSERT command adds new records to a table.

```sql
INSERT INTO <table_name> (<column1>, <column2>) VALUES (<value1>, <value2>);
```

### The UPDATE command is used to modify existing records in a table.

```sql
UPDATE <table_name> SET <column1> = <value1>, <column2> = <value2> WHERE <condition>;
```

### The DELETE command removes records from a table.

```sql
DELETE FROM <table_name> WHERE <condition>;
```

## Data Definition Language (DDL) Commands

### The CREATE command creates a new database and objects, such as a table, index, view, or stored procedure.

```sql
CREATE TABLE <table_name> (<column1> <datatype1>, <column2> <datatype2>, ...);
```

### The ALTER command adds, deletes, or modifies columns in an existing table.

```sql
ALTER TABLE <table_name> ADD <column_name> <datatype>;
```

### The DROP command is used to drop an existing table in a database.

```sql
DROP TABLE <table_name>;
```

### The TRUNCATE command is used to delete the data inside a table, but not the table itself.

```sql
TRUNCATE TABLE <table_name>;
```

## Data Control Language (DCL) Commands

### The GRANT command is used to give specific privileges to users or roles.

```sql
GRANT SELECT, INSERT ON <table_name> TO <user_name>;
```

### The REVOKE command is used to take away privileges previously granted to users or roles.

```sql
REVOKE SELECT, INSERT ON <table_name> FROM <user_name>;
```

## Joining Commands

### The INNER JOIN command returns rows with matching values in both tables.

```sql
SELECT * FROM <table1> INNER JOIN <table2> ON <table1.column> = <table2.column>;
```

### The LEFT JOIN command returns all rows from the left table (first table) and the matching rows from the right table (second table).

```sql
SELECT * FROM <table1> LEFT JOIN <table2> ON <table1.column> = <table2.column>;
```

### The RIGHT JOIN command returns all rows from the right table (second table) and the matching rows from the left table (first table).

```sql
SELECT * FROM <table1> RIGHT JOIN <table2> ON <table1.column> = <table2.column>;
```

### The FULL JOIN command returns all rows when there is a match in either the left table or the right table.

```sql
SELECT * FROM <table1> FULL JOIN <table2> ON <table1.column> = <table2.column>;
```

### The CROSS JOIN command combines every row from the first table with every row from the second table, creating a Cartesian product.

```sql
SELECT * FROM <table1> CROSS JOIN <table2>;
```

### The SELF JOIN command joins a table with itself.

```sql
SELECT * FROM <table1> <t1>, <table1> <t2> WHERE <t1.column> = <t2.column>;
```

### The NATURAL JOIN command matches columns with the same name in both tables.

```sql
SELECT * FROM <table1> NATURAL JOIN <table2>;
```

## Subqueries in SQL

### The IN command is used to determine whether a value matches any value in a subquery result. It is often used in the WHERE clause.

```sql
SELECT <column(s)> FROM table WHERE value IN (subquery);
```

### ANY The ANY command is used to compare a value to any value returned by a subquery. It can be used with comparison operators like =, >, <, etc.

```sql
SELECT <column(s)> FROM table WHERE value < ANY (subquery);
```

### The ALL command is used to compare a value to all values returned by a subquery. It can be used with comparison operators like =, >, <, etc.

```sql
SELECT <column(s)> FROM table WHERE value > ALL (subquery);
```

## Aggregate Functions Commands

### The COUNT() command counts the number of rows or non-null values in a specified column.

```sql
SELECT COUNT(<column_name>) FROM <table_name>;
```

### The SUM() command is used to calculate the sum of all values in a specified column.

```sql
SELECT SUM(<column_name>) FROM <table_name>;
```

### The AVG() command is used to calculate the average (mean) of all values in a specified column.

```sql
SELECT AVG(<column_name>) FROM <table_name>;
```

### The MIN() command returns the minimum (lowest) value in a specified column.

```sql
SELECT MIN(<column_name>) FROM <table_name>;
```

### The MAX() command returns the maximum (highest) value in a specified column.

```sql
SELECT MAX(<column_name>) FROM <table_name>;
```

## String Functions in SQL

### The CONCAT() command concatenates two or more strings into a single string.

```sql
SELECT CONCAT(<string1>, <string2>, ...) AS <concatenated_string> FROM <table_name>;
```

### The SUBSTRING() command extracts a substring from a string.

```sql
SELECT SUBSTRING(<string> FROM <start_position> [FOR length]) AS <substring> FROM <table_name>;
```

### The LENGTH() command returns the length (number of characters) of a string.

```sql
SELECT LENGTH(<string>) AS <length> FROM <table_name>;
```

### The UPPER() command converts all characters in a string to uppercase.

```sql
SELECT UPPER(<string>) AS <uppercase_string> FROM <table_name>;
```

### The LOWER() command converts all characters in a string to lowercase.

```sql
SELECT LOWER(<string>) AS <lowercase_string> FROM <table_name>;
```

### The TRIM() command removes specified prefixes or suffixes (or whitespace by default) from a string.

```sql
SELECT TRIM([LEADING | TRAILING | BOTH] <characters> FROM <string>) AS <trimmed_string> FROM <table_name>;
```

### The LEFT() command returns a specified number of characters from the left of a string.

```sql
SELECT LEFT(<string>, <num_characters>) AS <left_string> FROM <table_name>;
```

### The RIGHT() command returns a specified number of characters from the right of a string.

```sql
SELECT RIGHT(<string>, <num_characters>) AS <right_string> FROM <table_name>;
```

### The REPLACE() command replaces occurrences of a substring within a string.

```sql
SELECT REPLACE(<string>, <old_substring>, <new_substring>) AS replaced_string FROM <table_name>;
```

## Date and Time SQL Commands

### The CURRENT_DATE() command returns the current date.

```sql
SELECT CURRENT_DATE() AS <current_date>;
```

### The CURRENT_TIME() command returns the current time.

```sql
SELECT CURRENT_TIME() AS <current_time>;
```

### The CURRENT_TIMESTAMP() command returns the current date and time.

```sql
SELECT CURRENT_TIMESTAMP() AS <current_timestamp>;
```

### The DATE_PART() command extracts a specific part (e.g., year, month, day) from a date or time.

```sql
SELECT DATE_PART('part', <date_expression>) AS <extracted_part>;
```

### The DATE_ADD()/DATE_SUB() command adds or subtracts a specified number of days, months, or years to/from a date.

```sql
SELECT DATE_ADD(<date_expression>, INTERVAL <value> <unit>) AS new_date;
```
```sql
SELECT DATE_SUB(<date_expression>, INTERVAL <value> <unit>) AS new_date;
```

### The EXTRACT() command extracts a specific part (e.g., year, month, day) from a date or time.

```sql
SELECT EXTRACT(part FROM <date_expression>) AS <extracted_part>;
```

### The TO_CHAR() command converts a date or time to a specified format.

```sql
SELECT TO_CHAR(<date_expression>, 'format') AS <formatted_date>;
```

### The TIMESTAMPDIFF() command calculates the difference between two timestamps in a specified unit (e.g., days, hours, minutes).

```sql
SELECT TIMESTAMPDIFF(<unit>, <timestamp1>, <timestamp2>) AS <difference>;
```

### The DATEDIFF() command calculates the difference in days between two dates.

```sql
SELECT DATEDIFF(<date1>, <date2>) AS <difference_in_days>;
```

## Conditional Expressions

### The CASE statement allows you to perform conditional logic within a query.

```sql
SELECT <column1>, <column2>, CASE WHEN <condition1> THEN <result1> WHEN <condition2> THEN <result2> ELSE <default_result> END AS <alias> FROM <table_name>;
```

### The IF() function evaluates a condition and returns a value based on the evaluation.

```sql
SELECT IF(<condition>, <true_value>, <false_value>) AS <alias> FROM <table_name>;
```

### The COALESCE() function returns the first non-null value from a list of values.

```sql
SELECT COALESCE(<value1>, <value2>, ...) AS <alias> FROM <table_name>;
```

### The NULLIF() function returns null if two specified expressions are equal.

```sql
SELECT NULLIF(<expression1>, <expression2>) AS <alias> FROM <table_name>;
```

## Set Operations

### The UNION operator combines the result sets of two or more SELECT statements into a single result set.

```sql
SELECT <column1>, <column2> FROM <table1> UNION SELECT <column1>, <column2> FROM <table2>;
```

### The INTERSECT operator returns the common rows that appear in both result sets.

```sql
SELECT <column1>, <column2> FROM <table1> INTERSECT SELECT <column1>, <column2> FROM <table2>;
```

### The EXCEPT operator returns the distinct rows from the left result set that are not present in the right result set.

```sql
SELECT <column1>, <column2> FROM <table1> EXCEPT SELECT <column1>, <column2> FROM <table2>;
```

## Transaction Control Commands

### The COMMIT command is used to save all the changes made during the current transaction and make them permanent.

```sql
BEGIN TRANSACTION;
-- SQL statements and changes within the transaction
COMMIT;
```

### The ROLLBACK command is used to undo all the changes made during the current transaction and discard them.

```sql
BEGIN TRANSACTION;
-- SQL statements and changes within the transaction
ROLLBACK;
```

### The SAVEPOINT/ROLLBACK TO command is used to set a point within a transaction to which you can later roll back.

```sql
BEGIN TRANSACTION;
-- SQL statements and changes within the transaction
SAVEPOINT before_update;
-- SQL statements and changes within the transaction
SAVEPOINT after_update;
-- SQL statements and changes within the transaction
ROLLBACK TO before_update;
COMMIT;
```

### The SET TRANSACTION command is used to configure properties for the current transaction, such as isolation level and transaction mode.

```sql
BEGIN TRANSACTION;
SET TRANSACTION ISOLATION LEVEL <READ COMMITTED | SERIALIZABLE>;
-- SQL statements and changes within the transaction
COMMIT;
```
