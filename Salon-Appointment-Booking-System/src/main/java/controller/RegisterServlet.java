package controller;

import java.io.IOException;
import dao.UserDAO;
import model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User user = new User();
        user.setName(request.getParameter("name"));
        user.setEmail(request.getParameter("email"));
        user.setPassword(request.getParameter("password"));
        user.setRole(request.getParameter("role"));

        UserDAO dao = new UserDAO();
        boolean success = dao.registerUser(user);

        response.sendRedirect(success ? "jsp/login.jsp" : "jsp/register.jsp?error=1");
    }
}
