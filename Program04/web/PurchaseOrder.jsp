<%-- 
    Document   : tem
    Created on : 11 Mar, 2024, 6:25:23 AM
    Author     : ELCOT
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<%
    String productName = request.getParameter("productName"); 
    int quantity = Integer.parseInt(request.getParameter("quantity")); 
    double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
    double totalCost = quantity * unitPrice; 
%> 

<html>
<head>
    <title>Purchase Order Details</title>
</head>
<body>
    <h2>Purchase Order Details</h2>
    <p><strong>Product Name:</strong> <%= productName %></p>
    <p><strong>Quantity:</strong> <%= quantity %></p>
    <p><strong>Unit Price:</strong> <%= String.format("%.2f", unitPrice) %></p> 
    <p><strong>Total Cost:</strong> <%= String.format("%.2f", totalCost) %></p> 
</body>
</html>
