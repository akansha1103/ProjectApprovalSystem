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
<h1>Students Record</h1>
<table border="1" width='100%'>
<tr>
<td>STUDENT NAME</td>
<td>ROLL NO.</td>
<td>PROJECT NAME</td>
<td>TECHNOLOGY</td>
<td>QUERY</td>
<td>RESPOND</td>

</tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");
Statement statement=con.createStatement();
String sql ="select * from incharge_query ";
ResultSet resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("student_name")%></td>
<td><%=resultSet.getString("roll_number") %></td>
<td><%=resultSet.getString("project_name") %></td>
<td><%=resultSet.getString("project_technology")%></td>
<td><%=resultSet.getString("query") %></td>
<td><a href="sample.jsp?roll=<%=resultSet.getString("roll_number")%>">
        <center> <input type="button" class="button" value="Reply"></center>
     
        </a>
        </td>

  
       
</tr>

<%

   i++;
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
 

</form>

</body>
</html>