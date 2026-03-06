##### Telco Customer Churn Analysis

##### Project Overview



This project analyzes customer churn behavior in a telecom company using the IBM Telco Customer Churn dataset.

The goal is to identify patterns and factors that influence customers to leave the service.



The project demonstrates skills in SQL data analysis, data modeling, and Power BI dashboard development.



* Tools Used
* SQL Server (SSMS)
* Power BI
* Excel / CSV Dataset
* GitHub
* Dataset



Dataset used: IBM Telco Customer Churn Dataset



The dataset contains information about telecom customers including:



1. Customer demographics
2. Internet services
3. Contract type
4. Billing information
5. Monthly charges
6. Churn status
7. Data Preparation



The dataset was split into multiple tables to simulate a real-world relational database:



Customers Table



* customerID
* gender
* senior citizen
* partner
* dependents
* churn



Service Table



customerID



* internet service
* contract
* online security
* streaming services



Billing Table



* customerID
* monthly charges
* total charges
* payment method



These tables were connected using customerID relationships in Power BI.



SQL Analysis



SQL queries were used to perform churn analysis such as:



Total number of customers



Total churned customers



Churn rate by contract type



Churn by internet service



Churn by payment method



Example SQL Query:



SELECT

s.Contract,

SUM(CASE WHEN c.Churn = 'Yes' THEN 1 ELSE 0 END) AS ChurnedCustomers

FROM Customers c

JOIN Service s

ON c.customerID = s.customerID

GROUP BY s.Contract;



Power BI Dashboard



A Power BI dashboard was created to visualize customer churn insights.



Key Metrics



Total Customers



Churn Customers



Average Monthly Charges



Total Revenue



Visualizations



Churn by Contract Type



Churn by Internet Service



Churn by Partner Status



Monthly Charges Distribution



Interactive Filters



Internet Service



Contract Type



Payment Method



Gender



Key Insights



Customers with Month-to-Month contracts have the highest churn rate.



Customers using Fiber Optic internet show higher churn compared to DSL users.



Certain payment methods are associated with higher churn behavior.



Project Outcome



This project demonstrates practical data analyst skills including:



Writing analytical SQL queries



Building relational data models



Creating interactive Power BI dashboards



Generating business insights from data



Author



Malathi Ramesh

Aspiring Data Analyst

