use p1
select * from [SuperMarket Analysis]

--------------- finding null values ----------
select * from [SuperMarket Analysis]
where Invoice_ID is null
or Branch is null
or City is null
or Customer_type is null 
or Gender is null
or Product_line is null
or Unit_price is null 
or Quantity is null 
or Tax_5 is null 
or sales is null
or Date is null
or Time is null 
or Payment is null
or cogs is null 
or gross_margin_percentage is null 
or gross_income is null
or Rating is null

------------------ remove null values -----------
delete from [SuperMarket Analysis]
where Invoice_ID is null
or Branch is null
or City is null
or Customer_type is null 
or Gender is null
or Product_line is null
or Unit_price is null 
or Quantity is null 
or Tax_5 is null 
or sales is null
or Date is null
or Time is null 
or Payment is null
or cogs is null 
or gross_margin_percentage is null 
or gross_income is null
or Rating is null

-------------- changing values -------------
select * from [SuperMarket Analysis]
select distinct [customer_type] from [SuperMarket Analysis]

update [SuperMarket Analysis]
set [Customer_type] = 'Non Prime'
where [Customer_type]='normal'

update [SuperMarket Analysis]
set [Customer_type] = 'Prime Member'
where [Customer_type] = 'Member'

--------------- Agreegate function ---------------
select * from [SuperMarket Analysis]
select sum(Sales) from [SuperMarket Analysis]
select max(Gender) from [SuperMarket Analysis]
select avg(Sales) from [SuperMarket Analysis]
select count(Invoice_ID) from [SuperMarket Analysis]

select distinct [SuperMarket Analysis].Product_line from [SuperMarket Analysis]

select distinct [SuperMarket Analysis].Branch,[SuperMarket Analysis].Payment from [SuperMarket Analysis]

select * from [SuperMarket Analysis]
where [SuperMarket Analysis].Sales > 200

select top 10 * from [SuperMarket Analysis]
where [SuperMarket Analysis].Sales > Unit_price

select top 10 * from [SuperMarket Analysis]
where [SuperMarket Analysis].Payment = 'Cash'

select top 10 * from [SuperMarket Analysis]
where [SuperMarket Analysis].Tax_5 > '20'

select * from [SuperMarket Analysis]
order by sales desc

select distinct top 10 sales from [SuperMarket Analysis] order by sales desc

select [SuperMarket Analysis].Product_line, sum([SuperMarket Analysis].Sales) 
from [SuperMarket Analysis]
group by [SuperMarket Analysis].Product_line






