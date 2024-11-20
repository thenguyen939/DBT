{{ config(materialized='table') }}

with raw_data as (
    select * 
    from {{ source('adventure', 'product') }}
),

temp_data as (
    select
        product_key,
        product,
        color,
        subcategory,
        category,
        background_color,
        font_color_format
    from raw_data
    where product is not null 
)
select * 
from temp_data
