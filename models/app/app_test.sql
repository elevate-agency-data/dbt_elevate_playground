{{ 
    config(
        materialized='table'
        ) 
}}


select *
from {{ ref('fct_test') }}