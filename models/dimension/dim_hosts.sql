select 
    {{ generate_surrogate_key(['host_id','name'])}},
    host_id,
    name,
    is_superhost,
    created_at,
    updated_at
from {{ref('stg_hosts')}}