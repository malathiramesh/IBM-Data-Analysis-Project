--Average Tenure & Monthly Charges by Internet Service

Select
    s.InternetService,
    avg(c.tenure) as AvgTenure,
    avg(b.MonthlyCharges) as AvgMonthlyCharges
from [Practice_db].[dbo].[customers] c
join [Practice_db].[dbo].[Service] s  
    on c.customerid = s.customerid
join [Practice_db].[dbo].[Billing] b  
    on c.customerid = b.customerid
group by s.InternetService;

 

