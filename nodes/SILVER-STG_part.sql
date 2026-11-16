@id("171779b5-22c8-431b-b274-ddaef1e84a22")
@nodeType("sqlStage")
SELECT
     `p_partkey` AS `p_partkey`,
     `p_name` AS `p_name`,
     `p_mfgr` AS `p_mfgr`,
     `p_brand` AS `p_brand`,
     `p_type` AS `p_type`,
     `p_size` AS `p_size`,
     `p_container` AS `p_container`,
     `p_retailprice` AS `p_retailprice`,
     `p_comment` AS `p_comment`
FROM {{ ref('BRONZE', 'part') }} `part`