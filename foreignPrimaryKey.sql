
mysql> select * from oder1;
+----------+------------+-------------+---------------+------------+
| order_id | order_name | customer_id | customer_name | orderdate  |
+----------+------------+-------------+---------------+------------+
| A01      | myntra     | q11         | shakuntala    | 2011-02-01 |
| A02      | ajio       | q12         | meenakshi     | 2011-08-01 |
| A03      | foxtale    | q13         | chinnammu     | 2011-09-06 |
| A04      | dotkey     | q14         | surabhi       | 2011-04-06 |
| A05      | drsheths   | q15         | kulsummu      | 2012-04-06 |
| A06      | nykaa      | q16         | ponnu         | 2017-05-06 |
| A08      | meesho     | q17         | dakshayani    | 2017-05-06 |
+----------+------------+-------------+---------------+------------+
7 rows in set (0.00 sec)

mysql> select * from products;
+--------------+------------+----------+
| product_name | product_id | order_id |
+--------------+------------+----------+
| lipstick     | P01        | A01      |
| lipbalm      | P02        | A02      |
| lipgloss     | P03        | A03      |
| liptint      | P04        | A04      |
| lipcare      | P05        | A05      |
| lipmask      | P06        | A06      |
| lipliner     | P07        | A08      |
+--------------+------------+----------+
alter table products add primary key(product_id);
Query OK, 0 rows affected (1.50 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from products;
+--------------+------------+----------+
| product_name | product_id | order_id |
+--------------+------------+----------+
| lipstick     | P01        | A01      |
| lipbalm      | P02        | A02      |
| lipgloss     | P03        | A03      |
| liptint      | P04        | A04      |
| lipcare      | P05        | A05      |
| lipmask      | P06        | A06      |
| lipliner     | P07        | A08      |
+--------------+------------+----------+
7 rows in set (0.00 sec)

mysql> alter table oder1 add primary key(order_id);_
Query OK, 0 rows affected (1.27 sec)
Records: 0  Duplicates: 0  Warnings: 0
mysql> alter table products add foreign key(order_id) references oder1(order_id);
Query OK, 7 rows affected (1.63 sec)
Records: 7  Duplicates: 0  Warnings: 0
mysql> desc products;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| product_name | varchar(10) | YES  |     | NULL    |       |
| product_id   | varchar(10) | NO   | PRI | NULL    |       |
| order_id     | varchar(10) | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
