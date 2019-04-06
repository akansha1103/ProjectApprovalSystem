import java.sql.*;  
class Mysqlcon{  
public static void main(String args[]){  
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/gla","root","root");  
//here sonoo is database name, root is username and password  
Statement stmt=con.createStatement();  
ResultSet rs=stmt.executeQuery("select * from student");  
while(rs.next())  
System.out.println(rs.getString(1)+"  "+rs.getInt(2));  
con.close();  
}catch(Exception e){ System.out.println(e);}  
}  
}  