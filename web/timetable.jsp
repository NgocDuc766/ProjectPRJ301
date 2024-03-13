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

    <%

        List<Schedule> lst = (List<Schedule>) request.getAttribute("lst");
        MyLib m = new MyLib();
        String[] time = {"07:30","10:00","12:50","15:20"};
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Schedule</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <h1 class="mt-5">Then, add schedule for this class...</h1>
            <div class="container">
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %>  <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %> <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %> <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %> <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %> <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %> <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
                                            <h4><%= x.getSubId()%></h4>
                                            <p><%= x.getStart() %> - <%= x.getEnd() %></p>
                                            <span><%= x.getRoom() %> <a href="deleteschedule?id=<%=x.getId()%>&subId=<%=x.getSubId()%>&classId=<%=x.getClassId()%>">Delete</a></span>
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
        <p><button class="btn btn-warning mx-auto d-block" onclick='window.history.go(-1);'>Back to previous page</button>
        <form method="post" action="addschedule">              
            <div class="container mt-5">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <h5 class="mb-2 text-primary">Add new schedule in timetable</h5>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="room">Room</label>
                                        <input type="text" class="form-control" name="room" value="" placeholder="Enter room" required/>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="Date">Date</label>
                                        <input type="date" name="date" class="form-control" value="2023-10-16"/>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="startTime">Start Time</label>
                                        <input type="text" class="form-control" name="start"  value="" placeholder="Enter Start Time"/ required>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="endTime">End Time</label>
                                        <input type="text" class="form-control" name="end" value="" placeholder="Enter End Time" required/>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="class">Class</label>
                                        <input type="text" class="form-control" name="class"  value="" placeholder="Enter Class" required/>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="subId">Subject</label>
                                        <input type="text" class="form-control" name="subject"  value="" placeholder="Enter Subject" required/>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                    <div class="form-group">
                                        <label for="teacher">Assign teacher</label>
                                        <input type="text" class="form-control" name="teacher" value="" placeholder="Enter Teacher" required/>
                                    </div>
                                </div>

                                <div class="row gutters mt-5">
                                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                        <div class="text-right mt-3">
                                            <button type="button" id="cancel" name="submit" class="btn btn-secondary">Cancel</button>
                                            <button type="submit" id="update" name="submit" class="btn btn-warning">Add</button>
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
                window.location.href = "home.jsp";
            })
                    ;
</script>

