
--Churned Customers Above Average Monthly Charges

select
    c.customerID,
    b.MonthlyCharges,
    c.Churn
from [Practice_db].[dbo].[customers] c
join [Practice_db].[dbo].[Billing] b  
    on c.customerid = b.customerid
where c.Churn = 1
  and b.MonthlyCharges > (select avg(MonthlyCharges) from [Practice_db].[dbo].[Billing]);