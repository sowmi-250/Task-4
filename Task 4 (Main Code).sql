use data;

select region, 
Sum(sales_amount) as total_sales_amount,
count(units_sold) as total_units_sold,
avg(sales_amount) as average_sales_amount
from operations
Group By region
Having total_sales_amount >= 700