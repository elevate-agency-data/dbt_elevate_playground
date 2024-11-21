{{ 
    config(
        materialized='table'
        ) 
}}


with source as (

    select 'elevate' as id,
            200      as val
)

select *
from source
