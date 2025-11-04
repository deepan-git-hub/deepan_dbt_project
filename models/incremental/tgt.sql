{{
    config(
        materialized='incremental',
        unique_key= 'eid',
        merge_update_columns = ['DEIGNATION']
    )

}}
select * from airbnb.raw.src
{% if is_incremental() %}
where created_at > (select max(created_at) from tgt)
{% endif %}