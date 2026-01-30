package controller;

import java.io.IOException;
import dao.AppointmentDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import model.User;

@WebServlet("/approveAppointment")
public class ApproveAppointmentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null || !"ADMIN".equals(user.getRole())) {
            response.sendRedirect("jsp/login.jsp");
            return;
        }

        int appointmentId = Integer.parseInt(request.getParameter("id"));
        String status = request.getParameter("status");

        AppointmentDAO dao = new AppointmentDAO();
        dao.updateStatus(appointmentId, status);

        response.sendRedirect("adminDashboard");
    }
}
