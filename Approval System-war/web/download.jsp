
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page language="java" import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <style>
        .button{
          
	
  background-color: #3b4e70; /* Green */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 19px;
  margin: 3px 2px;
  cursor: pointer;
  border-radius:8px;

}
        
        </style>
 </head>
<body background="myimg1.jpg">

<h1>Student Documents</h1>
<table border="1" width='100%'>
<tr>
<td>ROLL NUMBER</td>

<td>STUDENT NAME</td>
<td>PROJECT NAME</td>
<td>VIEW DOCUMENTS</td>

</tr>

<%    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");
    Statement st = con.createStatement();
     PreparedStatement ps=con.prepareStatement("select * from documents");

            ResultSet resultSet=ps.executeQuery();                
                while(resultSet.next())
                {
                    
                  //  String filename=resultSet.getString("file_name");
                    //response.sendRedirect("mydownload.jsp?filename="+filename);
                     //String filepath="data:\\";   
                     //out.print(filename);
                     
                    // out.print(filepath);
//response.setContentType("APPLICATION/OCTET-STREAM");   
  //response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");   
  //response.setHeader("Content-Disposition","attachment; filepath=\"" + filepath + "\"");   
  
 // java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);  
  // int i;   
  //while ((i=fileInputStream.read()) != -1) {  
   // out.write(i);   
  //}   
                        
  //fileInputStream.close();  
  %>
  <tr>
      
<td><%=resultSet.getString("userid") %></td>
<td><%=resultSet.getString("student_name") %></td>
<td><%=resultSet.getString("project_name") %></td>
<td>
    
  <center>  <a href="data/<%=resultSet.getString("file_name") %>">View</a></td> </center>


    
    
  


</tr>
<%
                        }
%>
</table>
</body>
</html>

                        

                        
  


