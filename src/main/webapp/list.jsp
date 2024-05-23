<%@ page import="com.example.wcd.entity.Employee" %>
<%@ page import="java.util.List" %><%--<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>


<%--<html>--%>
<%--<head>--%>
<%--    <title>Employee Management</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>

<%--<header>--%>
<%--    <nav class="navbar navbar-expand-md navbar-dark">--%>
<%--        <div>--%>
<%--            <a href="" class="navbar-brand">Employee Management</a>--%>
<%--        </div>--%>
<%--        <ul class="navbar-nav">--%>
<%--            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Employee</a></li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
<%--</header>--%>
<%--<br>--%>
<%--<div class="row">--%>
<%--    <div class="container">--%>
<%--        <h3 class="text-center">List of Users</h3>--%>
<%--        <hr>--%>
<%--        <div class="container text-left">--%>
<%--            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add Employee</a>--%>
<%--        </div>--%>
<%--        <br>--%>
<%--        <table class="table table-bordered">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th>Id</th>--%>
<%--                <th>Name</th>--%>
<%--                <th>Birthday</th>--%>
<%--                <th>Address</th>--%>
<%--                <th>Position</th>--%>
<%--                <th>Department</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            <c:forEach var="employee" items="${listEmployee}">--%>
<%--                <tr>--%>
<%--                    <td><c:out value="${employee.id}"/></td>--%>
<%--                    <td><c:out value="${employee.name}"/></td>--%>
<%--                    <td><c:out value="${employee.birthday}"/></td>--%>
<%--                    <td><c:out value="${employee.address}"/></td>--%>
<%--                    <td><c:out value="${employee.position}"/></td>--%>
<%--                    <td><c:out value="${employee.department}"/></td>--%>
<%--                </tr>--%>
<%--            </c:forEach>--%>
<%--            </tbody>--%>
<%--        </table>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>



<%--<%@ page import="com.example.wcd.entity.Employee" %>--%>
<%--<%@ page import="java.util.List" %>--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>Danh sách nhân viên</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">--%>
<%--</head>--%>
<%--<body>--%>

<%--<header>--%>
<%--    <nav class="navbar navbar-expand-md navbar-dark">--%>
<%--        <div>--%>
<%--            <a href="" class="navbar-brand">Quản lý nhân viên</a>--%>
<%--        </div>--%>
<%--        <ul class="navbar-nav">--%>
<%--            <li><a href="<%=request.getContextPath()%>/new" class="nav-link">Thêm nhân viên</a></li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
<%--</header>--%>

<%--<br>--%>
<%--<div class="row">--%>
<%--    <div class="container">--%>
<%--        <h3 class="text-center">Danh sách nhân viên</h3>--%>
<%--        <hr>--%>
<%--        <table class="table table-bordered">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th>Id</th>--%>
<%--                <th>Tên</th>--%>
<%--                <th>Ngày sinh</th>--%>
<%--                <th>Địa chỉ</th>--%>
<%--                <th>Vị trí</th>--%>
<%--                <th>Phòng ban</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>
<%--            <tbody>--%>
<%--            &lt;%&ndash;%>
<%--                List<Employee> listEmployee = (List<Employee>) request.getAttribute("listEmployee");--%>
<%--                if (listEmployee != null && !listEmployee.isEmpty()) {--%>
<%--                    for (Employee employee : listEmployee) {--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <td><%= employee.getId() %></td>--%>
<%--                <td><%= employee.getName() %></td>--%>
<%--                <td><%= employee.getBirthday() %></td>--%>
<%--                <td><%= employee.getAddress() %></td>--%>
<%--                <td><%= employee.getPosition() %></td>--%>
<%--                <td><%= employee.getDepartment() %></td>--%>
<%--            </tr>--%>
<%--            &lt;%&ndash;%>
<%--                }--%>
<%--            } else {--%>
<%--            %>--%>
<%--            <tr>--%>
<%--                <td colspan="6">Không có nhân viên nào.</td>--%>
<%--            </tr>--%>
<%--            <% } %>--%>
<%--            </tbody>--%>
<%--        </table>--%>
<%--    </div>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>



<%@ page import="com.example.wcd.entity.Employee" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div>
            <a href="#" class="navbar-brand">Employee Management</a>
        </div>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a href="<%=request.getContextPath()%>/new" class="nav-link">Add Employee</a>
            </li>
        </ul>
    </nav>
</header>

<br>
<div class="row">
    <div class="container">
        <h3 class="text-center">List of Employees</h3>
        <hr>
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
            <tbody>
            <%
                List<Employee> listEmployee = (List<Employee>) request.getAttribute("listEmployee");
                if (listEmployee != null && !listEmployee.isEmpty()) {
                    for (Employee employee : listEmployee) {
            %>
            <tr>
                <td><%= employee.getId() %></td>
                <td><%= employee.getName() %></td>
                <td><%= employee.getBirthday() %></td>
                <td><%= employee.getAddress() %></td>
                <td><%= employee.getPosition() %></td>
                <td><%= employee.getDepartment() %></td>
            </tr>
            <%
                }
            } else {
            %>
            <tr>
                <td colspan="6">No employees found.</td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>




