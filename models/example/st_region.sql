{{ config(materialized='table') }}

with raw_data as (
    select * 
    from {{ source('adventure', 'region') }}
),

temp_data as (
    select
        *
    from raw_data
)
select * 
from temp_data