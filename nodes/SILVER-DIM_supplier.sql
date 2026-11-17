@id("b4fe3e05-2998-4674-b522-2ef393b0ad7b")
@nodeType("SQLDimension")
SELECT
    generateUUIDv4()                                    AS "DIM_supplier_KEY"    @id("ca0d7e") @isSurrogateKey @notNull @defaultValue("generateUUIDv4()"),
    "s_suppkey"                                         AS "s_suppkey"           @id("3a5daa") @isBusinessKey,
    "s_name"                                            AS "s_name"              @id("d2d477"),
    "s_address"                                         AS "s_address"           @id("fabe63"),
    "s_nationkey"                                       AS "s_nationkey"         @id("903e71"),
    "s_phone"                                           AS "s_phone"             @id("a21013"),
    "s_acctbal"                                         AS "s_acctbal"           @id("6b2779"),
    "s_comment"                                         AS "s_comment"           @id("2fe2b9"),
    1                                                   AS "SYSTEM_VERSION"      @id("9403bd") @isSystemVersion,
    'Y'                                                 AS "SYSTEM_CURRENT_FLAG" @id("3911f0") @isSystemCurrentFlag,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_CREATE_DATE"  @id("1cc08d") @isSystemCreateDate,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_UPDATE_DATE"  @id("918cf0") @isSystemUpdateDate @notNull,
    CAST('2299-12-31 23:59:59.999999' AS DateTime64(6)) AS "SYSTEM_END_DATE"     @id("3dfcd0") @isSystemEndDate
FROM {{ ref('SILVER', 'STG_supplier') }} "STG_supplier"