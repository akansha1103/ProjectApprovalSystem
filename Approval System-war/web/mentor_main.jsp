
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif
                    
}
body {font-size:16px;
}
body {
  background: "images.jpg" no-repeat;
  background-size: 100%;
}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .myclass{
                text-transform:uppercase;
            }
            .button{
  float:right;        
	
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
    <body>
        <form action="logout.jsp">
        <button class="button" >Logout</button>
        </form>
        <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>

  <div class="w3-container">
   
  </div>
  <div class="w3-bar-block">
    <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
    <a href="project_details.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Projects</a>
    <a href="assigned_projects.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Projects Alloted</a> 
  <a href="mentor_download.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Project Documents</a> 
    <a href="mentor_query.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Query</a> 
    
    
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  
  
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:340px;margin-right:40px">

  <!-- Header -->
  <div class="w3-container" style="margin-top:80px" id="showcase">
      <center> <h3 class="w3-jumbo"><b>WELCOME</b></h3>
    <h1 class="w3-xxlarge w3-text-red myclass"><b><%String mid=(String)session.getAttribute("userid");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval","root", "");
Statement statement=con.createStatement();
String sql ="select * from mentor_signup where userid="+mid;
ResultSet resultSet = statement.executeQuery(sql);
int i=0;
if(resultSet.next()){
    String mentor=resultSet.getString("name");
    out.println(mentor);
    
}
 
con.close();
} catch (Exception e) {
e.printStackTrace();
}
    %></b></h1></center>
    <hr style="width:50px;border:5px solid red" class="w3-round">
  </div>
  
  <!-- Photo grid (modal) -->
  <div class="w3-row-padding">
    <div class="w3-half">
      <img src="myimg1.jpg" style="width:100%" onclick="onClick(this)" alt="Concrete meets bricks">
      <img src="myimg2.jpg" style="width:100%" onclick="onClick(this)" alt="Light, white and tight scandinavian design">
      <img src="myimg3.jpg" style="width:100%" onclick="onClick(this)" alt="White walls with designer chairs">
    </div>

    <div class="w3-half">
      <img src="myimg4.jpg" style="width:100%" onclick="onClick(this)" alt="Windows for the atrium">
      <img src="myimg5.jpg" style="width:100%" onclick="onClick(this)" alt="Bedroom and office in one space">
      <img src="myimg6.jpg" style="width:100%" onclick="onClick(this)" alt="Scandinavian design">
    </div>
  </div>

  

  


<!-- W3.CSS Container -->

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}
</script>

   </body>
</html>
