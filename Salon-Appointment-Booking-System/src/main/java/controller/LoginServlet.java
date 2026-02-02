package controller;

import java.io.IOException;
import dao.UserDAO;
import model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,
HttpServletResponse response) throws IOException, ServletException {

String email = request.getParameter("email");
String password = request.getParameter("password");

UserDAO dao = new UserDAO();
User user = dao.login(email, password);

if (user != null) {

HttpSession session = request.getSession();

session.setAttribute("user", user);
session.setAttribute("userRole", user.getRole());
session.setAttribute("userName", user.getName());
session.setAttribute("userEmail", user.getEmail());

// Default extra fields so JSP will not fail
session.setAttribute("userMobile", "Not Updated");
session.setAttribute("userMembership", "Regular");

if ("CUSTOMER".equals(user.getRole())) {
response.sendRedirect(request.getContextPath() + "/customerDashboard");
}
else if ("ADMIN".equals(user.getRole())) {
response.sendRedirect(request.getContextPath() + "/adminDashboard");
}
else if ("THERAPIST".equals(user.getRole())) {
response.sendRedirect(request.getContextPath() + "/therapistDashboard");
}

} else {
response.sendRedirect(request.getContextPath() + "/jsp/login.jsp?error=1");
}
}
}
