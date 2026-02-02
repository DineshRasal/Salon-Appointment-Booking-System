<%@ page contentType="text/html;charset=UTF-8" %>

<%
HttpSession s = request.getSession(false);

if (s == null || s.getAttribute("userRole") == null) {
    response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
    return;
}

String userName = (String) s.getAttribute("userName");
String userEmail = (String) s.getAttribute("userEmail");
String userMobile = (String) s.getAttribute("userMobile");
String userMembership = (String) s.getAttribute("userMembership");
%>


<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <style>
        body { font-family: "Segoe UI", Arial; background: #f4f6f9; margin:0; padding:0; }
        .navbar { background: #000; color: gold; padding: 16px 30px; display:flex; justify-content:space-between; align-items:center; }
        .navbar h2 { margin:0; color: gold; }
        .navbar a { color:white; margin-left:20px; text-decoration:none; font-weight:500; }
        .navbar a:hover { color: gold; }
        .container { padding:30px; }
        .stats { display:grid; grid-template-columns: repeat(auto-fit, minmax(220px,1fr)); gap:20px; margin-bottom:30px; }
        .stat-card { background:white; padding:20px; border-radius:10px; box-shadow:0 4px 12px rgba(0,0,0,0.08); }
        .stat-card h3 { margin:0; color:#555; font-size:15px; }
        .stat-card p { font-size:28px; margin:10px 0 0; font-weight:bold; color:#000; }
        .card { background:white; padding:25px; border-radius:12px; box-shadow:0 4px 14px rgba(0,0,0,0.08); margin-bottom:20px; }
        table { width:100%; border-collapse:collapse; margin-top:15px; }
        table th, table td { padding:12px; border-bottom:1px solid #ddd; text-align:left; }
        table th { background:#f1f1f1; }
        .status { padding:6px 10px; border-radius:20px; font-size:13px; color:white; }
        .confirmed { background:green; }
        .completed { background:gray; }
        .actions button { width:100%; padding:12px; margin-top:12px; border:none; border-radius:6px; background:black; color:white; cursor:pointer; }
        .actions button:hover { background:gold; color:black; }
        footer { text-align:center; margin-top:40px; font-size:14px; color:#777; }
    </style>
</head>
<body>

<div class="navbar">
    <h2>SalonBooking</h2>
    <div>
        <a href="<%= request.getContextPath() + "/customerDashboard" %>">Dashboard</a>
        <a href="#">Appointments</a>
        <a href="#">Profile</a>
        <a href="<%= request.getContextPath() + "/logout" %>">Logout</a>
    </div>
</div>

<div class="container">

    <div class="stats">
        <div class="stat-card"><h3>Total Appointments</h3><p>12</p></div>
        <div class="stat-card"><h3>Upcoming</h3><p>3</p></div>
        <div class="stat-card"><h3>Completed</h3><p>9</p></div>
        <div class="stat-card"><h3>Loyalty Points</h3><p>250</p></div>
    </div>

    <div class="card">
        <h3>Recent Appointments</h3>
        <table>
            <tr><th>Date</th><th>Service</th><th>Stylist</th><th>Status</th></tr>
            <tr><td>28 Feb 2026</td><td>Haircut</td><td>Rahul</td><td><span class="status confirmed">Confirmed</span></td></tr>
            <tr><td>15 Feb 2026</td><td>Facial</td><td>Pooja</td><td><span class="status completed">Completed</span></td></tr>
            <tr><td>02 Feb 2026</td><td>Hair Spa</td><td>Amit</td><td><span class="status completed">Completed</span></td></tr>
        </table>
    </div>

    <div class="card actions">
        <p><b>Name:</b> <%= userName %></p>
        <p><b>Email:</b> <%= userEmail %></p>
        <p><b>Mobile:</b> <%= userMobile %></p>
        <p><b>Membership:</b> <%= userMembership %></p>
        <button onclick="location.href='jsp/booking.jsp'">Book Appointment</button>
        <button onclick="location.href='#'">View Appointments</button>
        <button onclick="location.href='#'">Edit Profile</button>
    </div>

    <footer>
        © 2026 Salon Booking System | Customer Dashboard
    </footer>
</div>

</body>
</html>
