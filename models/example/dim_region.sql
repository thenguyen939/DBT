{{ config(materialized='table') }}

SELECT 
    *
FROM 
    {{ ref('st_region') }}
