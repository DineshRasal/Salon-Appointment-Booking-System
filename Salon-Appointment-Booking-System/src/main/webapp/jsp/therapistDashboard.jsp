<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Therapist Dashboard</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

    <!-- External CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/therapist.css">
</head>


<body>

<!-- ================= NAVBAR ================= -->
<%@ include file="navbar.jsp" %>

<!-- ================= MAIN CONTENT ================= -->
<div class="container mt-4">

    <h2>Therapist Dashboard</h2>
    

    <!-- ================= SUMMARY CARDS ================= -->
    <div class="row g-4 mt-3">
        <div class="col-md-3">
            <div class="card-dashboard">
                <h3>5</h3>
                <p>Today's Appointments</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card-dashboard">
                <h3>12</h3>
                <p>Upcoming Appointments</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card-dashboard">
                <h3>8</h3>
                <p>Completed Appointments</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card-dashboard">
                <h3>20</h3>
                <p>Total Clients</p>
            </div>
        </div>
    </div>

    <!-- ================= TABLE + AVAILABILITY ================= -->
    <div class="row mt-5">

        <!-- Appointments Table -->
        <div class="col-md-8">
            <div class="card shadow-sm">
                <div class="card-header fw-bold">Today's Appointments</div>
                <div class="card-body">
                    <table class="table">
                        <tr>
                            <th>Time</th><th>Client</th><th>Service</th><th>Status</th><th>Action</th>
                        </tr>
                        <tr>
                            <td>10:00 AM</td>
                            <td>Riya</td>
                            <td>Hair Spa</td>
                            <td><span class="status-confirmed">Confirmed</span></td>
                            <td><button class="btn btn-sm btn-primary">View</button></td>
                        </tr>
                        <tr>
                            <td>12:00 PM</td>
                            <td>Neha</td>
                            <td>Facial</td>
                            <td><span class="status-pending">Pending</span></td>
                            <td><button class="btn btn-sm btn-primary">View</button></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

        <!-- My Availability CARD -->
        <div class="col-md-4">
            <div class="card shadow-sm p-4">
                <h5 class="fw-bold mb-3">My Availability</h5>

                <p>
                    <i class="fa fa-clock text-warning me-2"></i>
                    <strong>10:00 AM - 7:00 PM</strong>
                </p>

                <p>
                    <i class="fa fa-calendar text-warning me-2"></i>
                    Working Days: <strong>Mon - Sat</strong>
                </p>

                <a href="updateAvailability.jsp" class="btn btn-warning w-100 fw-bold">
                    Update Availability
                </a>
            </div>
        </div>

    </div>

    <!-- ================= ACTION BUTTON BAR (IMAGE MATCH) ================= -->
    <div class="card shadow-sm mt-4 p-3">
        <h6 class="fw-bold mb-3">
            <i class="fa fa-calendar text-warning me-2"></i> My Availability
        </h6>

        <div class="d-flex flex-wrap gap-3">
            <a href="addAvailability.jsp" class="btn btn-warning">
                <i class="fa fa-plus"></i> Add Availability
            </a>

            <a href="viewAppointments.jsp" class="btn btn-primary">
                <i class="fa fa-list"></i> View All Appointments
            </a>

            <a href="profile.jsp" class="btn btn-outline-secondary">
                <i class="fa fa-user"></i> My Profile
            </a>
        </div>
    </div>

</div>

<!-- ================= FOOTER ================= -->
<%@ include file="footer.jsp" %>

</body>
</html>
