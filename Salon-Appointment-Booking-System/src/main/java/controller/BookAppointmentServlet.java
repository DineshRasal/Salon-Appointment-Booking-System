package controller;

import java.io.IOException;
import dao.AppointmentDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;
import model.User;

@WebServlet("/bookAppointment")
public class BookAppointmentServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("jsp/login.jsp");
            return;
        }

        int therapistId = Integer.parseInt(request.getParameter("therapistId"));
        int serviceId = Integer.parseInt(request.getParameter("serviceId"));
        String date = request.getParameter("date");
        String time = request.getParameter("time");

        AppointmentDAO dao = new AppointmentDAO();
        boolean success = dao.bookAppointment(
                user.getUserId(), therapistId, serviceId, date, time
        );

        if (success) {
            response.sendRedirect("viewAppointments");
        } else {
            response.sendRedirect("jsp/booking.jsp?error=1");
        }
    }
}
