{{ config(materialized='table') }}

SELECT 
    product_key, 
    product, 
    tandard_cost, 
    subcategory, 
    category
FROM 
    {{ ref('st_product') }}
 