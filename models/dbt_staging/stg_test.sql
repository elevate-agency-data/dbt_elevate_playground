{{ 
    config(
        materialized='table'
        ) 
}}


with source as (

    select 'elevate' as id,
            '100'    as val
            'test'   as test_vincent
)

select *
from source
