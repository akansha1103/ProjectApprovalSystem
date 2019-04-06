<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing:border-box;
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

.left {
  text-align:center;
  background-color:#FA8258;
  padding:20px;
  float:left;
  width:100%; /* The width is 20%, by default */
}
.left1 {
     text-align:center;
  background-color:#E1F5A9;
  padding:20px;
  float:left;
  width:100%; /* The width is 20%, by default */
}
.left2{
     text-align:center;
  background-color:#ffb4da;
  padding:20px;
  float:left;
  width:100%; /* The width is 20%, by default */
}
.left3 {
     text-align:center;
  background-color:#b4ffd9;
  padding:20px;
  float:left;
  width:100%; /* The width is 20%, by default */
}

.main {
     text-align:center;
  background-color:#f1f1f1;
  padding:20px;
  float:left;
  width:100%; /* The width is 60%, by default */
}

.right {
     text-align:center;
  background-color:#4CAF50;
  padding:20px;
  float:left;
  width:100%; /* The width is 20%, by default */
}

/* Use a media query to add a break point at 800px: */
</style>
</head>
<body>
    <form action="admin_logout.jsp">
<button class="button" >Logout</button>
<div class="left1">
  <p><a href="view_stu.jsp">VIEW STUDENTS</a></p>
</div>
<div class="left2">
  <p><a href="view_mentor.jsp">VIEW MENTORS</a></p>
</div>
<div class="right">
  <p><a href="reg.jsp">ADD STUDENT</a></p>
</div>
<div class="left3">
    <p><a href="stu_delete.jsp">DELETE STUDENT</a></p>
</div>

<div class="main">
  <p><a href="mentor_delete.jsp">DELETE MENTOR</a></p>
</div>
    </form>
</body>
</html>