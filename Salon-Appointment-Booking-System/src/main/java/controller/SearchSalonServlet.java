package controller;

import java.io.IOException;
import java.util.List;
import dao.SalonDAO;
import model.Salon;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/searchSalon")
public class SearchSalonServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String location = request.getParameter("location");

        SalonDAO dao = new SalonDAO();
        List<Salon> salons = dao.searchSalon(location);

        request.setAttribute("salons", salons);
        request.getRequestDispatcher("jsp/salonList.jsp")
               .forward(request, response);
    }
}
