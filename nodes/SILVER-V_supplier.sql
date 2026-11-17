@id("1777b69c-8d24-47bf-837c-2a24a7565303")
@nodeType("sqlView")
SELECT
     `DIM_supplier_KEY` AS `DIM_supplier_KEY`,
     `s_suppkey` AS `s_suppkey`,
     `s_name` AS `s_name`,
     `s_address` AS `s_address`,
     `s_nationkey` AS `s_nationkey`,
     `s_phone` AS `s_phone`,
     `s_acctbal` AS `s_acctbal`,
     `s_comment` AS `s_comment`,
     `SYSTEM_VERSION` AS `SYSTEM_VERSION`,
     `SYSTEM_CURRENT_FLAG` AS `SYSTEM_CURRENT_FLAG`,
     `SYSTEM_CREATE_DATE` AS `SYSTEM_CREATE_DATE`,
     `SYSTEM_UPDATE_DATE` AS `SYSTEM_UPDATE_DATE`,
     `SYSTEM_END_DATE` AS `SYSTEM_END_DATE`
FROM {{ ref('SILVER', 'DIM_supplier') }} `DIM_supplier`