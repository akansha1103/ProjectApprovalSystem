<%@ page language="java" import="java.sql.*"%>

<%
String userid=request.getParameter("user");
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String pass=request.getParameter("pass");
String repass=request.getParameter("repeat-pass"); 

    try {

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");

        PreparedStatement ps = con.prepareStatement("insert into incharge_signup values(?,?,?,?,?,?)");

        ps.setString(1, userid);

        ps.setString(2, name);

        ps.setString(3, email);

        ps.setString(4, contact);
        
        ps.setString(5, pass);

        ps.setString(6, repass);

        

        ps.executeUpdate();

        out.println("Data saved successfully");
        response.sendRedirect("incharge_signin.jsp");

    } catch (Exception e) {

        out.println(e);

    } 

%>