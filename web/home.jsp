<%-- 
    Document   : Home
    Created on : Oct 26, 2023, 12:46:18 AM
    Author     : ADMIN
--%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Attendance Management System</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <!-- this is header content -->
        <jsp:include page="header.jsp"></jsp:include>

        <!-- this is main content -->
        <div class="container col-xl-10 col-xxl-8 px-4 py-5">
            <div class="row align-items-center g-lg-5 py-5">
                
                <!-- this is left content -->
                <div class="col-lg-7 text-center text-lg-start">
                    <c:if test="${sessionScope.acc == null}">
                        <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">Attendance Management</h1>
                        <p class="col-lg-10 fs-4">The system was programmed by Bui Ngoc Duc through many tiring days.</p>
                    </c:if>
                    <c:if test="${sessionScope.acc != null}">
                        <div class="col-lg-7 text-center text-lg-start">
                            <h1 class="display-4 fw-bold lh-1 text-body-emphasis mb-3">Welcome, ${sessionScope.acc.username}</h1>
                            <p class="col-lg-10 fs-4">We use this system to manage student attendance, please choose your option</p>
                        </div> 
                    </c:if>     
                </div>

                <!--this is right content-->
                <div class="col-md-10 mx-auto col-lg-5">

                    <c:if test="${sessionScope.acc == null}">
                        <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" method="post" action="login">
                            <p class="text-warning">${message}</p>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="floatingInput" placeholder="Account" name="account" value="">
                                <label for="floatingInput">Account</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="password" value="">
                                <label for="floatingPassword">Password</label>
                            </div>
                            <button class="w-100 btn btn-lg btn-warning" type="submit">Sign in</button>
                            <hr class="my-4">
                        </form>
                    </c:if>
                    <c:if test="${sessionScope.acc.type == 'Student'}">
                        <div class="list-group">
                            <a href="schedulestudent" class="list-group-item list-group-item-action">View schedule</a>
                            <a href="classhome?accId=${sessionScope.acc.id}" class="list-group-item list-group-item-action">Your class</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.acc.type == 'Teacher'}">
                        <div class="list-group">
                            <a href="scheduleteacher" class="list-group-item list-group-item-action">Take attendance</a>
                            <!--<a href="#" class="list-group-item list-group-item-action">View class</a>-->
                        </div>
                    </c:if>
                    
                    <c:if test="${sessionScope.acc.type == 'Admin'}">
                        <div class="list-group">
                            <a href="uploadclass" class="list-group-item list-group-item-action">Manage schedule</a>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>

        <!-- footer -->
        <jsp:include page="footer.jsp"></jsp:include>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>

    <script>
        document.getElementById("logout").addEventListener("click", function () {
            window.location.href = "logout"
        })
                ;
    </script>
</html>