import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fullName");
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		Model model = new Model();
		model.setName(name);
		model.setUserName(userName);
		model.setEmail(email);
		model.setPassword(password);
		
		HttpSession session = request.getSession();
		
		int rowAffected = model.register();
		
		if (rowAffected == 0) {
		    response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    out.println("<h1 style='color:red;'>Registration Failed ...!</h1>");
		    out.println("<a href='" + request.getContextPath() + "/register.jsp'>Try Again</a>");
		} else {
			
			session.setAttribute("successMsg", "Registered successfully!");
		    response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
	}

}
