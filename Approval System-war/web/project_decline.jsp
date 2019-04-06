<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String status="Declined";
String roll=request.getParameter("roll");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM project_idea WHERE roll_number="+roll);
String str="update project__approve set status=? where roll_number="+roll;
PreparedStatement ps1 = conn.prepareStatement(str);
   
	
	
	
 ps1.setString(1,status);
 
	ps1.executeUpdate();
response.sendRedirect("project_details.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 