mysql> USE college; 
Database changed 
mysql> CREATE TABLE employee( 
    -> emp_id INT, 
    -> emp_name VARCHAR(50), 
    -> salary INT 
    -> ); 
Query OK, 0 rows affected (0.05 sec) 

mysql> INSERT INTO employee VALUES 
    -> (1,'Akash',25000), 
    -> (2,'Ravi',30000), 
    -> 3,'Priya',35000); 
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3,'Priya',35000)' at line 4 
mysql> INSERT INTO employee VALUES 
    -> (1,'Akash',25000), 
    -> (2,'Ravi',30000), 
    -> (3,'Priya',35000); 
Query OK, 3 rows affected (0.02 sec) 
Records: 3  Duplicates: 0  Warnings: 0 

mysql> LOCK TABLES employee READ; 
Query OK, 0 rows affected (0.00 sec) 

mysql> SELECT*FROM employee; 
+--------+----------+--------+ 
| emp_id | emp_name | salary | 
+--------+----------+--------+ 
|      1 | Akash    |  25000 | 
|      2 | Ravi     |  30000 | 
|      3 | Priya    |  35000 | 
+--------+----------+--------+ 
3 rows in set (0.00 sec) 

mysql> UNLOCK TABLES; 
Query OK, 0 rows affected (0.00 sec) 

mysql> LOCK TABLES employee WRITE; 
Query OK, 0 rows affected (0.00 sec) 

mysql> UPDATE employee 
    -> SET salary=40000 
    -> WHERE emp_id=1; 
Query OK, 1 row affected (0.01 sec) 
Rows matched: 1  Changed: 1  Warnings: 0 

mysql> SELECT*FROM employee; 
+--------+----------+--------+ 
| emp_id | emp_name | salary | 
+--------+----------+--------+ 
|      1 | Akash    |  40000 | 
|      2 | Ravi     |  30000 | 
|      3 | Priya    |  35000 | 
+--------+----------+--------+ 
3 rows in set (0.00 sec) 

mysql> UNLOCK TABLES; 
Query OK, 0 rows affected (0.00 sec)