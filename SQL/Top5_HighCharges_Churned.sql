--Top 5 High-Paying Churned Customers

select top 5 s.contract,
	 c.customerID
	from Practice_db.dbo.Customers c
	join Practice_db.dbo.Service s on c.customerID=s.customerID
order by s.contract desc;