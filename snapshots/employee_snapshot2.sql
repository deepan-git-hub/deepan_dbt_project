{% snapshot employee_snapshot2() %}

    {{config(
        target_schema='snapshots',
        unique_key='employee_id',
        strategy='timestamp',
        updated_at='updated_at'
    )}}

    select * from {{source('raw','employees')}}

{% endsnapshot %}