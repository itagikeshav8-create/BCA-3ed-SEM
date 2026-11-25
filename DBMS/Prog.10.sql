mysql> USE college; 
Database changed 
mysql> DROP PROCEDURE IF EXISTS get_student; 
Query OK, 0 rows affected, 1 warning (0.01 sec) 

mysql> DELIMITER // 
mysql> CREATE PROCEDURE get_student(IN sid INT) 
    -> BEGIN 
    -> SELECT name AS Result 
    -> FROM student 
    -> WHERE id = sid; 
    -> END // 
Query OK, 0 rows affected (0.01 sec) 

mysql> DELIMITER; 
    -> CALL get_student(1); 
    -> \c 
mysql> DELIMITER; 
    -> CALL get_student(1); 
    -> \c 
mysql> DELIMITER ; 
mysql> CALL get_student(1); 
+--------+ 
| Result | 
+--------+ 
| Akash  | 
+--------+ 
1 row in set (0.01 sec) 

Query OK, 0 rows affected (0.01 sec) 

mysql>