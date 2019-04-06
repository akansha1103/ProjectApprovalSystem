<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%String pname=request.getParameter("pname");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval", "root", "");
Statement st=conn.createStatement();
int i=0;
i=st.executeUpdate("DELETE FROM allot WHERE student_id="+pname);
response.sendRedirect("test4.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 