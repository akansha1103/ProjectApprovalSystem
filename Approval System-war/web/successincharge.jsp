<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<h1>Please Login</h1>
<jsp:include page="incharge_signin.jsp"/>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<jsp:include page="incharge_main.jsp"/>
<%
    }
%>