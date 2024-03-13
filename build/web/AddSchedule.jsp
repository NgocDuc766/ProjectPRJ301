<%-- 
    Document   : profile
    Created on : Oct 27, 2023, 3:12:49 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.*" %>
<%@page import="model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Schedule</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <h2 class="mt-5">First, choose class...</h2>    
            <table class="table mt-3">
            <c:set var="count" value="0" />
            <tr>
                <c:forEach items="${requestScope.lst1}" var="c">
                    <c:set var="count" value="${count + 1}" />
                    <th><a href="addschedule?classId=${c.classId}">${c.classId}</a></th>

                    <c:if test="${count % 5 == 0}">
                    </tr><tr>
                    </c:if>
                </c:forEach>
            </tr>
        </table>
        <p class="text-success">${msg1}</p>
        <p class="text-warning">${msg}</p>


        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>


