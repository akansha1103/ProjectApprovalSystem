



<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

	   
	   String status="Approved";
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement ps = null;
%>
<%
   String roll=request.getParameter("roll");
  

try{
    

connection = DriverManager.getConnection(connectionUrl+database, userid, password1);
statement=connection.createStatement();

 /*String sql= "select * from emp_login where id=?" ;
ps = connection.prepareStatement(sql);
ps.setString(1,id);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
String un=rs.getString(2);
String pw=rs.getString(3);
}*/
String str="update project__approve set status=? where roll_number="+roll;
PreparedStatement ps1 = connection.prepareStatement(str);
   
	
	
	
 ps1.setString(1,status);
 
	ps1.executeUpdate();
//String st="insert into project_approve(student name,roll_number,project name,technology,description,source)values('"++"','"+un+"','"+pw+"','"+1+"')";
//PreparedStatement ps2 = connection.prepareStatement(st);
   
int i=statement.executeUpdate("DELETE FROM project_idea WHERE roll_number="+roll);
	
	
 //ps1.setInt(1,status);
 
	
response.sendRedirect("project_details.jsp");


connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>   