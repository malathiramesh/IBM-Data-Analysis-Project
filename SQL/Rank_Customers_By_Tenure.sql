
select
    c.customerID,
    s.InternetService,
    c.tenure,
    row_number() over(partition by s.InternetService order by c.tenure desc) as RankByTenure
from [Practice_db].[dbo].[customers] c
join [Practice_db].[dbo].[Service] s  
    on c.customerid = s.customerid;