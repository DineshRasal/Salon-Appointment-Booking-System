<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Salon Booking</title>
<style>
body{margin:0;font-family:Segoe UI;background:#111;color:white}
.hero{height:100vh;display:flex;align-items:center;justify-content:center;text-align:center}
.hero h1{font-size:48px;color:gold}
.hero p{font-size:18px;color:#ccc}
.btn{padding:12px 30px;background:gold;color:black;border:none;font-weight:bold;cursor:pointer}
</style>
</head>
<body>
<div class="hero">
  <div>
    <h1>Luxury Salon Experience</h1>
    <p>Book your style. Own your confidence.</p>

  <a href="<%= request.getContextPath() %>/jsp/login.jsp">

        <button class="btn">Get Started</button>
    </a>

  </div>
</div>
</body>
</html>
