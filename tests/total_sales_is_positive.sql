with source as (

select * from {{ ref('stg_customers')}}
),


sales_is_positive as (

select
    orderid,
    sum(sales) as total_sales
from source
group by 1
having not(total_sales >= 0)

)

select * from sales_is_positive