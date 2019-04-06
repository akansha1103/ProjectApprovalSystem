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
try{
Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");

Statement st=con.createStatement();


 ResultSet rs1=st.executeQuery("select * from allot where student_id='"+roll+"'");
       if(rs1.next()){
           String mid=rs1.getString("mentor_id");
         PreparedStatement ps = con.prepareStatement("insert into mentor_query values(?,?,?,?,?,?)");
     ps.setString(1, stu);
        ps.setString(2,roll);
        ps.setString(3, proj);
        ps.setString(4,ptech);
        ps.setString(5,query);
        ps.setString(6, mid);
        ps.executeUpdate();
    response.sendRedirect("stud_main.jsp");
    %>
<%
 }

con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

