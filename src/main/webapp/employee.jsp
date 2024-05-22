<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--&lt;%&ndash;<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>&ndash;%&gt;--%>
<%--<!DOCTYPE html>--%>
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
<%--<div class="container col-md-5">--%>
<%--    <div class="card">--%>
<%--        <div class="card-body">--%>
<%--            <c:choose>--%>
<%--            <c:when test="${employee != null}">--%>
<%--            <form action="update" method="post">--%>
<%--                </c:when>--%>
<%--                <c:otherwise>--%>
<%--                <form action="insert" method="post">--%>
<%--                    </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                    <h2>--%>
<%--                        <c:choose>--%>
<%--                            <c:when test="${employee != null}">--%>
<%--                                Edit Employee--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                Add Employee--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>
<%--                    </h2>--%>

<%--                    <c:if test="${employee != null}">--%>
<%--                        <input type="hidden" name="id" value="${employee.id}"/>--%>
<%--                    </c:if>--%>

<%--                    <fieldset class="form-group">--%>
<%--                        <label>Employee Name</label>--%>
<%--                        <input type="text" class="form-control" name="name" value="${employee != null ? employee.name : ''}" required="required">--%>
<%--                    </fieldset>--%>
<%--                    <fieldset class="form-group">--%>
<%--                        <label>Employee Birthday</label>--%>
<%--                        <input type="date" class="form-control" name="birthday" value="${employee != null ? employee.birthday : ''}" required="required">--%>
<%--                    </fieldset>--%>
<%--                    <fieldset class="form-group">--%>
<%--                        <label>Employee Address</label>--%>
<%--                        <input type="text" class="form-control" name="address" value="${employee != null ? employee.address : ''}" required="required">--%>
<%--                    </fieldset>--%>
<%--                    <fieldset class="form-group">--%>
<%--                        <label>Employee Position</label>--%>
<%--                        <input type="text" class="form-control" name="position" value="${employee != null ? employee.position : ''}" required="required">--%>
<%--                    </fieldset>--%>
<%--                    <fieldset class="form-group">--%>
<%--                        <label>Employee Department</label>--%>
<%--                        <input type="text" class="form-control" name="department" value="${employee != null ? employee.department : ''}" required="required">--%>
<%--                    </fieldset>--%>

<%--                    <button type="submit" class="btn btn-success">Save</button>--%>
<%--                </form>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>



<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
<head>
    <title>Add Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark">
        <div>
            <a href="" class="navbar-brand">Employee Management</a>
        </div>
        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Employee</a></li>
        </ul>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="${pageContext.request.contextPath}/insert" method="post">
                <h2>Add Employee</h2>
                <fieldset class="form-group">
                    <label>Employee Name</label>
                    <input type="text" class="form-control" name="name" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Employee Birthday</label>
                    <input type="date" class="form-control" name="birthday" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Employee Address</label>
                    <input type="text" class="form-control" name="address" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Employee Position</label>
                    <input type="text" class="form-control" name="position" required="required">
                </fieldset>
                <fieldset class="form-group">
                    <label>Employee Department</label>
                    <input type="text" class="form-control" name="department" required="required">
                </fieldset>
                <button type="submit" class="btn btn-success">Save</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>

