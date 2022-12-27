select city, region, state
from {{ref('stg_customers')}}
group by city, region, state