
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header class="p-3 text-bg-dark">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <div class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <img src="img/Logo-FU-03.webp" alt="fu_logo" width="200" height="50">
            </div>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li class="nav-item">
                    <a class="nav-link text-warning" aria-current="page" href="home.jsp">Home</a>
                </li>
            </ul>  
            <div class="text-end">
             
                <c:if test="${sessionScope.acc != null}">
                    <c:if test="${sessionScope.acc.type == 'Student'}">
                        <button id="profile"type="button" class="btn btn-warning">Your Profile</button>
                    </c:if>                         
                    <button id="logout" type="button" class="btn btn-warning">Log out</button>
                </c:if>
            </div>      
        </div>                
    </div>
</header>

<script>
    document.getElementById("logout").addEventListener("click", function () {
        window.location.href = "logout";
    })
            ;
    document.getElementById("profile").addEventListener("click", function () {
        window.location.href = "profile";
    })
            ;
    document.getElementById("signup").addEventListener("click", function () {
        window.location.href = "SignUp.jsp";
    })
            ;
</script>
