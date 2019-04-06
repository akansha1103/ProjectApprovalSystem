
<%@ page language="java" import="java.sql.*"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String name = request.getParameter("select_box");  
    String pname =request.getParameter("pselect_box");

    
    try{
     Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from project__approve where project_name='"+pname+"'");
        
        if(rs.next()){
        String uname=rs.getString("student_name");
        
       String roll=rs.getString("roll_number");
       String tech=rs.getString("technology");
       ResultSet rs1=st.executeQuery("select * from mentor_signup where name='"+name+"'");
       if(rs1.next()){
           String mid=rs1.getString("userid");
       
       
       
        
       PreparedStatement ps = con.prepareStatement("insert into allot values(?,?,?,?,?,?)");

        ps.setString(1, uname);

        ps.setString(2, roll);

        ps.setString(3,pname);

        ps.setString(4, tech);

        ps.setString(5, name);

        ps.setString(6, mid);

        

        ps.executeUpdate();

       // out.println("Data saved successfully");
       
       response.sendRedirect("incharge_main.jsp");
        %>
        <%}
}
    } catch (Exception e) {

        out.println(e);

    } 

%>