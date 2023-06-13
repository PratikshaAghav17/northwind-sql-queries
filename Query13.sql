#13. List all orders shipped to ‘Germany’

SELECT Orders.Order_ID, Orders.Order_Date, Orders.Shipped_Date, Customers.Company_Name, Customers.Contact_Name, Customers.Country
FROM Orders
JOIN Customers ON Orders.Customer_ID = Customers.Customer_ID
WHERE Customers.Country = 'Germany';

#This query involves joining the Orders and Customers tables. It matches the CustomerID column between the two tables.The WHERE clause is used to filter the result and retrieve only the rows where the country in Customers is 'Germany'.
