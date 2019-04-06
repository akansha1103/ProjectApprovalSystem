 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
       pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload</title>
</head>
<body>
<form method="post" action="process.jsp" enctype="multipart/form-data">
<h3>Select file to upload:</h3>
<input type="file" name="file_name"/><br/><br/>
<input type="submit" value="Upload" />
</form>
   
 

</body>
</html>