mysql> use empl;
Database changed
mysql> select * from empl;
+------+--------+----------+--------------+------------------+----------+
| SSN  | name   | dept     | project_name | project_location | salary   |
+------+--------+----------+--------------+------------------+----------+
| A1   | hasna  | biotech  | crisp        | north            | 10000.00 |
| A2   | fasna  | biotech  | gene edit    | south            | 34567.00 |
| A3   | jasna  | foodtech | foodsec      | west             | 98765.00 |
| A4   | basna  | micro    | microbes     | east             | 37777.00 |
| A5   | husna  | micro    | microby      | east1            | 23456.00 |
| A6   | fusna  | micro    | microba      | east2            | 44444.00 |
| A7   | jusna  | foodtech | foodset      | west1            | 41435.00 |
| A8   | rusna  | foodtech | foodie       | west2            | 45699.00 |
| A9   | saneen | bba      | finance      | kolkatha         | 11111.00 |
| A10  | ashab  | bca      | science      | delhi            |   666.66 |
+------+--------+----------+--------------+------------------+----------+
10 rows in set (0.00 sec)

mysql> select * from empl;
+------+--------+----------+--------------+------------------+----------+
| SSN  | name   | dept     | project_name | project_location | salary   |
+------+--------+----------+--------------+------------------+----------+
| A1   | hasna  | biotech  | crisp        | north            | 10000.00 |
| A2   | fasna  | biotech  | gene edit    | south            | 34567.00 |
| A3   | jasna  | foodtech | foodsec      | west             | 98765.00 |
| A4   | basna  | micro    | microbes     | east             | 37777.00 |
| A5   | husna  | micro    | microby      | east1            | 23456.00 |
| A6   | fusna  | micro    | microba      | east2            | 44444.00 |
| A7   | jusna  | foodtech | foodset      | west1            | 41435.00 |
| A8   | rusna  | foodtech | foodie       | west2            | 45699.00 |
| A9   | saneen | bba      | finance      | kolkatha         | 11111.00 |
| A10  | ashab  | bca      | science      | delhi            |   666.66 |
+------+--------+----------+--------------+------------------+----------+
10 rows in set (0.00 sec)

mysql> select salary from empl where salary between 10000 and 40000;
+----------+
| salary   |
+----------+
| 10000.00 |
| 34567.00 |
| 37777.00 |
| 23456.00 |
| 11111.00 |
+----------+
5 rows in set (0.03 sec)

mysql>  select dept from empl where dept in(foodtech,biotech,bba);
ERROR 1054 (42S22): Unknown column 'foodtech' in 'where clause'
mysql> select dept from empl where dept in ("foodtech","biotech","bba");
+----------+
| dept     |
+----------+
| biotech  |
| biotech  |
| foodtech |
| foodtech |
| foodtech |
| bba      |
+----------+
6 rows in set (0.01 sec)

mysql> select dept from empl where dept not in ("foodtech","biotech","bba");
+-------+
| dept  |
+-------+
| micro |
| micro |
| micro |
| bca   |
+-------+
4 rows in set (0.00 sec)

mysql> select dept from empl where condition group by dept order by dept;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition group by dept order by dept' at line 1
mysql> select name from empl where condition group by dept order by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition group by dept order by name' at line 1
mysql> select name from empl where condition group by dept order by SSN;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition group by dept order by SSN' at line 1
mysql> select min(salary) from empl where condition group by dept order by name;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'condition group by dept order by name' at line 1
mysql> select  count(dept) from empl group by dept;
+-------------+
| count(dept) |
+-------------+
|           2 |
|           3 |
|           3 |
|           1 |
|           1 |
+-------------+
5 rows in set (0.03 sec)

mysql> alter table emp1 add primary key(id);
ERROR 1146 (42S02): Table 'empl.emp1' doesn't exist
mysql> alter table emp1 add primary key(id);
ERROR 1146 (42S02): Table 'empl.emp1' doesn't exist
mysql> alter table empl add primary key(SSN);
Query OK, 0 rows affected (1.63 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc empl;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| SSN              | varchar(10) | NO   | PRI | NULL    |       |
| name             | varchar(10) | YES  |     | NULL    |       |
| dept             | varchar(10) | YES  |     | NULL    |       |
| project_name     | varchar(10) | YES  |     | NULL    |       |
| project_location | varchar(10) | YES  |     | NULL    |       |
| salary           | float(10,2) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
6 rows in set (0.14 sec)
