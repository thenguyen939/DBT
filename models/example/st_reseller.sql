{{ config(materialized='table') }}

with raw_data as (
    select * 
    from {{ source('adventure', 'reseller') }}
),
temp_data as (
    select
        *
    from raw_data
)
select * 
from temp_data