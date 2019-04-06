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
<form action="sample2.jsp">
<h1>Students Record</h1>
<table border="1" width='100%'>
<tr>
<td>STUDENT NAME</td>
<td>ROLL NO.</td>
<td>PROJECT NAME</td>
<td>TECHNOLOGY</td>
<td>QUERY</td>
<td>ANSWER</td>

<td>RESPOND</td>
</tr>
<%String roll=request.getParameter("roll");
try{
Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");
Statement statement=con.createStatement();
String sql ="select * from incharge_query where roll_number="+roll;
ResultSet resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><input type="text" value="<%=resultSet.getString("student_name")%>" name="stu"></td>
<td><input type="text" value="<%=resultSet.getString("roll_number") %>" name="roll"></td>
<td><input type="text" value="<%=resultSet.getString("project_name") %>" name="pro"></td>
<td><input type="text" value="<%=resultSet.getString("project_technology")%>" name="tec"></td>
<td><input type="text" value="<%=resultSet.getString("query") %>" name="query"></td>
<td><input type="text" name="ans"></td>
<td>
     <center> <button class="button">Reply</button></center>
     
       
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