mysql> use ecommerce;
Database changed
mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| ecommerce                |
| information_schema       |
| mysql                    |
| performance_schema       |
| sakila                   |
| studentmanagementsysytem |
| sys                      |
| world                    |
+--------------------------+
8 rows in set (0.01 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| employee            |
| employee_details    |
| order_details       |
| product             |
| student             |
+---------------------+
6 rows in set (0.01 sec)

##Task 1: Insert Data Write an SQL INSERT statement to insert data into the Employee table. ##


mysql> create table Employee_table;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table Employee_table(Emp_id int not null primary key, first_name varchar(20)not null, last_name varchar(10)not null,age int not null,Email varchar(50)not null);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into Employee_table values('01','Supriya','yadav',21,'sup@gmail.com');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Employee_table values('02','samiksh','shetty',10,'sam@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee_table values('03','sejal','Gupta',20,'sej@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into Employee_table values('04','Rohan','Singh',20,'roh@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> select*from Employee_table;
+--------+------------+-----------+-----+---------------+
| Emp_id | first_name | last_name | age | Email         |
+--------+------------+-----------+-----+---------------+
|      1 | Supriya    | yadav     |  21 | sup@gmail.com |
|      2 | samiksh    | shetty    |  10 | sam@gmail.com |
|      3 | sejal      | Gupta     |  20 | sej@gmail.com |
|      4 | Rohan      | Singh     |  20 | roh@gmail.com |
+--------+------------+-----------+-----+---------------+
4 rows in set (0.00 sec)

##Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the first_name and last_name of all employees from the Employee table. ##

mysql> select first_name,last_name from Employee_table;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Supriya    | yadav     |
| samiksh    | shetty    |
| sejal      | Gupta     |
| Rohan      | Singh     |
+------------+-----------+
4 rows in set (0.00 sec)

##Task 3: Filtering Data Write an SQL SELECT statement to retrieve the first_name, last_name, and age of employees who are older than 30 years. ##

mysql> select first_name,last_name,age from Employee_table where age>30;
Empty set (0.00 sec)

mysql> update Employee_table set age= age+1 where age>25;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select*from Employee_table;
+--------+------------+-----------+-----+---------------+
| Emp_id | first_name | last_name | age | Email         |
+--------+------------+-----------+-----+---------------+
|      1 | Supriya    | yadav     |  21 | sup@gmail.com |
|      2 | samiksh    | shetty    |  10 | sam@gmail.com |
|      3 | sejal      | Gupta     |  20 | sej@gmail.com |
|      4 | Rohan      | Singh     |  20 | roh@gmail.com |
+--------+------------+-----------+-----+---------------+
4 rows in set (0.00 sec)

mysql> insert into Employee_table values('05','Neha','Gupta',35,'neh@gmail.com');
Query OK, 1 row affected (0.01 sec)

##Task 4: Updating Data Write an SQL UPDATE statement to increase the age of employees by 1 year for all employees older than 2##


mysql> update Employee_table set age= age+1 where age>25;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select*from Employee_table;
+--------+------------+-----------+-----+---------------+
| Emp_id | first_name | last_name | age | Email         |
+--------+------------+-----------+-----+---------------+
|      1 | Supriya    | yadav     |  21 | sup@gmail.com |
|      2 | samiksh    | shetty    |  10 | sam@gmail.com |
|      3 | sejal      | Gupta     |  20 | sej@gmail.com |
|      4 | Rohan      | Singh     |  20 | roh@gmail.com |
|      5 | Neha       | Gupta     |  36 | neh@gmail.com |
+--------+------------+-----------+-----+---------------+
5 rows in set (0.00 sec)

mysql>