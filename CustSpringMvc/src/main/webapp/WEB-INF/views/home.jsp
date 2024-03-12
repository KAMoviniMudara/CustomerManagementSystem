<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="./base.jsp"%>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .navbar {
            overflow: hidden;
            background-color: #007bff;
            text-align: left; 
        }
        .navbar a {
            display: inline-block; 
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 20px;
        }
        .navbar a:hover {
            background-color: #0056b3;
        }
        .container {
            margin-top: 20px;
            padding: 20px;
        }
        .content {
            margin-top: 20px;
            padding: 200px;
            height: 80vh;
            overflow: auto; 
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="${pageContext.request.contextPath}/customerReport" target="content">Customer List</a>
        <a href="${pageContext.request.contextPath}/addCustomer" target="content">Add New Customer</a>
    </div>
    <div class="container">
        <h2>${message}</h2>
    </div>
    <div class="content">
        <iframe name="content" src="${pageContext.request.contextPath}/customerReport" frameborder="0"></iframe>
    </div>
</body>
</html>
