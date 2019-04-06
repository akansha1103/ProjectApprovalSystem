<html>
    <head>
        <style>
            .myclass{text-transform:uppercase;
                    font-family:georgia;
                    color:red;
                    
                
            }
            body{
                background-color:goldenrod;
            }
            </style>
            </head>
            <body >
<%
    if ((session.getAttribute("user") == null) || (session.getAttribute("user") == "")) {
%>
You are not logged in<br/>
<h2>Please Login</h2>
<jsp:include page="admin_login.jsp" />

<%} else {
%>
<center><h1 class="myclass">Welcome </h1>
    <h1 class="myclass"><%=session.getAttribute("user")%></h1></center>
<jsp:include page="admin_.jsp" />
<%
    }
%>
</body>
</html>