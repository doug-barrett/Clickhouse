@id("3eb154fd-4c6d-4e7d-b83b-962133d3425d")
@nodeType("sqlStage")
SELECT
     `o_orderkey` AS `o_orderkey`,
     `l_linenumber` AS `l_linenumber`,
     `DIM_part_KEY` AS `DIM_part_KEY`,
     `DIM_supplier_KEY` AS `DIM_supplier_KEY`,
     `DIM_customer_KEY` AS `DIM_customer_KEY`,
     `o_custkey` AS `o_custkey`,
     `o_orderstatus` AS `o_orderstatus`,
     `o_totalprice` AS `o_totalprice`,
     `o_orderdate` AS `o_orderdate`,
     `o_orderpriority` AS `o_orderpriority`,
     `o_clerk` AS `o_clerk`,
     `o_shippriority` AS `o_shippriority`,
     `o_comment` AS `o_comment`,
     `l_partkey` AS `l_partkey`,
     `l_suppkey` AS `l_suppkey`,
     `l_quantity` AS `l_quantity`,
     `l_extendedprice` AS `l_extendedprice`,
     `l_discount` AS `l_discount`,
     `l_tax` AS `l_tax`,
     `l_returnflag` AS `l_returnflag`,
     `l_linestatus` AS `l_linestatus`,
     `l_shipdate` AS `l_shipdate`,
     `l_commitdate` AS `l_commitdate`,
     `l_receiptdate` AS `l_receiptdate`,
     `l_shipinstruct` AS `l_shipinstruct`,
     `l_shipmode` AS `l_shipmode`,
     `l_comment` AS `l_comment`

     
FROM {{ ref('SILVER', 'STG_orders_lineitem') }} `STG_orders_lineitem`
INNER JOIN {{ ref('SILVER', 'DIM_part') }} `DIM_part`
ON `STG_orders_lineitem`.l_partkey = `DIM_part`.p_partkey
INNER JOIN {{ ref('SILVER', 'DIM_supplier') }} `DIM_supplier`
ON `STG_orders_lineitem`.l_suppkey = `DIM_supplier`.s_suppkey
INNER JOIN {{ ref('SILVER', 'DIM_customer') }} `DIM_customer`
ON `STG_orders_lineitem`.o_custkey = `DIM_customer`.c_custkey