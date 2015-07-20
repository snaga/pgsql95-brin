-- \copy (select * from lineitem order by l_shipdate) to 'lineitem_ordered.data'
DROP INDEX i_l_shipdate;
DROP INDEX i_l_suppkey_partkey;
DROP INDEX i_l_partkey;
DROP INDEX i_l_suppkey;
DROP INDEX i_l_receiptdate;
DROP INDEX i_l_orderkey;
DROP INDEX i_l_orderkey_quantity;
DROP INDEX i_l_commitdate;

truncate lineitem;
\copy lineitem from 'lineitem_ordered.data'

CREATE INDEX i_l_shipdate ON lineitem (l_shipdate);
CREATE INDEX i_l_suppkey_partkey ON lineitem (l_partkey, l_suppkey);
CREATE INDEX i_l_partkey ON lineitem (l_partkey);
CREATE INDEX i_l_suppkey ON lineitem (l_suppkey);
CREATE INDEX i_l_receiptdate ON lineitem (l_receiptdate);
CREATE INDEX i_l_orderkey ON lineitem (l_orderkey);
CREATE INDEX i_l_orderkey_quantity ON lineitem (l_orderkey, l_quantity);
CREATE INDEX i_l_commitdate ON lineitem (l_commitdate);
