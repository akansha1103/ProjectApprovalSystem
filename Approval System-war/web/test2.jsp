<html>
<head>
<title>Request Dispatcher</title>
</head>
<%
String st=request.getParameter("select_box");
String st1=request.getParameter("roll");
if(st=="")
{

getServletContext().getRequestDispatcher("/form.jsp").forward(request, response);
}

else{
getServletContext().getRequestDispatcher("/welcome.jsp").forward(request, response);
}
%>
</html>