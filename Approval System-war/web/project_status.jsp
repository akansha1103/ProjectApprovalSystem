



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

<h1>Students Record</h1>
<table border="1" width='100%'>
<tr>
<td>PROJECT NAME</td>
<td>STATUS</td>

</tr>
<%
String uid = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "approval";
String userid = "root";
String password1 = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

	   
	   
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps = null;
%>
<%
   String uname=(String)session.getAttribute("userid");
  

try{
    

connection = DriverManager.getConnection(connectionUrl+database, userid, password1);
statement=connection.createStatement();

String sql ="select project_name,status from project__approve where roll_number='"+uname+"'";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getString("project_name") %></td>
<td><%=resultSet.getString("status")%></td>
        
</tr>
<%
    i++;

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>   