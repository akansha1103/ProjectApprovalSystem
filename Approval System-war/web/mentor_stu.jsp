<%@ page language="java" import="java.sql.*"%>

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
    {   String mname=rs.getString("mentor_name");
        String mid=rs.getString("mentor_id");
        out.println(mname);
        out.println(mid);
    }
     

    } catch (Exception e) {

        out.println(e);

    } 

%>