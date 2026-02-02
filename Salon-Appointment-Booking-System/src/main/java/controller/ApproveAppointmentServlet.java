package controller;

import java.io.IOException;
import dao.AppointmentDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import model.User;

@WebServlet("/approveAppointment")
public class ApproveAppointmentServlet extends HttpServlet {

protected void doPost(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

HttpSession session = request.getSession(false);

if (session == null) {
response.sendRedirect("jsp/login.jsp");
return;
}

User user = (User) session.getAttribute("user");

if (user == null ||
user.getRole() == null ||
!"ADMIN".equals(user.getRole())) {

response.sendRedirect("jsp/login.jsp");
return;
}

// ---- SAFE PARAM READ ----

String idParam = request.getParameter("id");
String status = request.getParameter("status");

if (idParam == null || status == null) {
response.sendRedirect("adminDashboard?error=invalid");
return;
}

int appointmentId = Integer.parseInt(idParam);

// ---- UPDATE ----

AppointmentDAO dao = new AppointmentDAO();

boolean updated =
dao.updateStatus(appointmentId, status);

response.sendRedirect("adminDashboard?updated=" + updated);
}
}
