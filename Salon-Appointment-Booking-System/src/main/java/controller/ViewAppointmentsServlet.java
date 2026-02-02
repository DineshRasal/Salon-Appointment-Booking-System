package controller;
import java.io.IOException;

import dao.AppointmentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet("/viewAppointments")
public class ViewAppointmentsServlet extends HttpServlet {

protected void doGet(HttpServletRequest req,
HttpServletResponse res)
throws ServletException, IOException {

User user =
(User) req.getSession().getAttribute("user");

if (user == null) {
res.sendRedirect("jsp/login.jsp");
return;
}

AppointmentDAO dao = new AppointmentDAO();

req.setAttribute("appointments",
dao.getAppointmentsByUser(
user.getUserId()));

req.getRequestDispatcher(
"jsp/viewAppointments.jsp")
.forward(req, res);
}
}
