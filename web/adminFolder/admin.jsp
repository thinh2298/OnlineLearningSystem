<%-- 
    Document   : admin
    Created on : Nov 4, 2019, 10:57:40 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin Page</title>

        <!-- Bootstrap core CSS -->
        <link href="admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="admin/css/simple-sidebar.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    </head>
    <script>
        var flag = true;
        function changeArrow() {
            if (flag) {
                flag = false;
                $("#menu-toggle").removeClass("fa-chevron-left");
                $("#menu-toggle").addClass("fa-chevron-right");
            }
            else {
                flag = true;
                $("#menu-toggle").removeClass("fa-chevron-right");
                $("#menu-toggle").addClass("fa-chevron-left");
            }
        }
    </script>
    <body>
        <div class="d-flex" id="wrapper">

            <!-- Sidebar -->
            <div class="bg-light border-right" id="sidebar-wrapper" >
                <div class="sidebar-heading">${sessionScope.USERNAME} </div>
                <div class="list-group list-group-flush">
                    <a href="CourseController?key=loadCourse" class="list-group-item list-group-item-action bg-light">Course</a>
                    <a href="LessonController?key=loadLessons" class="list-group-item list-group-item-action bg-light">Lesson</a>
                    <a href="UserController?key=loadUser" class="list-group-item list-group-item-action bg-light">User</a>
                </div>
            </div>
            <!-- /#sidebar-wrapper -->

            <!-- Page Content -->
            <div id="page-content-wrapper">

                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <button class="btn btn-primary fas fa-chevron-left" id="menu-toggle" onclick="changeArrow()"></button>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                            <li class="nav-item active">
                                <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Profile
                                </a>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="UserController?key=editProfile">Edit</a>
                                      <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="CourseController?key=LOG_OUT">Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <div class="container-fluid">
                    <c:set var="page" value="${requestScope.PAGE}"/>
                    <c:choose>
                        <c:when test="${page == 'loadCourse'}">
                            <%@include file="loadCourse.jsp" %>
                        </c:when>
                        <c:when test="${page == 'loadLesson'}">
                            <%@include file="loadLesson.jsp" %>
                        </c:when>
                        <c:when test="${page == 'loadUser'}">
                            <%@include file="loadUser.jsp" %>
                        </c:when>
                    </c:choose>
                </div>
                <!-- /#page-content-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- Bootstrap core JavaScript -->
            <script src="admin/vendor/jquery/jquery.min.js"></script>
            <script src="admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Menu Toggle Script -->
            <script>
                        $("#menu-toggle").click(function (e) {
                            e.preventDefault();
                            $("#wrapper").toggleClass("toggled");
                        });
            </script>

    </body>

</html>
