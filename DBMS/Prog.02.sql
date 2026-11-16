CREATE TABLE employee (
    ->     emp_id INT,
    ->     emp_name VARCHAR(50),
    ->     salary INT
    -> );
Query OK, 0 rows affected (1.20 sec)

mysql>
mysql> ALTER TABLE employee
    -> ADD department VARCHAR(30);
Query OK, 0 rows affected (1.42 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>
mysql> ALTER TABLE employee
    -> MODIFY salary DECIMAL(10,2);
Query OK, 0 rows affected (1.17 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> RENAME TABLE employee TO staff;
Query OK, 0 rows affected (0.26 sec)

mysql> TRUNCATE TABLE staff;
Query OK, 0 rows affected (0.51 sec)

mysql> DROP TABLE staff;
Query OK, 0 rows affected (0.29 sec)
