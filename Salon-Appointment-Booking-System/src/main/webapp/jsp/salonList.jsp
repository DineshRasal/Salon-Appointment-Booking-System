<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, model.Salon" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Salons</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-4">
    <h3>Available Salons</h3>

    <div class="row">
        <%
            List<Salon> salons = (List<Salon>) request.getAttribute("salons");
            if (salons != null && !salons.isEmpty()) {
                for (Salon s : salons) {
        %>
        <div class="col-md-4">
            <div class="card p-3 mb-3 shadow">
                <h5><%= s.getName() %></h5>
                <p><%= s.getLocation() %></p>
                <a href="booking.jsp" class="btn btn-success btn-sm">
                    Book Appointment
                </a>
            </div>
        </div>
        <% } } else { %>
        <p>No salons available.</p>
        <% } %>
    </div>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
