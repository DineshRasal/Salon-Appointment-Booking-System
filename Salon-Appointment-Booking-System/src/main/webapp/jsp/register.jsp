<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5 card p-4 shadow">
            <h3 class="text-center mb-3">Register</h3>

            <form action="<%= request.getContextPath() %>/register" method="post">

                <input type="text" name="name" class="form-control mb-3"
                       placeholder="Full Name" required>

                <input type="email" name="email" class="form-control mb-3"
                       placeholder="Email" required>

                <input type="password" name="password" class="form-control mb-3"
                       placeholder="Password" required>

                <select name="role" class="form-select mb-3">
                    <option value="CUSTOMER">Customer</option>
                    <option value="ADMIN">Admin</option>
                    <option value="THERAPIST">Therapist</option>
                </select>

                <button class="btn btn-success w-100">Register</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
