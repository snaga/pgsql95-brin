\copy (select * from lineitem order by l_shipdate) to 'lineitem_ordered.data'
truncate lineitem;
\copy lineitem from 'lineitem_ordered.data'
reindex table lineitem;

