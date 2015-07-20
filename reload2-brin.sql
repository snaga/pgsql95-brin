\copy (select * from orders order by o_orderdate) to 'orders.dmp'

DROP INDEX i_o_orderdate;
DROP INDEX i_o_custkey;

truncate orders;
\copy orders from 'orders.dmp'

CREATE INDEX i_o_orderdate ON orders USING BRIN (o_orderdate);
CREATE INDEX i_o_custkey ON orders USING BRIN (o_custkey);
