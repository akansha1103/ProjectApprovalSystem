
 
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class guru_download
 */
 class guru_download extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                response.setContentType("text/html");

              PrintWriter out = response.getWriter();        

                                  

              try{

                     Class.forName("com.mysql.jdbc.driver");

                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/approval",
            "root", "");               
            
Statement st=con.createStatement();
                     PreparedStatement ps=con.prepareStatement("select * from documents");

                    

                     ResultSet rs=ps.executeQuery();                

                     

                     while(rs.next())

                        {

                    String fname=rs.getString("file_name");
                     String fpath=rs.getString("file_path");  

                     

                    response.setContentType("APPLICATION/OCTET-STREAM");
		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ fname + "\"");
 
		FileInputStream fileInputStream = new FileInputStream(fpath
				+ fname);
 
		int i;
		while ((i = fileInputStream.read()) != -1) {
			out.write(i);
		}
		fileInputStream.close();
		out.close();
	}
 
 

 

              }catch (Exception e2)

                {

                    e2.printStackTrace();

                }

 

              finally{out.close();

                }

       }

 

} 
		
		