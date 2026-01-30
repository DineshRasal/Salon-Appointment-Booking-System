package controller;

import java.io.IOException;
import dao.UserDAO;
import model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO();
        User user = dao.login(email, password);

        if (user != null) {
            request.getSession().setAttribute("user", user);

            switch (user.getRole()) {
                case "ADMIN":
                    response.sendRedirect("adminDashboard");
                    break;
                case "THERAPIST":
                    response.sendRedirect("therapistDashboard");
                    break;
                default:
                    response.sendRedirect("customerDashboard");
            }
        } else {
            response.sendRedirect("jsp/login.jsp?error=1");
        }
    }
}
