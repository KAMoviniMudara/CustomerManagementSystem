<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
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
            background-color: #ffc107;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn-warning {
            background-color: #007bff;
        }
        .btn:hover {
            background-color: #d39e00;
        }
        .btn-warning:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container mt-3">
    <h1>Edit Customer Form</h1>
    <form action="${pageContext.request.contextPath}/editCustomer/updateCustomer" method="post">
    <div class="row">
        <div class="col">
            <div class="form-group">
                <label for="id">Id</label>
                <input type="hidden" value="${customer.id}" name="id">
                <input type="text" value="${customer.id}" class="form-control" id="id" readonly>
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="nic">NIC</label>
                <input type="text" value="${customer.nic}" class="form-control" id="nic" name="nic" placeholder="Enter NIC" required>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" value="${customer.name}" class="form-control" id="name" name="name" placeholder="Enter Name" required>
            </div>
        </div>
        <div class="col">
            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="text" value="${customer.mobile}" class="form-control" id="mobile" name="mobile" placeholder="Enter Mobile Number" required>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <div class="form-group">
                <label for="address">Address</label>
                <textarea class="form-control" id="address" name="address" rows="5" placeholder="Enter Address" required>${customer.address}</textarea>
            </div>
        </div>
    </div>
    <a href="${pageContext.request.contextPath}/customerReport" class="btn btn-warning">Back</a>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

</div>

</body>
</html>
