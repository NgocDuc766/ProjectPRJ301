<%-- 
    Document   : DetailActivity
    Created on : Oct 31, 2023, 1:14:53 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Class</title>
    </head>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="w-95 w-md-75 w-lg-60 w-xl-55 mx-auto mb-6 text-center">
                <h2 class="display-18 display-md-16 display-lg-14 mb-0 mt-5">See student in your class </h2>
            </div>

            <table class="table table-striped mt-5">
                <thead>
                    <tr class="table table-primary text-uppercase">
                        <th>Index</th>
                        <th>Student ID</th>
                        <th>Last Name</th>
                        <th>Middle Name</th>
                        <th>First Name</th>
                    </tr>
                </thead>
                <tbody>
                <c:set var="index" value="1"></c:set>
                <c:forEach items="${requestScope.lst}" var="s">
                    <tr class="h-100" style="height: 70px;">
                        <th class="fw-normal">${index}</th>
                        <th class="fw-normal">${s.id}</th> 
                        <th class="fw-normal">${s.lastName}</th>
                        <th class="fw-normal">${s.midName}</th>
                        <th class="fw-normal">${s.firstName}</th>
                    </tr>
                    <c:set var="index" value="${index+1}"></c:set>
                </c:forEach>
            </tbody>
        </table>



        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
