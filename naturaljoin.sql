mysql> select * from oder1 NATURAL JOIN products;
+----------+------------+-------------+---------------+------------+--------------+------------+
| order_id | order_name | customer_id | customer_name | orderdate  | product_name | product_id |
+----------+------------+-------------+---------------+------------+--------------+------------+
| A01      | myntra     | q11         | shakuntala    | 2011-02-01 | lipstick     | P01        |
| A02      | ajio       | q12         | meenakshi     | 2011-08-01 | lipbalm      | P02        |
| A03      | foxtale    | q13         | chinnammu     | 2011-09-06 | lipgloss     | P03        |
| A04      | dotkey     | q14         | surabhi       | 2011-04-06 | liptint      | P04        |
| A05      | drsheths   | q15         | kulsummu      | 2012-04-06 | lipcare      | P05        |
| A06      | nykaa      | q16         | ponnu         | 2017-05-06 | lipmask      | P06        |
| A08      | meesho     | q17         | dakshayani    | 2017-05-06 | lipliner     | P07        |
+----------+------------+-------------+---------------+------------+--------------+------------+
-----------+-------------+---------------+------------+------------' at line 1
  VIEW LEVEL!!!!
mysql> create view productsview as select order_id,product_name from products;
Query OK, 0 rows affected (0.16 sec)
mysql>  select * from productsview;
+----------+--------------+
| order_id | product_name |
+----------+--------------+
| A01      | lipstick     |
| A02      | lipbalm      |
| A03      | lipgloss     |
| A04      | liptint      |
| A05      | lipcare      |
| A06      | lipmask      |
| A08      | lipliner     |
+----------+--------------+
7 rows in set (0.02 sec)
