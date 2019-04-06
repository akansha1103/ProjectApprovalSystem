<%-- 
    Document   : display
    Created on : Apr 3, 2019, 7:04:58 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
       body{background-color:rosybrown;
           background-image:url("mentor.png");
       background-repeat:no-repeat;
       width:100%;
       background-position-x:center;}
       table{
           position:absolute;
           bottom:10%;
           width:50%;
           margin-left:330px;
           margin-right:0px;
           border:3px solid blue;
           text-align:center;
           text-transform:uppercase;
           font-family:georgia;
           color:black;
           
       }
       
       </style>
    </head>
    <body>
        <table align="center"  >
              

<%
    String ui=(String)session.getAttribute("userid");

int st=0;
    try {

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");
       
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select * from allot where student_id="+ui);
    if(rs.next())
    {  %><tr><th><%=rs.getString("mentor_name")%></th></tr>
        <tr><th>(<%=rs.getString("mentor_id")%>)</th></tr>
       
        
  <%  }
     

    } catch (Exception e) {

        out.println(e);

    } 

%>
           
            </table>
    </body>
</html>
