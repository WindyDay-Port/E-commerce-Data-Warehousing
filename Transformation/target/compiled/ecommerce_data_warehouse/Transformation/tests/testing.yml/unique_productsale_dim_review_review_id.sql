
    
    

with dbt_test__target as (

  select review_id as unique_field
  from `my-first-dbt-project-441102`.`MyProject`.`productsale_dim_review`
  where review_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


