<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<style>
body{background:#eee;font-family:Segoe UI}
.form{width:420px;margin:60px auto;background:white;padding:25px;border-radius:10px}
h3{text-align:center}
input,select{width:100%;padding:10px;margin:8px 0}
button{background:gold;border:none;padding:12px;width:100%;font-weight:bold}
</style>
</head>
<body>

<div class="form">
<h3>Create Account</h3>

<form action="<%= request.getContextPath() %>/register" method="post">

<input name="name" placeholder="Full Name" required>
<input name="email" placeholder="Email" required>
<input name="password" type="password" placeholder="Password" required>

<select name="role" required>
<option value="">Select Role</option>
<option value="CUSTOMER">Customer</option>
<option value="THERAPIST">Therapist</option>
</select>

<button>Register</button>
</form>

</div>
</body>
</html>
