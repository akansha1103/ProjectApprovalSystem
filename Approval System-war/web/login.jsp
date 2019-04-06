<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("user");    
    String pwd = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
   
    rs = st.executeQuery("select * from stu_signup where userid='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
        //out.println("Invalid password <a href='index1.jsp'>try again</a>");
        response.sendRedirect("student_fail.jsp");
    }
%>