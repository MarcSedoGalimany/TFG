select customer_name
from {{ref('stg_customers')}}
group by customer_name