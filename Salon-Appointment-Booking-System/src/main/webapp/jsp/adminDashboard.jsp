<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, model.Appointment" %>

<!DOCTYPE html>
<html>
<head>
<title>Admin Panel</title>

<style>
body{background:#f1f1f1;font-family:Segoe UI}
.header{background:#000;color:gold;padding:15px}
.table{width:90%;margin:30px auto;background:white;border-collapse:collapse}
th,td{padding:12px;border-bottom:1px solid #ccc}
button{padding:6px 12px;margin:0 4px}
.approve{background:green;color:white;border:none}
.reject{background:red;color:white;border:none}
</style>

</head>
<body>

<div class="header">
Admin Dashboard
</div>

<table class="table">

<tr>
<th>Appointment ID</th>
<th>Date</th>
<th>Time</th>
<th>Status</th>
<th>Action</th>
</tr>

<%
List<Appointment> list =
(List<Appointment>) request.getAttribute("appointments");

if(list != null){

for(Appointment a : list){
%>

<tr>

<td><%= a.getAppointmentId() %></td>

<td><%= a.getDate() %></td>

<td><%= a.getTime() %></td>

<td><%= a.getStatus() %></td>

<td>

<form action="approveAppointment" method="post">

<input type="hidden" name="id"
value="<%= a.getAppointmentId() %>">

<button type="submit"
name="status" value="APPROVED"
class="approve">
Approve
</button>

<button type="submit"
name="status" value="REJECTED"
class="reject">
Reject
</button>

</form>

</td>

</tr>

<%
}

}
%>

</table>

</body>
</html>
