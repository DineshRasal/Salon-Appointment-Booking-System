<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, dao.ServiceDAO, model.Service" %>

<%
ServiceDAO serviceDAO = new ServiceDAO();
List<Service> services = serviceDAO.getServices(1);   // salon id = 1
%>

<!DOCTYPE html>
<html>
<head>
<title>Book Appointment</title>

<style>
body{background:#111;color:white;font-family:Segoe UI}
.box{width:400px;margin:80px auto;background:#222;padding:25px;border-radius:12px}
input,select{width:100%;padding:10px;margin:10px 0}
button{width:100%;padding:12px;background:gold;color:black;font-weight:bold}
</style>

</head>

<body>
<div class="box">

<h2>Book Appointment</h2>

<form action="<%= request.getContextPath() %>/bookAppointment" method="post">

<!-- therapist temporary -->
<input type="hidden" name="therapistId" value="1">

<!-- ===== SERVICE DROPDOWN (VISIBLE) ===== -->
<label>Select Service</label>

<select name="serviceId" required>

<option value="">-- Choose Service --</option>

<%
for(Service s : services){
%>

<option value="<%= s.getServiceId() %>">
<%= s.getName() %> - ₹<%= s.getPrice() %>
</option>

<%
}
%>

</select>

<input type="date" name="date" required>

<input type="time" name="time" required>

<button type="submit">Confirm Booking</button>

</form>

</div>
</body>
</html>
