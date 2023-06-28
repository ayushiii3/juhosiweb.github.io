<%-- 
    Document   : Admin
    Created on : Jun 27, 2023, 9:26:41 PM
    Author     : CIT
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Integer> qt=(ArrayList)session.getAttribute("qt");
    ArrayList<Float> wt=(ArrayList)session.getAttribute("wt");
    ArrayList<Integer> boxct=(ArrayList)session.getAttribute("boxct");
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <style>
            body {
  font: sans-serif;
}
table {
  margin-top: 100px;
  border-collapse: collapse;
  width: 100%;
}
th, td {
  padding: 0.75rem;
  text-align: left;
  border: 1px solid #eee;
}
tbody tr:nth-child(odd) {
  background: #ccc;
}
        </style>
    </head>
    <body>
        <table class="simple_zebra"> 
<thead> 
<tr> 
    <th>Item/Customer</th> 
    <th>Customer1</th> 
    <th>Customer2</th> 
    <th>Total</th> 
</tr> 
</thead> 
<tbody> 
<tr> 
    <td>Quantity</td> 
    <td><%=qt.get(0)%></td> 
    <td><%=qt.get(1)%></td> 
    <td><%=qt.get(0)+qt.get(1)%></td> 
</tr> 
<tr> 
    <td>Weight</td> 
    <td><%=wt.get(0)%></td> 
    <td><%=wt.get(1)%></td> 
    <td><%=wt.get(0)+wt.get(1)%></td> 
</tr> 
<tr> 
    <td>Box Count</td> 
    <td><%=boxct.get(0)%></td> 
    <td><%=boxct.get(1)%></td> 
    <td><%=boxct.get(0)+boxct.get(1)%></td> 
</tr> 
</tbody> 
</table> 
</body>
</html>
