<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Appointment</title>
    <!-- You can include CSS files here if needed -->
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-4">
    <h3>Book Appointment</h3>

    <form action="../bookAppointment" method="post" class="card p-4 shadow col-md-6">
        <input type="number" name="therapistId" class="form-control mb-3" placeholder="Therapist ID" required>
        <input type="number" name="serviceId" class="form-control mb-3" placeholder="Service ID" required>

        <input type="date" name="date" class="form-control mb-3" required>
        <input type="time" name="time" class="form-control mb-3" required>

        <button class="btn btn-primary">Confirm Booking</button>
    </form>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
