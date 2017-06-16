package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sheela.user.User;
import com.sheela.userdao.UserDAO;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		out.println("logiin Servlet");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		out.println("Email=" + email);
		out.println("password=" + password);
		
		User user=null;

		UserDAO userdao = new UserDAO();
		try {
			user=userdao.login(email,password);
			out.println( user);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		if(user==null)
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			response.sendRedirect("listBook.jsp");
		}
	}

}
