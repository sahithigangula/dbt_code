{{ config(materialized='ephemeral') }}
with source as(
    select * from {{source('datafeed_shared_schema','stg_supplies')}}
),
select * from source
