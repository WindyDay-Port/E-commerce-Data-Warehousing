-- Customer rating should always be >= 0
select
    productsale_id,
    rating
from `my-first-dbt-project-441102`.`MyProject`.`fact_productsale`
where rating < 0