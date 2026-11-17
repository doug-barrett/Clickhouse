@id("02ddaafd-322f-490a-82d4-97ce1da28165")
@nodeType("SQLDimension")
SELECT
    generateUUIDv4()                                    AS "DIM_region_KEY"      @id("1a4b41") @isSurrogateKey @notNull @defaultValue("generateUUIDv4()"),
    "r_regionkey"                                       AS "r_regionkey"         @id("62086a") @isBusinessKey,
    "r_name"                                            AS "r_name"              @id("03f7de"),
    "r_comment"                                         AS "r_comment"           @id("438ec9"),
    1                                                   AS "SYSTEM_VERSION"      @id("0f2fd8") @isSystemVersion,
    'Y'                                                 AS "SYSTEM_CURRENT_FLAG" @id("26ca05") @isSystemCurrentFlag,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_CREATE_DATE"  @id("463d13") @isSystemCreateDate,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_UPDATE_DATE"  @id("c507ac") @isSystemUpdateDate @notNull,
    CAST('2299-12-31 23:59:59.999999' AS DateTime64(6)) AS "SYSTEM_END_DATE"     @id("3b4d7c") @isSystemEndDate
FROM {{ ref('SILVER', 'STG_region') }} "STG_region"