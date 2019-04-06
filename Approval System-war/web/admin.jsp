<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String un=request.getParameter("user"); 

String pw=request.getParameter("pass"); 
try{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root","");

                if((un.equals("admin"))&&(pw.equals("12345")))
                        {
                               session.setAttribute("user",un);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("admin_success.jsp");
                }
		else
                {
			
                      
                      response.sendRedirect("admin_fail.jsp");        
                }  }
catch(Exception e)
{
 out.println(e.toString());
 }
                
        %>	
