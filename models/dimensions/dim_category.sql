select SUB_CATEGORY, CATEGORY
FROM {{ref('stg_customers')}}
group by SUB_CATEGORY, CATEGORY