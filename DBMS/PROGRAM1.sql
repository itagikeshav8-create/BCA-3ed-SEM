mysql> Query / Code:
    -> CREATE DATABASE college;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'Query / Code:
CREATE DATABASE college' at line 1
mysql> USE college;
Database changed
mysql> CREATE TABLE student (
    ->     id INT PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     department VARCHAR(30),
    ->     marks INT,
    ->     city VARCHAR(30)
    -> );
ERROR 1050 (42S01): Table 'student' already exists
mysql> INSERT INTO student VALUES
    -> (1, 'Akash', 'BCA', 85, 'Koppal'),
    -> (2, 'Ravi', 'BCA', 75, 'Gangavathi'),
    -> (3, 'Priya', 'BCom', 90, 'Koppal'),
    -> (4, 'Manoj', 'BCA', 60, 'Yelburga'),
    -> (5, 'Anu', 'BCom', 80, 'Koppal'),
    -> (6, 'Kiran', 'BCA', 95, 'Gangavathi');
ERROR 1062 (23000): Duplicate entry '1' for key 'student.PRIMARY'
mysql> SELECT * FROM student;
+----+-------+------------+-------+------------+
| id | name  | department | marks | city       |
+----+-------+------------+-------+------------+
|  1 | Akash | BCA        |    85 | Koppal     |
|  2 | Ravi  | BCA        |    75 | Gangavathi |
|  3 | Priya | BCom       |    90 | Koppal     |
|  4 | Manoj | BCA        |    60 | Yelburga   |
|  5 | Anu   | BCom       |    80 | Koppal     |
|  6 | Kiran | BCA        |    95 | Gangavathi |
+----+-------+------------+-------+------------+
6 rows in set (0.00 sec)

mysql> SELECT UPPER(name) FROM student;
+-------------+
| UPPER(name) |
+-------------+
| AKASH       |
| RAVI        |
| PRIYA       |
| MANOJ       |
| ANU         |
| KIRAN       |
+-------------+
6 rows in set (0.00 sec)

mysql> SELECT LOWER(name) FROM student;
+-------------+
| LOWER(name) |
+-------------+
| akash       |
| ravi        |
| priya       |
| manoj       |
| anu         |
| kiran       |
+-------------+
6 rows in set (0.00 sec)

mysql> SELECT name, LENGTH(name) FROM student;
+-------+--------------+
| name  | LENGTH(name) |
+-------+--------------+
| Akash |            5 |
| Ravi  |            4 |
| Priya |            5 |
| Manoj |            5 |
| Anu   |            3 |
| Kiran |            5 |
+-------+--------------+
6 rows in set (0.00 sec)

mysql> SELECT MAX(marks) FROM student;
+------------+
| MAX(marks) |
+------------+
|         95 |
+------------+
1 row in set (0.05 sec)

mysql> SELECT MIN(marks) FROM student;
+------------+
| MIN(marks) |
+------------+
|         60 |
+------------+
1 row in set (0.00 sec)

mysql> TRUNCATE TABLE staff;
ERROR 1146 (42S02): Table 'college.staff' doesn't exist
mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2026-11-06 11:51:03 |
+---------------------+
1 row in set (0.03 sec)

mysql> SELECT ROUND(85.678, 2);
+------------------+
| ROUND(85.678, 2) |
+------------------+
|            85.68 |
+------------------+
1 row in set (0.04 sec)

mysql> SELECT COUNT(*) FROM student;
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.08 sec)

mysql> SELECT SUM(marks) FROM student;
+------------+
| SUM(marks) |
+------------+
|        485 |
+------------+
1 row in set (0.03 sec)

mysql> SELECT AVG(marks) FROM student;
+------------+
| AVG(marks) |
+------------+
|    80.8333 |
+------------+
1 row in set (0.00 sec)

mysql>
