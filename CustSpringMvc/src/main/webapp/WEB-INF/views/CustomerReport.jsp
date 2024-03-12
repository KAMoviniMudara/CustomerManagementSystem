<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of Customers</title>
    <%@include file="./base.jsp"%>
</head>
<body>
    <div class="container mt-3">
        <h1>List of Customers</h1>
        <a href="addCustomer" class="btn btn-primary">Add Customer</a>
        <div class="row">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">NIC</th>
                        <th scope="col">Name</th>
                        <th scope="col">Address</th>
                        <th scope="col">Mobile Number</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td class="table-plus">${customer.id}</td>
                            <td>${customer.nic}</td>
                            <td>${customer.name}</td>
                            <td>${customer.address}</td>
                            <td>${customer.mobile}</td>
                            <td><a href="editCustomer/${customer.id}" class="btn btn-warning">Edit</a></td>
                            <td><a href="deleteCustomer/${customer.id}" class="btn btn-danger">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
