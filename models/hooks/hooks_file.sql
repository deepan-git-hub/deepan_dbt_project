{{ config(materialized='table',
        pre_hook="insert into airbnb.raw.logs(message,time) values ('starting model',CURRENT_timestamp)",
        post_hook="insert into airbnb.raw.logs(message,time) values ('finishing model',current_timestamp)"
        )}}

select 
id,name,email,created_at from {{source('raw','users')}}