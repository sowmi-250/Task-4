USE DATA;

create table operations (
Order_id numeric,
Customer_id numeric,
Region varchar(10),
Sales_amount numeric,
Units_sold numeric,
Order_date date
);

insert into operations values(1,101,'Erode',2000,10,'2025-06-17');
insert into operations values(2,102,'Chennai',400,3,'2025-06-09');
insert into operations values(3,103,'Nagercoil',600,1,'2025-06-25');
insert into operations values(4,104,'Chennai',900,5,'2025-06-08');
insert into operations values(5,105,'Nagercoil',8000,8,'2025-06-07');
insert into operations values(6,106,'Erode',900,5,'2025-06-12');
insert into operations values(7,107,'Trichy',890,9,'2025-06-14');
insert into operations values(8,108,'Chennai',789,5,'2025-06-13');

use data;

select region, 
Sum(sales_amount) as total_sales_amount,
count(units_sold) as total_units_sold,
avg(sales_amount) as average_sales_amount
from operations
Group By region
Having total_sales_amount >= 700