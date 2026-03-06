
--Count of Churned and Not Churned Customers
select
    Sum(Case when Churn = 1 then 1 else 0 end) AS Churned,
    Sum(Case when Churn = 0 then 1 else 0 end) AS NotChurned
from [Practice_db].[dbo].[customers];