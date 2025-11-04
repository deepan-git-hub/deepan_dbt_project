{% snapshot employee_snapshot3() %}

{{config(
    target_schema='snapshots',
    unique_key='employee_id',
    strategy='timestamp',
    updated_at='updated_at',
    invalidate_hard_deletes=true
)}}

select * from {{source('raw','employees')}}

{% endsnapshot %}