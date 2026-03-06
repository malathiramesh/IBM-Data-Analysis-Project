-- Premium Customers (Phone + Internet + High Charges
SELECT
    c.customerID,
    b.MonthlyCharges,
    s.PhoneService,
    s.InternetService
from [Practice_db].[dbo].[customers] c
join [Practice_db].[dbo].[Service] s  
    on c.customerid = s.customerid
join [Practice_db].[dbo].[Billing] b  
    on c.customerid = b.customerid
where s.PhoneService = 'Yes'
  and s.InternetService <> 'No'
  and b.MonthlyCharges > 90;   