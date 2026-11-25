mysql> USE COLLEGE; 
Database changed 
mysql> DELIMITER // 
mysql> CREATE PROCEDURE get_student(IN sid INT) 
    -> BEGIN 
    -> DECLARE student_name VARCHAR(50); 
    -> DECLARE CONTINUE HANDLER FOR NOT FOUND 
    -> SET student_name='Student Not Found'; 
    -> SELECT name INTO student_name 
    -> FROM student 
    -> WHERE id=sid; 
    -> SELECT student_name AS Result; 
    -> END// 
Query OK, 0 rows affected (0.04 sec) 

mysql> CALL get_student(1); 
    -> // 
+--------+ 
| Result | 
+--------+ 
| Akash  | 
+--------+ 
1 row in set (0.01 sec) 

Query OK, 0 rows affected (0.02 sec) 

mysql> CALL get_student(100); 
    -> // 
+-------------------+ 
| Result            | 
+-------------------+ 
| Student Not Found | 
+-------------------+ 
1 row in set (0.01 sec) 

Query OK, 0 rows affected (0.01 sec) 

mysql>