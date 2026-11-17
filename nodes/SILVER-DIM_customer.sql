@id("fd712285-1847-4b27-b27d-4728a5877fde")
@nodeType("SQLDimension")
SELECT
    generateUUIDv4()                                    AS "DIM_customer_KEY"    @id("5a7814") @isSurrogateKey @notNull @defaultValue("generateUUIDv4()"),
    "c_custkey"                                         AS "c_custkey"           @id("96c0f1") @isBusinessKey,
    "c_name"                                            AS "c_name"              @id("ce584e"),
    "c_address"                                         AS "c_address"           @id("7d544a"),
    "c_nationkey"                                       AS "c_nationkey"         @id("da123b"),
    "nation"                                            AS "nation"              @id("b6f0e7"),
    "region"                                            AS "region"              @id("46339d"),
    "c_phone"                                           AS "c_phone"             @id("39dc0f"),
    "c_acctbal"                                         AS "c_acctbal"           @id("c5a4dd"),
    "c_mktsegment"                                      AS "c_mktsegment"        @id("3fe381"),
    "c_comment"                                         AS "c_comment"           @id("a66409"),
    1                                                   AS "SYSTEM_VERSION"      @id("b8c4cc") @isSystemVersion,
    'Y'                                                 AS "SYSTEM_CURRENT_FLAG" @id("2f9e0b") @isSystemCurrentFlag,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_CREATE_DATE"  @id("ec6341") @isSystemCreateDate,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_UPDATE_DATE"  @id("d266b4") @isSystemUpdateDate @notNull,
    CAST('2299-12-31 23:59:59.999999' AS DateTime64(6)) AS "SYSTEM_END_DATE"     @id("0a399f") @isSystemEndDate
FROM {{ ref('SILVER', 'STG_customer') }} "STG_customer"