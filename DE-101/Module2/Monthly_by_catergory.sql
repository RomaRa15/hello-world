select date_part('year', order_date), date_part('month', order_date), category, sum(sales) as Total_sales, sum(profit) as Total_profit, round(sum(profit)/sum(sales), 4) as Profit_ratio
from orders o
group by date_part('year', order_date), date_part('month', order_date), category 
order by date_part('year', order_date) asc, date_part('month', order_date) asc;