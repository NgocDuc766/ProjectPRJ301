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
        <title>Activity Details</title>
    </head>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <body>
        <jsp:include page="header.jsp"></jsp:include>



            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <h6 class="mb-2 fw-bold fs-2 text-primary mt-3">Activity Details</h6>
                            </div>

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-16 col-12">
                                <div class="form-group fs-4">
                                    <label for="date">Date:</label>
                                    <span>${requestScope.ds.date}</span>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group fs-4">
                                <label for="slot">Slot:</label>
                                <span>
                                    <c:choose>
                                        <c:when test="${requestScope.ds.start == '07:30'}">
                                            1
                                        </c:when>
                                        <c:when test="${requestScope.ds.start == '10:00'}">
                                            2
                                        </c:when>
                                        <c:when test="${requestScope.ds.start == '12:50'}">
                                            3
                                        </c:when>
                                        <c:otherwise>
                                            4
                                        </c:otherwise>
                                    </c:choose>
                                </span>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-4">
                            <div class="form-group fs-4">
                                <label for="class">Student Group:</label>
                                <span><a href="viewclass?classId=${requestScope.ds.classId}">${requestScope.ds.classId}</a></span>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-4">
                            <div class="form-group fs-4">
                                <label for="teacher">Instructor: </label>
                                <span>${requestScope.te.teacherId} </span>
                            </div>
                        </div>

                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-4">
                            <div class="form-group fs-4">
                                <label for="course">Course: </label>
                                <span>${requestScope.dsub.name}&nbsp;${requestScope.dsub.id}</span>
                            </div>
                        </div>       

                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-4">
                            <div class="form-group fs-4">
                                <label for="status">Status:
                                    <c:if test="${requestScope.stat.status == 2}">
                                        <span class="text-danger"> Not yet </span>
                                    </c:if>
                                    <c:if test="${requestScope.stat.status == 1}">
                                        <span class="text-success"> attended </span>
                                    </c:if>
                                    <c:if test="${requestScope.stat.status == 0}">
                                        <span class="text-danger"> absent </span>
                                    </c:if>
                                </label>
                                <span></span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="mt-5 h-100">  </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
