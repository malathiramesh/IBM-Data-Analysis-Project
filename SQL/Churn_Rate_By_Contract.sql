--Churn Count by Contract (Join Customers + Services)

Select
    s.Contract,
    sum(case when c.Churn = 1 then 1 else 0 end) AS Churned
from [Practice_db].[dbo].[customers] c
join [Practice_db].[dbo].[Service] s  
    on c.customerid = s.customerid
group by s.Contract;

