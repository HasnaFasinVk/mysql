  mysql> create table oder1(order_id  varchar(10),order_name  varchar(10),customer_id  varchar(10),customer_name  varchar(10),orderdate date);
Query OK, 0 rows affected (0.56 sec)

mysql> insert into oder1 values("A01","myntra","q11","shakuntala","01-01-2011");
ERROR 1292 (22007): Incorrect date value: '01-01-2011' for column 'orderdate' at row 1
mysql> insert into oder1 values("A01","myntra","q11","shakuntala",'01-01-2011');
ERROR 1292 (22007): Incorrect date value: '01-01-2011' for column 'orderdate' at row 1
mysql> insert into oder1 values("A01","myntra","q11","shakuntala",'01/01/2011');
ERROR 1292 (22007): Incorrect date value: '01/01/2011' for column 'orderdate' at row 1
mysql> insert into oder1 values("A01","myntra","q11","shakuntala",'01/01/2011');
ERROR 1292 (22007): Incorrect date value: '01/01/2011' for column 'orderdate' at row 1
mysql> create table oder1(order_id  varchar(10),order_name  varchar(10),customer_id  varchar(10),customer_name  varchar(10),orderdate date);
ERROR 1050 (42S01): Table 'oder1' already exists
mysql> insert into order values("A01","myntra","q11","shakuntala",to_date('01-02-2011','mm-dd-yy'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'order values("A01","myntra","q11","shakuntala",to_date('01-02-2011','mm-dd-yy'))' at line 1
mysql> insert into oder1 values("A01","myntra","q11","shakuntala",to_date('01-02-2011','mm-dd-yy'));
ERROR 1305 (42000): FUNCTION empone.to_date does not exist
mysql> insert into oder1 values("A01","myntra","q11","shakuntala","2011-02-01");
Query OK, 1 row affected (0.07 sec)

mysql> insert into oder1 values("A02","ajio","q12","meenakshi","2011-08-01");
Query OK, 1 row affected (0.07 sec)

mysql> insert into oder1 values("A03","foxtale","q13","chinnammu","2011-09-06");
Query OK, 1 row affected (0.05 sec)

mysql> insert into oder1 values("A04","dotkey","q14","surabhi","2011-04-06");
Query OK, 1 row affected (0.05 sec)

mysql> insert into oder1 values("A05","drsheths","q15","kulsummu","2012-04-06");
Query OK, 1 row affected (0.04 sec)

mysql> insert into oder1 values("A06","nykaa","q16","ponnu","2017-05-06");
Query OK, 1 row affected (0.05 sec)

mysql> insert into oder1 values("A08","meesho","q17","dakshayani","2017-05-06");
Query OK, 1 row affected (0.04 sec)

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

mysql> create table products(product_name varchar(10),product_id varchar(10),order_id varchar(10));
Query OK, 0 rows affected (0.38 sec)

mysql> insert into products values("lipstick","P01","A01");
Query OK, 1 row affected (0.04 sec)

mysql> insert into products values("lipbalm","P02","A02");
Query OK, 1 row affected (0.09 sec)

mysql> insert into products values("lipgloss","P03","A03");
Query OK, 1 row affected (0.06 sec)

mysql> insert into products values("liptint","P04","A04");
Query OK, 1 row affected (0.06 sec)

mysql> insert into products values("lipcare","P05","A05");
Query OK, 1 row affected (0.13 sec)

mysql> insert into products values("lipmask","P06","A06");
Query OK, 1 row affected (0.08 sec)

mysql> insert into products values("lipliner","P07","A08");
Query OK, 1 row affected (0.04 sec)

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

mysql> select order_id(s);
ERROR 1305 (42000): FUNCTION empone.order_id does not exist
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
7 rows in set (0.03 sec)

mysql> select order_id(s);
ERROR 1305 (42000): FUNCTION empone.order_id does not exist
mysql> select oder1.order_id,products.order_i;
ERROR 1109 (42S02): Unknown table 'oder1' in field list
mysql> select *from oder1;
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

mysql> select *from products;
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

mysql> select order_id;
ERROR 1054 (42S22): Unknown column 'order_id' in 'field list'
mysql> select oder1.order_id,oder1.order_name,products.order_id,products.product_name;
ERROR 1109 (42S02): Unknown table 'oder1' in field list
mysql> select *from oder1;
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

mysql> select oder1.order_id,products.order_id;
ERROR 1109 (42S02): Unknown table 'oder1' in field list
mysql> select oder1.order_id,oder1.orderproducts.order_id from oder1 join products on order_id=products.order_id;
ERROR 1054 (42S22): Unknown column 'oder1.orderproducts.order_id' in 'field list'
mysql> select oder1.order_id,oder1.order_name,products.order_id,products.product_name from oder1 join products on odor1.order_id=products.order_id;
ERROR 1054 (42S22): Unknown column 'odor1.order_id' in 'on clause'
mysql> select oder1.order_id,oder1.order_name,products.order_id,products.product_name from oder1 join products on oder1.order_id=products.order_id;
+----------+------------+----------+--------------+
| order_id | order_name | order_id | product_name |
+----------+------------+----------+--------------+
| A01      | myntra     | A01      | lipstick     |
| A02      | ajio       | A02      | lipbalm      |
| A03      | foxtale    | A03      | lipgloss     |
| A04      | dotkey     | A04      | liptint      |
| A05      | drsheths   | A05      | lipcare      |
| A06      | nykaa      | A06      | lipmask      |
| A08      | meesho     | A08      | lipliner     |
+----------+------------+----------+--------------+
7 rows in set (0.01 sec)

mysql> select oder1.order_id,oder1.order_name,products.product_id,products.product_name from oder1 join products on oder1.order_id=products.order_id;
+----------+------------+------------+--------------+
| order_id | order_name | product_id | product_name |
+----------+------------+------------+--------------+
| A01      | myntra     | P01        | lipstick     |
| A02      | ajio       | P02        | lipbalm      |
| A03      | foxtale    | P03        | lipgloss     |
| A04      | dotkey     | P04        | liptint      |
| A05      | drsheths   | P05        | lipcare      |
| A06      | nykaa      | P06        | lipmask      |
| A08      | meesho     | P07        | lipliner     |
+----------+------------+------------+--------------+
7 rows in set (0.00 sec)
