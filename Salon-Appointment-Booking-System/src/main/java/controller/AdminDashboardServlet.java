package controller;
import java.io.IOException;

import dao.AppointmentDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adminDashboard")
public class AdminDashboardServlet extends HttpServlet {

protected void doGet(HttpServletRequest request,
HttpServletResponse response)
throws ServletException, IOException {

AppointmentDAO dao = new AppointmentDAO();

request.setAttribute(
"appointments",
dao.getAllAppointments()
);

request.getRequestDispatcher(
"jsp/adminDashboard.jsp"
).forward(request, response);
}
}
