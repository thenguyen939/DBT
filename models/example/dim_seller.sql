{{ config(materialized='table') }}

SELECT 
    emp_key, 
    emp_id, 
    first_name, 
    last_name, 
    title
FROM 
    {{ ref('st_sale_person') }}
GROUP BY 
    emp_key, 
    emp_id, 
    first_name, 
    last_name, 
    title