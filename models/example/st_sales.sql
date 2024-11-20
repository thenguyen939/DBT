{{ config(materialized='table') }}
with raw_data as (
    select * 
    from {{ source('adventure', 'sales') }}
),
temp_data as (
      SELECT 
        sale_order_number,
        order_date,
        product_key,
        reseller_key,
        emp_key,
        sale_territory_key,
        quantity,
        unit_price,
        sales,
        cost
    from raw_data
)
select * 
from temp_data