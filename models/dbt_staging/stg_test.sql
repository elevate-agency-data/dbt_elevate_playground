{{ 
    config(
        materialized='table'
        ) 
}}


with source as (

    select 'elevate' as id,
            '100'    as val
)

select *
from source
