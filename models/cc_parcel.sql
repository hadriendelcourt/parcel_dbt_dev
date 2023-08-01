WITH stg_cc_parcel AS (
    SELECT 
        *
    FROM {{ref("stg_cc_parcel")}}
)
,
stg_cc_parcel_product AS (
    SELECT
        *
    FROM {{ref("stg_cc_parcel_products")}}
)

SELECT *
FROM stg_cc_parcel
LEFT JOIN stg_cc_parcel_product USING (parcel_id)
