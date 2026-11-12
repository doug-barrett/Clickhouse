@id("dec19724-b451-4ad1-9323-4463f53c5560")
@nodeType("sqlStage")
SELECT
     `s_suppkey` AS `s_suppkey`,
     `s_name` AS `s_name`,
     `s_address` AS `s_address`,
     `s_nationkey` AS `s_nationkey`,
     `s_phone` AS `s_phone`,
     `s_acctbal` AS `s_acctbal`,
     `s_comment` AS `s_comment`
FROM {{ ref('BRONZE', 'supplier') }} `supplier`