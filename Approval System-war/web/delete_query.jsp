<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String roll=request.getParameter("roll");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM incharge_query WHERE roll_number="+roll);
response.sendRedirect("incharge_query.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 