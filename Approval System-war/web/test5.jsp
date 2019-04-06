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
    <form action="test3.jsp">

<h1>Students Record</h1>
<table border="1" width='100%'>
<tr>

<td>Project</td>
<td>Mentor</td>
  <td>Allot</td>


</tr>
<%
try{
Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");

Statement statement=con.createStatement();

%>
<tr>
     
  
<td>

    

<select name="pselect_box"  >
<%

String sql2 = "SELECT * FROM project__approve where status='Approved'";
 PreparedStatement ps2 = con.prepareStatement(sql2);
ResultSet rs2 = ps2.executeQuery(); 

while(rs2.next())
{
String un = rs2.getString("project_name"); 
%>
<option value="<%=un %>"><%=un%></option>
<%
}
%>
</select>

</td>
<td>
<select name="select_box"  >
<%
String sql3 = "SELECT name FROM mentor_signup ";
 PreparedStatement ps3 = con.prepareStatement(sql3);
ResultSet rs3 = ps3.executeQuery(); 

while(rs3.next())
{
    
String un1 = rs3.getString("name"); 
%>
<option value="<%=un1 %>"><%=un1%></option>
<%
}
%>
</select>

</td>

<td>
        
        <button class="button">Allot</button>
     
       
        </td>


       </tr> 

    
  



<%
 
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</form>

</body>
</html>
