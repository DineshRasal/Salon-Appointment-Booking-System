<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4 card p-4 shadow">
            <h3 class="text-center mb-3">Login</h3>

            <form action="<%= request.getContextPath() %>/login" method="post">
                <input type="email" name="email" class="form-control mb-3"
                       placeholder="Email" required>

                <input type="password" name="password" class="form-control mb-3"
                       placeholder="Password" required>

                <button class="btn btn-primary w-100">Login</button>
            </form>

            <p class="text-center mt-3">
                New user? <a href="register.jsp">Register</a>
            </p>
        </div>
    </div>
</div>

</body>
</html>
