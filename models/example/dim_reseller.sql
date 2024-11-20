{{ config(materialized='table') }}

SELECT 
    reseller_key, 
    business_type, 
    reseller
FROM 
    {{ ref('st_reseller') }} 
