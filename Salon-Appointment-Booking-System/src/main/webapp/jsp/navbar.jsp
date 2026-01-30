<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

<style>
/* Premium Black + Gold + White Navbar */
.navbar-custom {
    background-color: #000; /* Black navbar */
    box-shadow: 0 4px 8px rgba(0,0,0,0.3);
    padding: 0.8rem 2rem;
    font-weight: 500;
}

.navbar-custom .navbar-brand {
    font-size: 1.6rem;
    font-weight: 700;
    color: #FFD700; /* Golden logo */
    letter-spacing: 1px;
    transition: all 0.3s ease;
}

.navbar-custom .navbar-brand:hover {
    color: #FFA500; /* Slightly brighter gold on hover */
    transform: scale(1.05);
}

.navbar-custom .nav-link {
    color: #fff; /* White links */
    margin-right: 0.5rem;
    transition: all 0.3s ease;
    position: relative;
}

.navbar-custom .nav-link::after {
    content: '';
    display: block;
    width: 0;
    height: 2px;
    background: #FFD700;
    transition: width 0.3s;
    position: absolute;
    bottom: 0;
    left: 0;
}

.navbar-custom .nav-link:hover::after {
    width: 100%; /* Underline effect in gold */
}

.navbar-custom .nav-link:hover {
    color: #FFD700; /* Text turns gold on hover */
    background-color: rgba(255, 215, 0, 0.1); /* subtle golden background */
    border-radius: 5px;
}

.navbar-custom .navbar-toggler {
    border: none;
}

.navbar-custom .navbar-toggler-icon {
    background-image: url("data:image/svg+xml;charset=utf8,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba%28255, 215, 0, 0.85%29' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
}
</style>

<nav class="navbar navbar-expand-lg navbar-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">SalonBooking</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="customerDashboard.jsp"><i class="bi bi-house"></i> Dashboard</a></li>
        <li class="nav-item"><a class="nav-link" href="booking.jsp"><i class="bi bi-calendar-plus"></i> Book Appointment</a></li>
        <li class="nav-item"><a class="nav-link" href="viewAppointments.jsp"><i class="bi bi-clock-history"></i> My Appointments</a></li>
        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout"><i class="bi bi-box-arrow-right"></i> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
