
#1.Get the total number of orders placed by each customer

SELECT Customers.Customer_ID, Customers.Company_Name, COUNT(Orders.Order_ID) AS TotalOrders
FROM Customers
LEFT JOIN Orders ON Customers.Customer_ID = Orders.Customer_ID
GROUP BY Customers.Customer_ID, Customers.Company_Name;

#This query joins the Customers and Orders tables on the CustomerID column and groups the results by the CustomerID and CompanyName. The COUNT() function is used to calculate the total number of orders for each customer. 

