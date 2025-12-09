select {{generate_greetings()}}
from {{ref('stg_hosts')}}


select {{multiple(100,200)}} as total


select {{ sqlfun('name', 'is_superhost') }} as concat
from {{ ref('stg_hosts') }}

select {{ifs('Yellow')}} as RGB

select * from {{ref('students')}}

select {{get_greetings()}}