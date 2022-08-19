package flyaway;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.URegistration.dao.Logindao;

@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		//out.println(email+" "+pass);
		
		
		Logindao logindao = new Logindao();
		
		
		
		
		if(logindao.check(name,password)){
			
//			HttpSession session = request.getSession();
//			
//			session.setAttribute("username", uname);
		//	out.println("User Logged In Successfully");
			
			response.sendRedirect("SearchFlight.jsp");
			
			
		}
		else{
			
			out.println("User Not Logged In");
			
		}
		 
		 
		
		
	}
	}

}