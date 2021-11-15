<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<!-- ======= Mobile nav toggle button ======= -->
<button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

<%@include file="../dynamic/navigationMain.jspf" %>


<main id="main">


    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Portfolio</h2>
                <p>Projects</p>
            </div>


            <div class="container-fluid">

                <!-- Content Row -->
                <div class="row">
                    <div class="col-xl-12 col-md-12 mb-12">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">

                                <c:forEach items="${project}" var="editedProject">
                                    <form name="sendEditProject" method="post"
                                          action='<c:url value="/editProject/${editedProject.id}"/>'>

                                        <div class="form-group row">

                                            <div class="col-5">
                                                <input class="form-control" type="text" name="projectName"
                                                       value="${editedProject.projectName}">

                                            </div>


                                            <div class="col-5">
                                                <input class="form-control" type="text" name="gitHub"
                                                       value="${editedProject.gitHub}">
                                            </div>

                                            <div class="col-1">
                                                <input class="btn btn-success pull-left" type="submit" value="Save "
                                                       id="searchButton">
                                            </div>


                                            <div class="col-1">
                                                <button type="button" class="btn btn-danger" data-toggle="modal"
                                                        data-target="#modalButtonForProject${editedProject.id}"> Delete
                                                </button>

                                            </div>

                                        </div>
                                    </form>
                                    <div class="modal" id="modalButtonForProject${editedProject.id}"
                                         data-backdrop="false">
                                        <div class="modal-dialog">
                                            <div class="modal-content">

                                                <!-- Modal Header -->
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Do you want to remove this project?
                                                        ?</h4>
                                                    <button type="button" class="close" data-dismiss="modal">&times;
                                                    </button>
                                                </div>

                                                <!-- Modal body -->
                                                <div class="modal-body">
                                                    If you delete there will be no going back
                                                </div>

                                                <!-- Modal footer -->
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal">
                                                        Cancel
                                                    </button>
                                                    <form name="deleteProject" method="post"
                                                          action='<c:url value="/deleteProject/${editedProject.id}"/>'>
                                                        <input type="submit" class="btn btn-danger pull-left"
                                                               value="Yes"/>
                                                    </form>
                                                </div>

                                            </div>

                                        </div>
                                    </div>

                                </c:forEach>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section><!-- End Portfolio Section -->


</main><!-- End #main -->

<!-- ======= Footer ======= -->
<%@include file="../dynamic/board.jspf" %>

<%@include file="../dynamic/javaScript.jspf" %>


</body>

</html>