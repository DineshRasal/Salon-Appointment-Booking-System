<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, model.Appointment" %>

<!DOCTYPE html>
<html>
<head>
<title>Your Appointments</title>

<style>
body{
    background:#0f0f0f;
    font-family:'Segoe UI',sans-serif;
    color:white;
}

.container{
    width:80%;
    margin:40px auto;
}

.card{
    background:#1a1a1a;
    padding:20px;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.4);
}

h3{
    text-align:center;
    color:gold;
}

table{
    width:100%;
    border-collapse:collapse;
    margin-top:15px;
    background:#222;
}

th{
    background:#000;
    color:gold;
    padding:12px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #333;
}

tr:hover{
    background:#2a2a2a;
}

/* Status badges */
.status{
    padding:6px 10px;
    border-radius:20px;
    font-weight:bold;
}

.PENDING{ background:orange; color:black; }
.APPROVED{ background:green; color:white; }
.REJECTED{ background:red; color:white; }

.empty{
    text-align:center;
    padding:20px;
    color:#aaa;
}

.back{
    display:block;
    width:160px;
    margin:20px auto;
    text-align:center;
    background:gold;
    color:black;
    padding:10px;
    text-decoration:none;
    border-radius:6px;
}
</style>

</head>

<body>

<div class="container">
<div class="card">

<h3>Your Appointments</h3>

<table>

<tr>
<th>Date</th>
<th>Time</th>
<th>Status</th>
</tr>

<%
List<Appointment> list =
(List<Appointment>) request.getAttribute("appointments");

if(list != null && !list.isEmpty()){

for(Appointment a : list){
%>

<tr>
<td><%= a.getDate() %></td>

<td><%= a.getTime() %></td>

<td>
<span class="status <%= a.getStatus() %>">
<%= a.getStatus() %>
</span>
</td>

</tr>

<%
}

} else {
%>

<tr>
<td colspan="3" class="empty">
No appointments booked yet
</td>
</tr>

<%
}
%>

</table>

<a class="back" href="booking.jsp">
Book New Appointment
</a>

</div>
</div>

</body>
</html>
