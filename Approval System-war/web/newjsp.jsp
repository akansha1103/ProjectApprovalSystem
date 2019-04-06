<%@ page language="java" import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
   Boolean st =true;
    String roll=request.getParameter("roll");
    out.println(roll);
try{
Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");

Statement statement=con.createStatement();
String sql = "SELECT * FROM project_idea where roll_number='"+roll+"'";
ResultSet resultSet = statement.executeQuery(sql);
//int i=0;
while(resultSet.next()){


String stu=resultSet.getString("student name");
String ro=resultSet.getString("roll_number");
String pro=resultSet.getString("project name");
String tec=resultSet.getString("technology");
String des=resultSet.getString("description");
String src=resultSet.getString("source");
System.out.println(stu);
System.out.println(ro);
System.out.println(pro);
System.out.println(tec);
System.out.println(des);
System.out.println(src);
       
//statement.executeUpdate("insert into project_approve values('"+stu+"','"+ro+"','"+pro+"','"+tec+"','"+des+"','"+src+"','"+st+"')");
   // i++;
    
    
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
