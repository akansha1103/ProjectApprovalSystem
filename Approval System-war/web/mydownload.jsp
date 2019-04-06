<%-- 
    Document   : mydownload
    Created on : Apr 1, 2019, 7:00:58 AM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        
        <a href="data/<%=request.getParameter("filename")%>">download</a>
    </body>
</html>
