<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%@ include file="navbar.jsp" %>

<div class="container mt-4">
    <h3>Customer Dashboard</h3>

    <form action="<%= request.getContextPath() %>/searchSalon" method="get" class="row g-3 mt-3">
        <div class="col-md-6">
            <input type="text" name="location" class="form-control"
                   placeholder="Search by location" required>
        </div>
        <div class="col-md-3">
            <button class="btn btn-primary">Search Salon</button>
        </div>
    </form>
</div>

<%@ include file="footer.jsp" %>

</body>
</html>
