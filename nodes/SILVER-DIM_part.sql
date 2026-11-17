@id("d34d7071-a026-483f-b357-d4deaf058cc5")
@nodeType("SQLDimension")
SELECT
    generateUUIDv4()                                    AS "DIM_part_KEY"        @id("5fb653") @isSurrogateKey @notNull @defaultValue("generateUUIDv4()"),
    "p_partkey"                                         AS "p_partkey"           @id("7a3515") @isBusinessKey,
    "p_name"                                            AS "p_name"              @id("d741ca"),
    "p_mfgr"                                            AS "p_mfgr"              @id("2e1181"),
    "p_brand"                                           AS "p_brand"             @id("4b7f00"),
    "p_type"                                            AS "p_type"              @id("7c05f2"),
    "p_size"                                            AS "p_size"              @id("989084"),
    "p_container"                                       AS "p_container"         @id("8d2e33"),
    "p_retailprice"                                     AS "p_retailprice"       @id("9ce4cf"),
    "p_comment"                                         AS "p_comment"           @id("06b57d"),
    1                                                   AS "SYSTEM_VERSION"      @id("4fb613") @isSystemVersion,
    'Y'                                                 AS "SYSTEM_CURRENT_FLAG" @id("9733f2") @isSystemCurrentFlag,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_CREATE_DATE"  @id("3a22fb") @isSystemCreateDate,
    CAST(CURRENT_TIMESTAMP AS TIMESTAMP)                AS "SYSTEM_UPDATE_DATE"  @id("2fb315") @isSystemUpdateDate @notNull,
    CAST('2299-12-31 23:59:59.999999' AS DateTime64(6)) AS "SYSTEM_END_DATE"     @id("69238a") @isSystemEndDate
FROM {{ ref('SILVER', 'STG_part') }} "STG_part"