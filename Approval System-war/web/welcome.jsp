Registration is Successful.
Please Login Here <a href='index1.jsp'>Go to Login</a>




String userid=request.getParameter("user");
String name=request.getParameter("name");
String email=request.getParameter("email");
String contact=request.getParameter("contact");
String pass=request.getParameter("pass");
String repass=request.getParameter("repeat-pass");

int i=st.executeUpdate("insert into stu_signup(userid,name,email,contact,password,confirm pass)values('"+userid+"','"+name+"','"+email+"','"+contact+"','"+pass+"','"+repass+"')");