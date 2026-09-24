import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usernameOrEmail = request.getParameter("username");
		String password = request.getParameter("password");
		
		ModelLogin model = new ModelLogin();
		
		model.setUserName(usernameOrEmail);
		model.setPassword(password);
		
		int status = model.login();
		
		if(status==1) {
			HttpSession session = request.getSession();
			session.setAttribute("currentUser", usernameOrEmail);
			response.sendRedirect("homepage.jsp");
			
			
		} else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('Invalid Username, Email or Password! Please try again.');");
			out.println("window.location.href='login.jsp';"); 
			out.println("</script>");
			
		}
	}

}
