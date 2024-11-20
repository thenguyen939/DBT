{{ config(materialized='table') }}

with raw_data as (
    select * 
    from {{ source('adventure', 'target') }}
),

temp_data as (
    select
        emp_id,
        target_month,
        emp_target
    from raw_data
)

select * 
from temp_data