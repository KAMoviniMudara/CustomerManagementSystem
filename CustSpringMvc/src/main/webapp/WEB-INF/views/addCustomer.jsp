<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Customer Form</title>
    <%@include file="./base.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .container {
            margin-top: 50px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Add Customer Form</h1>
    <form action="insertCustomer" method="post">
        <div class="form-group">
            <label for="nic">NIC</label> 
            <input type="text" class="form-control" id="nic" name="nic" placeholder="Enter NIC" required>
        </div>
        <div class="form-group">
            <label for="name">Name</label> 
            <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" required>
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <textarea class="form-control" id="address" name="address" rows="5" placeholder="Enter Address" required></textarea>
        </div>
        <div class="form-group">
            <label for="mobile">Mobile Number</label> 
            <input type="number" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile Number" required>
        </div>
        <a href="${pageContext.request.contextPath }/CustomerReport" class="btn btn-warning"> Back </a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
