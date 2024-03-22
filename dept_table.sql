
mysql> use empone;
Database changed
mysql> select * from empone;
+---------+---------------+---------------+
| dept_id | dept_location | dept_building |
+---------+---------------+---------------+
| d01     | sweden        | one           |
| d02     | germany       | two           |
+---------+---------------+---------------+
2 rows in set (0.00 sec)

mysql> insert into empone values("d03","australia","three");
Query OK, 1 row affected (0.09 sec)

mysql> select * from empone;
+---------+---------------+---------------+
| dept_id | dept_location | dept_building |
+---------+---------------+---------------+
| d01     | sweden        | one           |
| d02     | germany       | two           |
| d03     | australia     | three         |
+---------+---------------+---------------+
3 rows in set (0.00 sec)

mysql> insert into empone values("d04","austria","four");
Query OK, 1 row affected (0.58 sec)

mysql> insert into empone values("d05","egypt","five");
Query OK, 1 row affected (0.04 sec)

mysql> insert into empone values("d06","bhootan","six");
Query OK, 1 row affected (0.05 sec)

mysql> insert into empone values("d07","nepal","seven");
Query OK, 1 row affected (0.16 sec)

mysql> insert into empone values("d08","srilanka","eight");
Query OK, 1 row affected (0.21 sec)

mysql> insert into empone values("d09","inida","nine");
Query OK, 1 row affected (0.05 sec)

mysql> insert into empone values("d010","srilanka","ten");
Query OK, 1 row affected (0.16 sec)

mysql> select * from empone;
+---------+---------------+---------------+
| dept_id | dept_location | dept_building |
+---------+---------------+---------------+
| d01     | sweden        | one           |
| d02     | germany       | two           |
| d03     | australia     | three         |
| d04     | austria       | four          |
| d05     | egypt         | five          |
| d06     | bhootan       | six           |
| d07     | nepal         | seven         |
| d08     | srilanka      | eight         |
| d09     | inida         | nine          |
| d010    | srilanka      | ten           |
+---------+---------------+---------------+
10 rows in set (0.00 sec)
