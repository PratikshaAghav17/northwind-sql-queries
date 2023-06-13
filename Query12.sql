#12. Find the total revenue generated by each employee
SELECT Employees.Employee_ID, Employees.First_Name, Employees.Last_Name, SUM(Order_Details.Quantity * Order_Details.Unit_Price) AS TotalRevenue
FROM Employees
JOIN Orders ON Employees.Employee_ID = Orders.Employee_ID
JOIN Order_Details ON Orders.Order_ID = Order_Details.Order_ID
GROUP BY Employees.Employee_ID, Employees.First_Name, Employees.Last_Name;

#This query involves joining the Employees, Orders, and OrderDetails tables. It matches the EmployeeID column between the Employees and Orders tables, and the OrderID column between the Orders and OrderDetails tables.The SUM() function is used to calculate the total revenue generated by each employee by multiplying the Quantity column with the UnitPrice column from the OrderDetails table.
