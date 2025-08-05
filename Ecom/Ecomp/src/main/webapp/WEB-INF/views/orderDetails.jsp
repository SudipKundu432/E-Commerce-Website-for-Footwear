<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String transactionId=request.getParameter("payment_id");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
    body {
        background-image: url('images/address-background.jpg'); /* Your background image path */
        background-size: cover;
        background-color: rgb(197, 225, 195);
        background-position: center;
        height: 100vh;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .signup-container {
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0px 0px 20px rgba(0,0,0,0.3);
        background-color: rgba(255, 255, 255, 0.95);
    }

    .form-control:focus {
        box-shadow: none;
        border-color: #007bff;
    }

    .btn-primary {
        border-radius: 25px;
    }
</style>
</head>
<body>
<div class="signup-container">
    <div class="card col-md-5">
        <h3 class="text-center mb-4">Enter Your Address to Deliver:</h3>
        <form class="text-center" action="/order" method="post">
     	<input type="text" name="address">
		<input type="submit" value="Place Order">
		<input type="hidden" name="tdetails" value="<%=transactionId %>">
        </form>
    </div>
</div>
</body>
</html>
