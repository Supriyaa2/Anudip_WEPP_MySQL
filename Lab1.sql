
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
# Use database

mysql> use studentmanagementsysytem;
Database changed

# Create Table student

mysql> create table student(Student_id varchar(20) not null primary key, First_name varchar(20) not null, Last_name varchar(20) not null, DateOfBirth DateTime not null, Gender varchar(10) not null, Email varchar(20) not null, Phone varchar(20) not null);
Query OK, 0 rows affected (0.21 sec)

mysql> desc student;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Student_id  | varchar(20) | NO   | PRI | NULL    |       |
| First_name  | varchar(20) | NO   |     | NULL    |       |
| Last_name   | varchar(20) | NO   |     | NULL    |       |
| DateOfBirth | datetime    | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   |     | NULL    |       |
| Phone       | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select *from student;
Empty set (0.09 sec)

#Insert the values 

mysql> insert into student values('s01', 'Supriya', 'yadav','2005-3-2','female','sup@gmail.com','2376589301'),('s02','hashita','shukla','2006-4-6','female','harsu@gmil.com','2368903682'),('s03', 'shreya' ,'jadhav', '2005-3-7', 'female','shreta@gmail.com','8765432901'),('s04','shanu','jadhav','2004-3-5','female','shanu@gmail.com','4685643278'),('s05','sakshi','shahu','2005-5-7','female','sak@gmail.com','374857496');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student
    -> ;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Student_id  | varchar(20) | NO   | PRI | NULL    |       |
| First_name  | varchar(20) | NO   |     | NULL    |       |
| Last_name   | varchar(20) | NO   |     | NULL    |       |
| DateOfBirth | datetime    | NO   |     | NULL    |       |
| Gender      | varchar(10) | NO   |     | NULL    |       |
| Email       | varchar(20) | NO   |     | NULL    |       |
| Phone       | varchar(20) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> select *from student;
+------------+------------+-----------+---------------------+--------+------------------+------------+
| Student_id | First_name | Last_name | DateOfBirth         | Gender | Email            | Phone      |
+------------+------------+-----------+---------------------+--------+------------------+------------+
| s01        | Supriya    | yadav     | 2005-03-02 00:00:00 | female | sup@gmail.com    | 2376589301 |
| s02        | hashita    | shukla    | 2006-04-06 00:00:00 | female | harsu@gmil.com   | 2368903682 |
| s03        | shreya     | jadhav    | 2005-03-07 00:00:00 | female | shreta@gmail.com | 8765432901 |
| s04        | shanu      | jadhav    | 2004-03-05 00:00:00 | female | shanu@gmail.com  | 4685643278 |
| s05        | sakshi     | shahu     | 2005-05-07 00:00:00 | female | sak@gmail.com    | 374857496  |
+------------+------------+-----------+---------------------+--------+------------------+------------+
5 rows in set (0.00 sec)

mysql>





 near 'databses' at line 1
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

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| product             |
+---------------------+
1 row in set (0.01 sec)

mysql> select *from tables;
ERROR 1146 (42S02): Table 'ecommerce.tables' doesn't exist
mysql> select *from product;
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| product_id | product_name | category    | sub_category | original_price | selling_price | stock |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
| p101       | television   | electronics | sony         |          25000 |         21000 |    10 |
| p102       | chair        | furnichure  | office chair |          10000 |         80000 |    30 |
| p103       | Table        | furnichure  | office table |          20000 |         60000 |    20 |
| p104       | Mobile       | electronics | apple        |          70000 |         20000 |    10 |
| p105       | keyboard     | electronic  | hp           |          40000 |         50000 |    18 |
| p106       | mouse        | electronic  | hp           |          60000 |         80000 |    50 |
+------------+--------------+-------------+--------------+----------------+---------------+-------+
6 rows in set (0.00 sec)

mysql> create table customer(Customer_id varchar(10) not null primary key, Name varchar(50) noy null, city varchar(50)not null, Email varchar(50)not null, Phone_no varchar(10)not null, address varchar(60)not null, pincode int not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'noy null, city varchar(50)not null, Email varchar(50)not null, Phone_no varchar(' at line 1
mysql> create table customer(Customer_id varchar(10) not null primary key, Name varchar(50) not null, city varchar(50)not null, Email varchar(50)not null, Phone_no varchar(10)not null, address varchar(60)not null, pincode int not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_id | varchar(10) | NO   | PRI | NULL    |       |
| Name        | varchar(50) | NO   |     | NULL    |       |
| city        | varchar(50) | NO   |     | NULL    |       |
| Email       | varchar(50) | NO   |     | NULL    |       |
| Phone_no    | varchar(10) | NO   |     | NULL    |       |
| address     | varchar(60) | NO   |     | NULL    |       |
| pincode     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)


mysql> insert into customer values('1', 'Supriya','Diva','sup@gmail.com','1234567890','Diva_East',400612);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('1', 'Sakshi','Diva','sak@gmail.com','1234564567','Diva_East',400612);
ERROR 1062 (23000): Duplicate entry '1' for key 'customer.PRIMARY'
mysql> insert into customer values('2', 'Sakshi','Diva','sak@gmail.com','1234564567','Diva_East',400612);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('3', 'Om','Diva','om@gmail.com','1234576547','Diva_west',400612);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values('4', 'riya','Bhandhup','riya@gmail.com','1234578765','Bhandhup',400611);
Query OK, 1 row affected (0.01 sec)

mysql> select *from customer;
+-------------+---------+----------+----------------+------------+-----------+---------+
| Customer_id | Name    | city     | Email          | Phone_no   | address   | pincode |
+-------------+---------+----------+----------------+------------+-----------+---------+
| 1           | Supriya | Diva     | sup@gmail.com  | 1234567890 | Diva_East |  400612 |
| 2           | Sakshi  | Diva     | sak@gmail.com  | 1234564567 | Diva_East |  400612 |
| 3           | Om      | Diva     | om@gmail.com   | 1234576547 | Diva_west |  400612 |
| 4           | riya    | Bhandhup | riya@gmail.com | 1234578765 | Bhandhup  |  400611 |
+-------------+---------+----------+----------------+------------+-----------+---------+
4 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_id     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(20) | NO   |     | NULL    |       |
| category       | varchar(30) | NO   |     | NULL    |       |
| sub_category   | varchar(30) | NO   |     | NULL    |       |
| original_price | double      | NO   |     | NULL    |       |
| selling_price  | double      | NO   |     | NULL    |       |
| stock          | int         | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> create table order_details( Order_id varchar(20)not null primary key,Customer_id varchar(10)not null,product_id varchar(10)not null,quantity double not null, total_price double not null, payment_mode varchar(50) not null,order_date datetime not null, order_status varchar(40) not null, foreign key (Customer_id) references customer(Customer_id),foreign key (product_id) references product(product_id));
Query OK, 0 rows affected (0.10 sec)

mysql> desc order_details;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| Order_id     | varchar(20) | NO   | PRI | NULL    |       |
| Customer_id  | varchar(10) | NO   | MUL | NULL    |       |
| product_id   | varchar(10) | NO   | MUL | NULL    |       |
| quantity     | double      | NO   |     | NULL    |       |
| total_price  | double      | NO   |     | NULL    |       |
| payment_mode | varchar(50) | NO   |     | NULL    |       |
| order_date   | datetime    | NO   |     | NULL    |       |
| order_status | varchar(40) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)


mysql> insert into order_details values('0101','C001','P101',20,300,'COD','2026-7-09','Pending');
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`ecommerce`.`order_details`, CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`))
mysql> insert into order_details values('0101','1','P101',20,300,'COD','2026-7-09','Pending');
Query OK, 1 row affected (0.01 sec)

mysql> insert into order_details values('0202','2','P102',10,455,'COD','2026-5-4','online'),('0303','3','P103',45,588,'UPI','2024-4-5','online');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into order_details values('0404','4','P104',40,500,'Card','2024-4-3','Shipped');
Query OK, 1 row affected (0.01 sec)

mysql> desc order_details;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| Order_id     | varchar(20) | NO   | PRI | NULL    |       |
| Customer_id  | varchar(10) | NO   | MUL | NULL    |       |
| product_id   | varchar(10) | NO   | MUL | NULL    |       |
| quantity     | double      | NO   |     | NULL    |       |
| total_price  | double      | NO   |     | NULL    |       |
| payment_mode | varchar(50) | NO   |     | NULL    |       |
| order_date   | datetime    | NO   |     | NULL    |       |
| order_status | varchar(40) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> select *from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| Order_id | Customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| 0101     | 1           | P101       |       20 |         300 | COD          | 2026-07-09 00:00:00 | Pending      |
| 0202     | 2           | P102       |       10 |         455 | COD          | 2026-05-04 00:00:00 | online       |
| 0303     | 3           | P103       |       45 |         588 | UPI          | 2024-04-05 00:00:00 | online       |
| 0404     | 4           | P104       |       40 |         500 | Card         | 2024-04-03 00:00:00 | Shipped      |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select Customer_id name, city from customer;
+------+----------+
| name | city     |
+------+----------+
| 1    | Diva     |
| 2    | Diva     |
| 3    | Diva     |
| 4    | Bhandhup |
+------+----------+
4 rows in set (0.00 sec)

mysql> select Customer_id ,name, city from customer;
+-------------+---------+----------+
| Customer_id | name    | city     |
+-------------+---------+----------+
| 1           | Supriya | Diva     |
| 2           | Sakshi  | Diva     |
| 3           | Om      | Diva     |
| 4           | riya    | Bhandhup |
+-------------+---------+----------+
4 rows in set (0.00 sec)

mysql> select *from customer;
+-------------+---------+----------+----------------+------------+-----------+---------+
| Customer_id | Name    | city     | Email          | Phone_no   | address   | pincode |
+-------------+---------+----------+----------------+------------+-----------+---------+
| 1           | Supriya | Diva     | sup@gmail.com  | 1234567890 | Diva_East |  400612 |
| 2           | Sakshi  | Diva     | sak@gmail.com  | 1234564567 | Diva_East |  400612 |
| 3           | Om      | Diva     | om@gmail.com   | 1234576547 | Diva_west |  400612 |
| 4           | riya    | Bhandhup | riya@gmail.com | 1234578765 | Bhandhup  |  400611 |
+-------------+---------+----------+----------------+------------+-----------+---------+
4 rows in set (0.00 sec)

mysql> select *from customer where name like 'S%';
+-------------+---------+------+---------------+------------+-----------+---------+
| Customer_id | Name    | city | Email         | Phone_no   | address   | pincode |
+-------------+---------+------+---------------+------------+-----------+---------+
| 1           | Supriya | Diva | sup@gmail.com | 1234567890 | Diva_East |  400612 |
| 2           | Sakshi  | Diva | sak@gmail.com | 1234564567 | Diva_East |  400612 |
+-------------+---------+------+---------------+------------+-----------+---------+
2 rows in set (0.01 sec)

mysql> select *from customer where city like 'B%';
+-------------+------+----------+----------------+------------+----------+---------+
| Customer_id | Name | city     | Email          | Phone_no   | address  | pincode |
+-------------+------+----------+----------------+------------+----------+---------+
| 4           | riya | Bhandhup | riya@gmail.com | 1234578765 | Bhandhup |  400611 |
+-------------+------+----------+----------------+------------+----------+---------+
1 row in set (0.00 sec)

mysql> select *from customer where name like '%ya';
+-------------+---------+----------+----------------+------------+-----------+---------+
| Customer_id | Name    | city     | Email          | Phone_no   | address   | pincode |
+-------------+---------+----------+----------------+------------+-----------+---------+
| 1           | Supriya | Diva     | sup@gmail.com  | 1234567890 | Diva_East |  400612 |
| 4           | riya    | Bhandhup | riya@gmail.com | 1234578765 | Bhandhup  |  400611 |
+-------------+---------+----------+----------------+------------+-----------+---------+
2 rows in set (0.01 sec)

mysql> select *from customer where address like '%East%';
+-------------+---------+------+---------------+------------+-----------+---------+
| Customer_id | Name    | city | Email         | Phone_no   | address   | pincode |
+-------------+---------+------+---------------+------------+-----------+---------+
| 1           | Supriya | Diva | sup@gmail.com | 1234567890 | Diva_East |  400612 |
| 2           | Sakshi  | Diva | sak@gmail.com | 1234564567 | Diva_East |  400612 |
+-------------+---------+------+---------------+------------+-----------+---------+
2 rows in set (0.00 sec)

mysql> select *from customer where city like 'D__';
Empty set (0.00 sec)

mysql> select *from customer where city like 'D___';
+-------------+---------+------+---------------+------------+-----------+---------+
| Customer_id | Name    | city | Email         | Phone_no   | address   | pincode |
+-------------+---------+------+---------------+------------+-----------+---------+
| 1           | Supriya | Diva | sup@gmail.com | 1234567890 | Diva_East |  400612 |
| 2           | Sakshi  | Diva | sak@gmail.com | 1234564567 | Diva_East |  400612 |
| 3           | Om      | Diva | om@gmail.com  | 1234576547 | Diva_west |  400612 |
+-------------+---------+------+---------------+------------+-----------+---------+
3 rows in set (0.00 sec)


mysql> select *from students;
ERROR 1146 (42S02): Table 'ecommerce.students' doesn't exist
mysql> create table student(Student_id varchar(30) not null primary key, First_name varchar(20) not null, Last_name varchar(20) not null,age int not null, address varchar(50)not null);
Query OK, 0 rows affected (0.04 sec)

mysql> select *from student;
Empty set (0.01 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Student_id | varchar(30) | NO   | PRI | NULL    |       |
| First_name | varchar(20) | NO   |     | NULL    |       |
| Last_name  | varchar(20) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)


mysql> insert into student values('1','Supriya','Yadav',21,'Diva_East'),('2','Sakshi','shahu',21,'Diva'),('3','Harsu','Shukla',20,'Diva');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from student;
+------------+------------+-----------+-----+-----------+
| Student_id | First_name | Last_name | age | address   |
+------------+------------+-----------+-----+-----------+
| 1          | Supriya    | Yadav     |  21 | Diva_East |
| 2          | Sakshi     | shahu     |  21 | Diva      |
| 3          | Harsu      | Shukla    |  20 | Diva      |
+------------+------------+-----------+-----+-----------+
3 rows in set (0.00 sec)


mysql> delete from student where Student_id='2';
Query OK, 1 row affected (0.01 sec)

mysql> select *from student;
+------------+------------+-----------+-----+-----------+
| Student_id | First_name | Last_name | age | address   |
+------------+------------+-----------+-----+-----------+
| 1          | Supriya    | Yadav     |  21 | Diva_East |
| 3          | Harsu      | Shukla    |  20 | Diva      |
+------------+------------+-----------+-----+-----------+
2 rows in set (0.00 sec)

mysql> delete from student;
Query OK, 2 rows affected (0.01 sec)

mysql> select *from student;
Empty set (0.00 sec)

mysql>