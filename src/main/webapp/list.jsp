<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" >
        <div>
            <a href="" class="navbar-brand">Employee Management</a>
        </div>
        <ul class="navbar-nav">
            <li><A href="<%=request.getContextPath()%>/list" class="nav-link">Employee</A> </li>
        </ul>
    </nav>
</header>
<br>
<div class="row">
    <div class="container">
        <h3 class="text-center"> List of Users</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add Employee</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Birthday</th>
                <th>Address</th>
                <th>Position</th>
                <th>Department</th>

            </tr>
            </thead>
            <c:forEach var="employee" items="${listEmployee}">
                <tr>
                    <td>
                        <c:out value="${employee.id}"/>
                    </td>
                    <td>
                        <c:out value="${employee.name}"/>
                    </td>
                    <td>
                        <c:out value="${employee.birthday}"/>
                    </td>
                    <td>
                        <c:out value="${employee.address}"/>
                    </td>
                    <td>
                        <c:out value="${employee.position}"/>
                    </td>
                    <td>
                        <c:out value="${employee.department}"/>
                    </td>

                </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>