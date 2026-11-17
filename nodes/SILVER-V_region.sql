@id("098b0c42-5159-484d-a76a-f68c455b44ea")
@nodeType("sqlView")
SELECT
     `DIM_region_KEY` AS `DIM_region_KEY`,
     `r_regionkey` AS `r_regionkey`,
     `r_name` AS `r_name`,
     `r_comment` AS `r_comment`,
     `SYSTEM_VERSION` AS `SYSTEM_VERSION`,
     `SYSTEM_CURRENT_FLAG` AS `SYSTEM_CURRENT_FLAG`,
     `SYSTEM_CREATE_DATE` AS `SYSTEM_CREATE_DATE`,
     `SYSTEM_UPDATE_DATE` AS `SYSTEM_UPDATE_DATE`,
     `SYSTEM_END_DATE` AS `SYSTEM_END_DATE`
FROM {{ ref('SILVER', 'DIM_region') }} `DIM_region`