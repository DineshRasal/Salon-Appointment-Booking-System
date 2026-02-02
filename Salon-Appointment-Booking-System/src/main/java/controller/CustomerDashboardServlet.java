package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/customerDashboard")
public class CustomerDashboardServlet extends HttpServlet {

protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

HttpSession session = request.getSession(false);

if (session == null ||
session.getAttribute("userRole") == null ||
!"CUSTOMER".equals(session.getAttribute("userRole"))) {

response.sendRedirect(
request.getContextPath() + "/jsp/login.jsp");

return;
}

request.getRequestDispatcher("/jsp/customerDashboard.jsp")
.forward(request, response);
}
}
