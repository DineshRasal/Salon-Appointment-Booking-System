<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
/* Dashboard Card Styling */
.dashboard-card {
    background-color: #1c1c1c; /* dark card */
    border: 1px solid #FFD700; /* gold border */
    border-radius: 10px;
    transition: transform 0.3s, box-shadow 0.3s;
}

.dashboard-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(255, 215, 0, 0.4); /* gold glow */
}
</style>
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-4">
    <h3>Customer Dashboard</h3>

    <form action="<%= request.getContextPath() %>/searchSalon" method="get" class="row g-3 mt-3">
        <div class="col-md-6">
            <input type="text" name="location" class="form-control"
                   placeholder="Search by location" required>
        </div>
        <div class="col-md-3">
            <button class="btn btn-primary">Search Salon</button>
        </div>
    </form>
</div>
<div class="container mt-5">

  <!-- Welcome Section -->
  <div class="text-center mb-4">
    <h2 class="text-white">Welcome, <span style="color:#FFD700;">Customer Name</span>!</h2>
    <p class="text-white-50">Manage your appointments and bookings efficiently.</p>
  </div>

  <!-- Dashboard Cards -->
  <div class="row g-4">
    <!-- Upcoming Appointments -->
    <div class="col-md-3">
      <div class="card dashboard-card text-center p-3">
        <div class="card-body">
          <i class="bi bi-calendar-check-fill fs-2 mb-2" style="color:#FFD700;"></i>
          <h5 class="card-title text-white">Upcoming Appointments</h5>
          <p class="card-text text-white-50">3</p>
          <a href="viewAppointments.jsp" class="btn btn-outline-warning btn-sm">View</a>
        </div>
      </div>
    </div>

    <!-- Book New Appointment -->
    <div class="col-md-3">
      <div class="card dashboard-card text-center p-3">
        <div class="card-body">
          <i class="bi bi-plus-circle-fill fs-2 mb-2" style="color:#FFD700;"></i>
          <h5 class="card-title text-white">Book Appointment</h5>
          <p class="card-text text-white-50">Schedule your next visit</p>
          <a href="booking.jsp" class="btn btn-outline-warning btn-sm">Book Now</a>
        </div>
      </div>
    </div>

    <!-- Completed Appointments -->
    <div class="col-md-3">
      <div class="card dashboard-card text-center p-3">
        <div class="card-body">
          <i class="bi bi-check-circle-fill fs-2 mb-2" style="color:#FFD700;"></i>
          <h5 class="card-title text-white">Completed Appointments</h5>
          <p class="card-text text-white-50">12</p>
          <a href="viewAppointments.jsp" class="btn btn-outline-warning btn-sm">View</a>
        </div>
      </div>
    </div>

    <!-- Profile Settings -->
    <div class="col-md-3">
      <div class="card dashboard-card text-center p-3">
        <div class="card-body">
          <i class="bi bi-person-fill fs-2 mb-2" style="color:#FFD700;"></i>
          <h5 class="card-title text-white">Profile Settings</h5>
          <p class="card-text text-white-50">Update your information</p>
          <a href="profile.jsp" class="btn btn-outline-warning btn-sm">Edit</a>
        </div>
      </div>
    </div>
  </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>
