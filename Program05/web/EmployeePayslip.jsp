<%-- 
    Document   : EmployeePayslip
    Created on : 11 Mar, 2024, 6:49:13 AM
    Author     : ELCOT
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
int employeeId = Integer.parseInt(request.getParameter("Employeeid"));
String employeeName = request.getParameter("EmployeeName"); 
int oldSalary = Integer.parseInt(request.getParameter("OldSalary")); 
int increment = Integer.parseInt(request.getParameter("Increment"));
int deduction = Integer.parseInt(request.getParameter("Deduction"));
String department = request.getParameter("Department");

// Calculate new salary, net salary, and total annual salary
int newSalary = oldSalary + increment;
int netSalary = newSalary - deduction;
int totalAnnualSalary = newSalary * 12; // Assuming monthly salary
%>

<html>
<head>
<title>Employee Payslip Details</title>
</head>
<body>
<h2>Employee Payslip Details</h2>
<p><strong>Employee ID:</strong><%= employeeId %></p>
<p><strong>Employee Name:</strong><%= employeeName %></p>
<p><strong>Old Salary:</strong><%= oldSalary %></p>
<p><strong>Increment:</strong><%= increment %></p>
<p><strong>New Salary:</strong><%= newSalary %></p>
<p><strong>Deduction:</strong><%= deduction %></p>
<p><strong>Net Salary:</strong><%= netSalary %></p>
<p><strong>Total Annual Salary:</strong><%= totalAnnualSalary %></p>
<p><strong>Department:</strong><%= department %></p>
</body>
</html>
