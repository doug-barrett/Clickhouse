@id("68952eae-033b-4f68-8467-7338fdd75b5d")
@nodeType("sqlStage")
SELECT
     `o_orderkey` AS `o_orderkey`,
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
     `l_linenumber` AS `l_linenumber`,
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
FROM {{ ref('BRONZE', 'orders') }} `orders`
INNER JOIN {{ ref('BRONZE', 'lineitem') }} `lineitem`
ON `orders`.o_orderkey = `lineitem`.l_orderkey