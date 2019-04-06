<%@ page language="java" import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String stu=request.getParameter("name");
    String roll=request.getParameter("roll");
    String proj=request.getParameter("pname");
    String ptech=request.getParameter("ptech");
    String query=request.getParameter("query");
    out.println(stu);
try{
Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");




        PreparedStatement ps2 = con.prepareStatement("insert into incharge_query values(?,?,?,?,?)");

  ps2.setString(1,stu);

        ps2.setString(2,roll);

        ps2.setString(3, proj);
          ps2.setString(4,ptech);
        ps2.setString(5, query);
      


 ps2.executeUpdate(); 

response.sendRedirect("stud_main.jsp");
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


