<%-- 
    Document   : calculatePercentage
    Created on : 11 Mar, 2024, 6:17:31 AM
    Author     : ELCOT
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int tamil = Integer.parseInt(request.getParameter("tamil"));
    int english = Integer.parseInt(request.getParameter("english"));
    int maths = Integer.parseInt(request.getParameter("maths"));
    int science = Integer.parseInt(request.getParameter("science"));
    int socialScience = Integer.parseInt(request.getParameter("socialScience"));

    double totalMarks = tamil + english + maths + science + socialScience;
    double percentage = (totalMarks / 500) * 100;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marks Percentage Result</title>
</head>
<body>
    <h2>Marks Percentage Result</h2>
    <p><strong>Tamil:</strong><%= tamil %></p>
    <p><strong>English:</strong><%= english %></p>
    <p><strong>Maths:</strong><%= maths %></p>
    <p><strong>Science:</strong><%= science %></p>
    <p><strong>Social Science:</strong><%= socialScience %></p>
    <p><strong>Total Marks:</strong><%= totalMarks %></p>
    <p><strong>Percentage:</strong><%= percentage %> %</p>
</body>
</html>

