
<%-- 
    Document   : schedule
    Created on : Oct 27, 2023, 11:05:55 AM
    Author     : ADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Timestamp, java.text.SimpleDateFormat" %>
<%@page import="model.*" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>

<%

    List<Schedule> lst = (List<Schedule>) request.getAttribute("lst");
    MyLib m = new MyLib();
    String[] time = {"07:30","10:00","12:50","15:20"};
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>


            <div class="container">
                <div class="w-95 w-md-75 w-lg-60 w-xl-55 mx-auto mb-6 text-center">
                    <h2 class="display-18 display-md-16 display-lg-14 mb-0 mt-5">Activities for ${sessionScope.acc.username}</h2>
            </div>
            <div class="row mt-5">
                <div class="col-md-12">
                    <div class="schedule-table">
                        <table class="table bg-white">
                            <tr>
                                <th>Week 1</th>
                                <th>Slot 1</th>
                                <th>Slot 2</th>
                                <th>Slot 3</th>
                                <th class="last">Slot 4</th>
                            </tr>
                            <tbody>

                                <tr>
                                    <td class="day">Monday <br> 16-10-2023</td>
                                        <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-16")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>
                                <tr>
                                    <td class="day">Tuesday <br> 17-10-2023</td>
                                        <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-17")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>
                                <tr>
                                    <td class="day">Wednesday <br> 18-10-2023</td>
                                        <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-18")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>


                                <tr>
                                    <td class="day">Thursday <br> 19-10-2023</td>

                                    <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-19")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>


                                <tr>
                                    <td class="day">Friday <br> 20-10-2023</td>
                                        <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-20")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>
                                <tr>
                                    <td class="day">Saturday <br> 21-10-2023</td>
                                        <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-21")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>
                                <tr>
                                    <td class="day">Sunday <br> 22-10-2023</td>
                                        <% for (String startTime : time) { %>
                                    <td class="active">
                                        <% for (Schedule x : lst) { %>
                                        <% if (x.getDate().equals(m.convertStringtoDate("2023-10-22")) && x.getStart().equals(startTime)) { %>
                                        <h4><%= x.getSubId() %></h4>
                                        <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                        <div class="hover">
                                            <h4><a href="detailActivity?id=<%= x.getId()%>"><%= x.getSubId()%></a></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %></span>
                                        </div>
                                        <% } %>
                                        <% } %>
                                    </td>
                                    <% } %>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</body>


</html>
