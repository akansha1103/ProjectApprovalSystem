
<%-- 
    Document   : process.jsp
    Created on : Mar 11, 2019, 10:52:44 PM
    Author     : Ayesha Ansari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
 <%@ page language="java" import="java.sql.*"%>
 <%@page import = "java.util.Enumeration"%>
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           String root=getServletContext().getRealPath("data") ;
           MultipartRequest mr=new MultipartRequest(request,root);
           Enumeration files=mr.getFileNames();
           String name=(String)files.nextElement(); 
           String fileName=mr.getFilesystemName(name);
          
          // out.print("root"+root);
           
           
String roll=(String)session.getAttribute("userid");



 
       
       
out.println(roll);
    try {

        Class.forName("com.mysql.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");
        Statement st=con.createStatement();
        ResultSet rs1=st.executeQuery("select * from allot where roll_number="+roll);
       if(rs1.next()){
           String sname=rs1.getString("student_name");
           
String pname=rs1.getString("project_name");
String mid=rs1.getString("mentor_id");
         

        PreparedStatement ps = con.prepareStatement("insert into documents values(?,?,?,?,?)");

        ps.setString(1, roll);

        ps.setString(2, fileName);
        ps.setString(3, sname);
        
        ps.setString(4, pname);
        ps.setString(5, mid);

        
       
        ps.executeUpdate();
        response.sendRedirect("stud_main.jsp");
       }

    } catch (Exception e) {

        out.println(e);

    } 
            

            %>
            
            



    </body>
</html>
