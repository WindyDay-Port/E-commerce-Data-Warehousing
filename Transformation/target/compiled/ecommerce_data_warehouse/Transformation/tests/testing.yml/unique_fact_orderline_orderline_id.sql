
    
    

with dbt_test__target as (

  select orderline_id as unique_field
  from `my-first-dbt-project-441102`.`MyProject`.`fact_orderline`
  where orderline_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


