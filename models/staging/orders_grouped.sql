{{
    config(
        materialized='table'
    )
}}

with source as (

    select * from {{ ref('staging_orders') }}

),

renamed as (

    select
        o_orderkey,
        o_custkey,
        sum(o_totalprice) as total_price

    from source
    group by 1,2

)

select * from renamed
