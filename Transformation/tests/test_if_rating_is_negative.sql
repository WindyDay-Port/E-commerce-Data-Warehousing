-- Customer rating should always be >= 0
select
    productsale_id,
    rating
from {{ ref("fact_productsale") }}
where rating < 0
