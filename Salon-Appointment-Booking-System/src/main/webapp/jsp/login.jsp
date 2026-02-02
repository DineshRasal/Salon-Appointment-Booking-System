<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<style>
body{background:#f4f4f4;font-family:Segoe UI}
.card{width:360px;margin:100px auto;padding:30px;border-radius:12px;background:white;box-shadow:0 5px 15px rgba(0,0,0,0.2)}
h2{text-align:center;color:#111}
input{width:100%;padding:10px;margin:10px 0;border-radius:6px;border:1px solid #ccc}
button{width:100%;padding:12px;background:black;color:gold;border:none;font-weight:bold}
.success{color:green;text-align:center;margin-bottom:10px}
.error{color:red;text-align:center;margin-bottom:10px}
</style>
</head>
<body>

<%
if(request.getParameter("registered") != null){
%>
<div class="success">Registration successful. Please login.</div>
<%
}
if(request.getParameter("error") != null){
%>
<div class="error">Invalid email or password!</div>
<%
}
%>

<div class="card">
<h2>User Login</h2>

<!-- ✅ VERY IMPORTANT FIX -->
<form action="<%= request.getContextPath() %>/login" method="post">

<input type="email" name="email" placeholder="Email" required>
<input type="password" name="password" placeholder="Password" required>

<button type="submit">Login</button>

<div class="register-link">
Don’t have an account?
<a href="<%= request.getContextPath() %>/jsp/register.jsp">Register here</a>
</div>

</form>

</div>

</body>
</html>
