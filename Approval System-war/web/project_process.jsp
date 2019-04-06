<%@ page language="java" import="java.sql.*"%>

<%
String name=request.getParameter("name");
String roll=request.getParameter("roll");
String pname=request.getParameter("pname");
String tech=request.getParameter("tech");
String desc=request.getParameter("desc");
String src=request.getParameter("src"); 
String st="Pending";
    try {

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");

        PreparedStatement ps = con.prepareStatement("insert into project_idea values(?,?,?,?,?,?,?)");

        ps.setString(1, name);

        ps.setString(2, roll);

        ps.setString(3, pname);

        ps.setString(4, tech);

        ps.setString(5, desc);

        ps.setString(6, src);

        ps.setString(7,st);

        ps.executeUpdate();
         PreparedStatement ps1 = con.prepareStatement("insert into project__approve values(?,?,?,?,?,?,?)");

        ps1.setString(1, name);

        ps1.setString(2, roll);

        ps1.setString(3, pname);

        ps1.setString(4, tech);

        ps1.setString(5, desc);

        ps1.setString(6, src);
        ps1.setString(7,st);

        

        ps1.executeUpdate();

        out.println("Data saved successfully");
        response.sendRedirect("stud_main.jsp");

    } catch (Exception e) {

        out.println(e);

    } 

%>