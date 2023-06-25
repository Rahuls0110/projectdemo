import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Loginpage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String passcode = req.getParameter("passcode");

        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html;charset=UTF-8");

        if (email == null || email.isEmpty() || passcode == null || passcode.isEmpty()) {
            out.print("Invalid login credentials");
            RequestDispatcher rd = req.getRequestDispatcher("Signin.jsp");
            rd.include(req, resp);
        } else {
            String firstname = Helpclass.checkUserExistence(email, passcode);

            if (firstname!=null) {
                RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
                rd.forward(req, resp);
            } else {
                out.print("Invalid login credentials");
                RequestDispatcher rd = req.getRequestDispatcher("Signin.jsp");
                rd.include(req, resp);
            }
        }
    }
}








