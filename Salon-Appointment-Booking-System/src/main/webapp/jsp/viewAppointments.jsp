<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, model.Appointment" %>
<!DOCTYPE html>
<html>
<head>
    <title>Your Appointments</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-4">
    <h3>Your Appointments</h3>

    <table class="table table-bordered mt-3">
        <tr>
            <th>Date</th>
            <th>Time</th>
            <th>Status</th>
        </tr>

        <%
            List<Appointment> list =
                (List<Appointment>) request.getAttribute("appointments");

            if (list != null && !list.isEmpty()) {
                for (Appointment a : list) {
        %>
        <tr>
            <td><%= a.getDate() %></td>
            <td><%= a.getTime() %></td>
            <td><%= a.getStatus() %></td>
        </tr>
        <% } } else { %>
        <tr>
            <td colspan="3" class="text-center">
                No appointments found
            </td>
        </tr>
        <% } %>
    </table>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
