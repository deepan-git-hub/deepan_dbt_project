select 
name as hname,
avg(price) as avg_price
 from {{ref('dim_listings')}}
 group by hname
 order by avg_price desc