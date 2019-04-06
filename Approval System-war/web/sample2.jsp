<%@ page language="java" import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
        .button{
          
	
  background-color: #3b4e70; /* Green */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 19px;
  margin: 3px 2px;
  cursor: pointer;
  border-radius:8px;

}
        
        </style>
 </head>
<body background="myimg1.jpg">
<form>

<%
String name=request.getParameter("stu");
String roll=request.getParameter("roll");
String ans=request.getParameter("ans");
String tech=request.getParameter("tec");
String pro=request.getParameter("pro");
String query=request.getParameter("query");

try{
Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");

PreparedStatement ps = con.prepareStatement("insert into query_ans values(?,?,?,?,?,?)");

        ps.setString(1, name);

        ps.setString(2, roll);

        ps.setString(3, pro);

        ps.setString(4, tech);

        ps.setString(5, query);

        ps.setString(6, ans);

        

        ps.executeUpdate();

        out.println("Data saved successfully");
        response.sendRedirect("delete_query.jsp?roll="+roll);


con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


 

</form>

</body>
</html>
 