<%-- 
    Document   : profile
    Created on : Oct 27, 2023, 3:12:49 PM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Profile</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container mt-5">
                <div class="row gutters">
                    <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                        <div class="card h-100">
                            <div class="card-body">
                                <div class="account-settings">
                                    <div class="user-profile">
                                        <div class="user-avatar">
                                            <img src="https://inkythuatso.com/uploads/thumbnails/800/2023/03/9-anh-dai-dien-trang-inkythuatso-03-15-27-03.jpg" alt="Student Avatar">
                                        </div>
                                        <h5 class="user-name">${sessionScope.info.lastName} ${sessionScope.info.midName} ${sessionScope.info.firstName}</h5>
                                    <h6 class="user-email">${sessionScope.info.id}</h6>
                                </div>
                                <div class="about">
                                    <h5> <a href="profileUpdate.jsp">Edit profile </a></h5>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                
                                
                <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h6 class="mb-2 text-primary">Personal Details</h6>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
                                    <div class="form-group">
                                        <label for="fullName">Full Name</label>
                                        <input type="text" class="form-control" id="fullName" value="${sessionScope.info.lastName} ${sessionScope.info.midName} ${sessionScope.info.firstName}" readonly>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
                                    <div class="form-group">
                                        <label for="eMail">Email</label>
                                        <input type="email" class="form-control" id="eMail" value="${sessionScope.acc.username}@fpt.edu.vn" readonly>
                                    </div>
                                </div>
                                
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
                                    <div class="form-group">
                                        <label for="DOB">Date of birth</label>
                                        <input type="date" class="form-control"  value="${sessionScope.info.dob}" readonly>
                                    </div>
                                </div>       

                                <c:if test="${sessionScope.info.gender == 0}">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
                                        <div class="form-group">
                                            <label for="Gender">Gender</label>
                                            <input type="text" class="form-control" id="Street" value="Male" readonly>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.info.gender == 1}">
                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 mt-3">
                                        <div class="form-group">
                                            <label for="Gender">Gender</label>
                                            <input type="text" class="form-control" id="Street" value="Female" readonly>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
