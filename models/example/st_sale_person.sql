{{ config(materialized='table') }}

with raw_data as (
    select * 
    from {{source('adventure', 'sale_person')}}
),

temp_data as (
    SELECT
        emp_key,
        emp_id,
        SPLIT_PART(sale_person_name, ' ', 1) AS firstname,
        SPLIT_PART(sale_person_name, ' ', 2) AS lastname,
        title,
        upn
    FROM raw_data
)
select * 
from temp_data