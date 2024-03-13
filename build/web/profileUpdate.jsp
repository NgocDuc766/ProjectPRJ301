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
            <form method="post" action="updatestu">
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
                                            <h5 class="user-name"></h5>
                                            <h6 class="user-email"></h6>
                                        </div>
                                        <div class="about">

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
                                            <h6 class="mb-2 text-primary">Change your personal details</h6>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div class="form-group">
                                                <label for="lastName">Last Name</label>
                                                <input type="text" name="last" class="form-control" id="lastName" value="" placeholder="Enter last name"/>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div class="form-group">
                                                <label for="midName">Middle Name</label>
                                                <input type="text" name="mid" class="form-control" id="midName" value="" placeholder="Enter middle name"/>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div class="form-group">
                                                <label for="firstName">First Name</label>
                                                <input type="text" name="first" class="form-control" id="firstName" value="" placeholder="Enter first name"/>
                                            </div>
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div class="form-group">
                                                <label for="eMail">Email</label>
                                                <input type="email" class="form-control" id="eMail" value="${sessionScope.acc.username}@fpt.edu.vn" readonly/>
                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="DOB">Date of birth</label>
                                            <input type="date" name="dob" class="form-control"  value="${sessionScope.info.dob}" />
                                        </div>
                                    </div>       

                                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label for="Gender">Gender</label>
                                            <br>
                                            <input type="radio" name="gender" value="male" id="maleRadio"/> 
                                            <label for="maleRadio">Male</label> <br>
                                            <input type="radio" name="gender" value="female" id="femaleRadio"/> 
                                            <label for="femaleRadio">Female</label>
                                        </div>
                                    </div>

                                    <div class="row gutters mt-5">
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div class="text-right mt-3">
                                                <button type="button" id="cancel" name="submit" class="btn btn-secondary">Cancel</button>
                                                <button type="submit" id="update" name="submit" class="btn btn-warning">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </form>


        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
<script>
    document.getElementById("cancel").addEventListener("click", function () {
        window.location.href = "profileView.jsp";
    })
            ;
</script>
