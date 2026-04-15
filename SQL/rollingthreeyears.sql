with rollingthreeyears as (
select * 
from dim_date as cal
where 
year(cal.date) 
    between  year(CURRENT_DATE) - 3 
    and  year(CURRENT_DATE)
    
)

select * from rollingthreeyears as rty;