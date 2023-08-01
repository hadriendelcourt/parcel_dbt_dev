SELECT
  ### Key ###
  parcel_id
  ###########
  -- parcel infos
  ,parcel_tracking
  ,transporter
  ,priority
  -- date --
  ,PARSE_DATE("%B %e, %Y", date_purchase) AS date_purchase
  ,PARSE_DATE("%B %e, %Y", date_shipping) AS date_shipping
  ,PARSE_DATE("%B %e, %Y", date_delivery) AS date_delivery
  ,PARSE_DATE("%B %e, %Y", datecancelled) AS date_cancelled
FROM `raw_data_circle.raw_cc_parcel`