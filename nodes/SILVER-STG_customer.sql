@id("00c978ac-c0aa-4f8c-8760-f1d61fefca70")
@nodeType("sqlStage")
SELECT
     `c_custkey` AS `c_custkey`,
     `c_name` AS `c_name`,
     `c_address` AS `c_address`,
     `c_nationkey` AS `c_nationkey`,
     n_name as nation,
     r_name as region,
     `c_phone` AS `c_phone`,
     `c_acctbal` AS `c_acctbal`,
     `c_mktsegment` AS `c_mktsegment`,
     `c_comment` AS `c_comment`
FROM {{ ref('BRONZE', 'customer') }} `customer`
JOIN {{ ref('BRONZE', 'nation') }} nation on customer.c_nationkey = nation.n_nationkey
JOIN {{ ref('BRONZE', 'region') }} region on nation.n_regionkey = region.r_regionkey