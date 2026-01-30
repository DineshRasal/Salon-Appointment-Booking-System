package controller;

import java.io.IOException;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import model.User;

@WebServlet("/customerDashboard")
public class CustomerDashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null || !"CUSTOMER".equals(user.getRole())) {
            response.sendRedirect("jsp/login.jsp");
            return;
        }

        request.getRequestDispatcher("jsp/customerDashboard.jsp")
               .forward(request, response);
    }
}
