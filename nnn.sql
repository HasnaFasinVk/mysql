
mysql> use empone;
Database changed
mysql> create table faculty(fac_no varchar(10) not null, fac_name varchar(10), staff_id varchar(10), primary key(fac_no));
Query OK, 0 rows affected (0.35 sec)

mysql> select * from faculty;
Empty set (0.00 sec)

mysql> insert into faculty values("H1","mirza","S01");
Query OK, 1 row affected (0.09 sec)

mysql> select * from faculty;
+--------+----------+----------+
| fac_no | fac_name | staff_id |
+--------+----------+----------+
| H1     | mirza    | S01      |
+--------+----------+----------+
1 row in set (0.00 sec)

mysql> insert into faculty values("H2","diya","S02");
Query OK, 1 row affected (0.07 sec)

mysql> insert into faculty values("H3","rousha","S03");
Query OK, 1 row affected (0.06 sec)

mysql> insert into faculty values("H4","hadiya","S04");
Query OK, 1 row affected (0.05 sec)

mysql> insert into faculty values("H5","fidha","S05");
Query OK, 1 row affected (0.04 sec)

mysql> select * from faculty;
+--------+----------+----------+
| fac_no | fac_name | staff_id |
+--------+----------+----------+
| H1     | mirza    | S01      |
| H2     | diya     | S02      |
| H3     | rousha   | S03      |
| H4     | hadiya   | S04      |
| H5     | fidha    | S05      |
+--------+----------+----------+
5 rows in set (0.00 sec)
