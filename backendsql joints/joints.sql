mysql> create table department(
    -> dept_id  primary key,
    -> dept varchar(20));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'primary key,
dept varchar(20))' at line 2
mysql> create table department(
    -> dept_id int primary key,
    -> dept varchar(20));
Query OK, 0 rows affected (0.03 sec)

mysql> create table student(
    -> s_id int,
    -> s_name varchar(20),
    -> dept_id int,
    -> FOREIGN KEY (dept_id)
    -> references department(dept_id));
Query OK, 0 rows affected (0.04 sec)

mysql> insert into department values(101,"CSE"),(102,"ECE"),(103,"EEE"),(104,"CSM"),(105,"null);
    "> "
    -> insert into department values(101,"CSE"),(102,"ECE"),(103,"EEE"),(104,"CSM"),(105,"null");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insert into department values(101,"CSE"),(102,"ECE"),(103,"EEE"),(104,"CSM"),(10' at line 3
mysql> insert into department values(101,"CSE"),(102,"ECE"),(103,"EEE"),(104,"CSM"),(105,"null");
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from depatment;
ERROR 1146 (42S02): Table 'joins.depatment' doesn't exist
mysql> insert into student values(1,"sandhya",101),(2,"Sravanthi",102),(3,"Lakshmi",101),
    -> (4,"Smaba",104),(5,"esha",105);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+------+-----------+---------+
| s_id | s_name    | dept_id |
+------+-----------+---------+
|    1 | sandhya   |     101 |
|    2 | Sravanthi |     102 |
|    3 | Lakshmi   |     101 |
|    4 | Smaba     |     104 |
|    5 | esha      |     105 |
+------+-----------+---------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------+------+
| dept_id | dept |
+---------+------+
|     101 | CSE  |
|     102 | ECE  |
|     103 | EEE  |
|     104 | CSM  |
|     105 | null |
+---------+------+
5 rows in set (0.00 sec)

mysql> select s.s_name,d.dept
    -> from student as s
    -> inner join department as d
    -> where s.dept_id=d.dept_id;
+-----------+------+
| s_name    | dept |
+-----------+------+
| sandhya   | CSE  |
| Sravanthi | ECE  |
| Lakshmi   | CSE  |
| Smaba     | CSM  |
| esha      | null |
+-----------+------+
5 rows in set (0.78 sec)

mysql> select d.dept_id,d.dept,s.s_name
    -> from department as d
    -> LEFT JOIN student as s
    -> ON d.dept_id = s.dept_id;
+---------+------+-----------+
| dept_id | dept | s_name    |
+---------+------+-----------+
|     101 | CSE  | sandhya   |
|     101 | CSE  | Lakshmi   |
|     102 | ECE  | Sravanthi |
|     103 | EEE  | NULL      |
|     104 | CSM  | Smaba     |
|     105 | null | esha      |
+---------+------+-----------+
6 rows in set (0.01 sec)

mysql> select d.dept_id,d.dept,s.s_name
    -> from department as d
    -> RIGHT JOIN student as s
    -> ON d.dept_id = s.dept_id;
+---------+------+-----------+
| dept_id | dept | s_name    |
+---------+------+-----------+
|     101 | CSE  | sandhya   |
|     102 | ECE  | Sravanthi |
|     101 | CSE  | Lakshmi   |
|     104 | CSM  | Smaba     |
|     105 | null | esha      |
+---------+------+-----------+
5 rows in set (0.01 sec)

mysql> select d.dept_id,d.dept,s.s_name
    -> from department as d
    -> LEFT JOIN student as s
    -> ON d.dept_id = s.dept_id
    -> UNION
    -> select d.dept_id,d.dept,s.s_name
    -> from department as d
    -> RIGHT JOIN student as s
    -> ON d.dept_id = s.dept_id;
+---------+------+-----------+
| dept_id | dept | s_name    |
+---------+------+-----------+
|     101 | CSE  | sandhya   |
|     101 | CSE  | Lakshmi   |
|     102 | ECE  | Sravanthi |
|     103 | EEE  | NULL      |
|     104 | CSM  | Smaba     |
|     105 | null | esha      |
+---------+------+-----------+
6 rows in set (0.02 sec)

mysql> select d.dept_id,d.dept,s.s_name
    -> from department as d
    -> FULL OUTER JOIN student as s
    -> ON d.dept_id = s.dept_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FULL OUTER JOIN student as s
ON d.dept_id = s.dept_id' at line 3
mysql> select d.dept_id,d.dept,s.s_name
    -> from department as d
    -> FULL OUTER JOIN student as s
    -> ON d.dept_id = s.dept_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FULL OUTER JOIN student as s
ON d.dept_id = s.dept_id' at line 3
mysql> select d.dept_id,d.dept,s.s_name
    -> from department d
    -> FULL OUTER JOIN student s
    -> ON d.dept_id = s.dept_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FULL OUTER JOIN student s
ON d.dept_id = s.dept_id' at line 3
mysql> ON d.dept_id = s.dept_id;
