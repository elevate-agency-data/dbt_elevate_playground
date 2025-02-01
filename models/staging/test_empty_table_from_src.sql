{{ 
    config(
        materialized='table'
        ) 
}}


select *
from {{ source('gcp_lab_sa_datasources','this_is_a_table_test') }}