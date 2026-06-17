mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| demo                     |
| ecommerce                |
| information_schema       |
| joins                    |
| mysql                    |
| performance_schema       |
| sakila                   |
| store_procedure          |
| studentmanagementsysytem |
| sys                      |
| world                    |
+--------------------------+
11 rows in set (0.05 sec)

####create database####


mysql> create database studentmanagementsystem;
Query OK, 1 row affected (0.02 sec)

####use database####

mysql> use studentmanagementsystem;
Database changed

####create table student####

mysql> create table student(student_id int primary key,first_name varchar(20),last_name varchar(20));
Query OK, 0 rows affected (0.09 sec)

####create table course####

mysql> create table course(course_id int primary key, course_name varchar(20));
Query OK, 0 rows affected (0.09 sec)

####create table Enrollment####

mysql> create table Enrollment(Enrollment_id int primary key,student_id int,course_id int,foreign key(student_id) references student(student_id),foreign key(course_id) references course(course_id));
Query OK, 0 rows affected (0.10 sec)

mysql> insert into student values(1,'supriya','yadav'),(2,'Sonal','Gupta'),(3,'rohan','tiwari'),(4,'sanjana','rathod');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from student;
+------------+------------+-----------+
| student_id | first_name | last_name |
+------------+------------+-----------+
|          1 | supriya    | yadav     |
|          2 | Sonal      | Gupta     |
|          3 | rohan      | tiwari    |
|          4 | sanjana    | rathod    |
+------------+------------+-----------+
4 rows in set (0.00 sec)


mysql> insert into course values(101,'web developmet'),(102,'SQL queries'),(103,'database system'),(104,'Java developer');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from course;
+-----------+-----------------+
| course_id | course_name     |
+-----------+-----------------+
|       101 | web developmet  |
|       102 | SQL queries     |
|       103 | database system |
|       104 | Java developer  |
+-----------+-----------------+
4 rows in set (0.00 sec)

####Use INNER JOIN####


mysql> insert into Enrollment values(1,1,101),(2,2,102),(3,3,103),(4,4,104);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select*from Enrollment;
+---------------+------------+-----------+
| Enrollment_id | student_id | course_id |
+---------------+------------+-----------+
|             1 |          1 |       101 |
|             2 |          2 |       102 |
|             3 |          3 |       103 |
|             4 |          4 |       104 |
+---------------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select s.student_id,s.first_name,s.last_name,c.course_id,c.course_name from student s inner join Enrollment e on s.student_id=e.student_id inner join course c on e.course_id = c.course_id;
+------------+------------+-----------+-----------+-----------------+
| student_id | first_name | last_name | course_id | course_name     |
+------------+------------+-----------+-----------+-----------------+
|          1 | supriya    | yadav     |       101 | web developmet  |
|          2 | Sonal      | Gupta     |       102 | SQL queries     |
|          3 | rohan      | tiwari    |       103 | database system |
|          4 | sanjana    | rathod    |       104 | Java developer  |
+------------+------------+-----------+-----------+-----------------+
4 rows in set (0.00 sec)

mysql> select s.student_id,s.first_name,s.last_name,c.course_id,c.course_name from student s cross join course c;
+------------+------------+-----------+-----------+-----------------+
| student_id | first_name | last_name | course_id | course_name     |
+------------+------------+-----------+-----------+-----------------+
|          4 | sanjana    | rathod    |       101 | web developmet  |
|          3 | rohan      | tiwari    |       101 | web developmet  |
|          2 | Sonal      | Gupta     |       101 | web developmet  |
|          1 | supriya    | yadav     |       101 | web developmet  |
|          4 | sanjana    | rathod    |       102 | SQL queries     |
|          3 | rohan      | tiwari    |       102 | SQL queries     |
|          2 | Sonal      | Gupta     |       102 | SQL queries     |
|          1 | supriya    | yadav     |       102 | SQL queries     |
|          4 | sanjana    | rathod    |       103 | database system |
|          3 | rohan      | tiwari    |       103 | database system |
|          2 | Sonal      | Gupta     |       103 | database system |
|          1 | supriya    | yadav     |       103 | database system |
|          4 | sanjana    | rathod    |       104 | Java developer  |
|          3 | rohan      | tiwari    |       104 | Java developer  |
|          2 | Sonal      | Gupta     |       104 | Java developer  |
|          1 | supriya    | yadav     |       104 | Java developer  |
+------------+------------+-----------+-----------+-----------------+
16 rows in set (0.00 sec)

mysql>