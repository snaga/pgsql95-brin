-- Drop Btree Indexes
DROP INDEX i_l_shipdate;
DROP INDEX i_l_suppkey_partkey;
DROP INDEX i_l_partkey;
DROP INDEX i_l_suppkey;
DROP INDEX i_l_receiptdate;
DROP INDEX i_l_orderkey;
DROP INDEX i_l_orderkey_quantity;
DROP INDEX i_c_nationkey;
DROP INDEX i_o_orderdate;
DROP INDEX i_o_custkey;
DROP INDEX i_s_nationkey;
DROP INDEX i_ps_partkey;
DROP INDEX i_ps_suppkey;
DROP INDEX i_n_regionkey;
DROP INDEX i_l_commitdate;

\timing

CREATE INDEX i_l_shipdate
  ON lineitem USING BRIN (l_shipdate);

CREATE INDEX i_l_suppkey_partkey
  ON lineitem USING BRIN (l_partkey, l_suppkey);

CREATE INDEX i_l_partkey
  ON lineitem USING BRIN (l_partkey);

CREATE INDEX i_l_suppkey
  ON lineitem USING BRIN (l_suppkey);

CREATE INDEX i_l_receiptdate
  ON lineitem USING BRIN (l_receiptdate);

CREATE INDEX i_l_orderkey
  ON lineitem USING BRIN (l_orderkey);

CREATE INDEX i_l_orderkey_quantity
  ON lineitem USING BRIN (l_orderkey, l_quantity);

CREATE INDEX i_c_nationkey
  ON customer USING BRIN (c_nationkey);

CREATE INDEX i_o_orderdate
  ON orders USING BRIN (o_orderdate);

CREATE INDEX i_o_custkey
  ON orders USING BRIN (o_custkey);

CREATE INDEX i_s_nationkey
  ON supplier USING BRIN (s_nationkey);

CREATE INDEX i_ps_partkey
  ON partsupp USING BRIN (ps_partkey);

CREATE INDEX i_ps_suppkey
  ON partsupp USING BRIN (ps_suppkey);

CREATE INDEX i_n_regionkey
  ON nation USING BRIN (n_regionkey);

CREATE INDEX i_l_commitdate
  ON lineitem USING BRIN (l_commitdate);
