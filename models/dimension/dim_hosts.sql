select 
    host_id,
    name,
    is_superhost,
    created_at,
    updated_at
from {{ref('stg_hosts')}}