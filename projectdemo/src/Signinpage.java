import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@SuppressWarnings("serial")
public class Signinpage extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String firstname = req.getParameter("firstname");
		String lastname = req.getParameter("lastname");
		String email = req.getParameter("email");
		String passcode = req.getParameter("passcode");
		String mobile = req.getParameter("mobile");
		String country = req.getParameter("country");
		String state = req.getParameter("state");
		String address = req.getParameter("address");
		String pincode = req.getParameter("pincode");

		boolean result = Helpclass.insertNewUser(firstname, lastname, email, passcode, mobile, country, state, address, pincode);
		PrintWriter out = resp.getWriter();
		resp.setContentType("text/html");

		if (result) {
			resp.sendRedirect("Signin.jsp");
		} else {
			out.print("Registration Failed. Please try again.");
			req.getRequestDispatcher("Signup.jsp").include(req, resp);
		}
	}}
