# HR-DB-WORKBENCH-PROJECT
The HR Management System is a SQL-based project designed to manage employee records, departments, attendance, and payroll. It provides a structured way to store HR data and generate useful reports for decision-making. This project demonstrates database design, normalization, and SQL queries suitable for college-level coursework.

Objectives
•	Maintain employee and department records
•	Track daily attendance (Present/Absent/Leave)
•	Manage payroll with deductions and net pay
•	Generate HR reports such as average salary per department, top earners and attendance summaries

Database Schema- Tables included:
•	Departments → Department details
•	Employees → Employee records linked to departments
•	Attendance → Daily attendance logs
•	Payroll → Monthly salary, deductions, and net pay

Sample Queries
sql
-- Average salary by department
SELECT D.DepartmentName, AVG(E.Salary) AS AvgSalary
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName;

-- Employees absent on a given day
SELECT E.FirstName, E.LastName
FROM Employees E
JOIN Attendance A ON E.EmployeeID = A.EmployeeID
WHERE A.Date = '2026-05-01' AND A.Status = 'Absent';

Features
•	Normalized relational schema with foreign keys
•	Sample dataset of 10 employees across 4 departments
•	Practical HR queries for payroll, attendance, and salary analysis
•	Easily extendable with stored procedures, triggers, and views
