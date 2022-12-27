<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf" %>

<body>

<!-- ======= Mobile nav toggle button ======= -->
<button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

<!-- ======= Header ======= -->
<%@include file="../dynamic/navigationMain.jspf" %>


<main id="main">


    <!-- ======= Skills Section ======= -->
    <section id="skills" class="skills section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Skills</h2>
                <p></p>
            </div>

            <div class="row skills-content">

                <div class="col-lg-6">

                    <div class="progress">
                        <span class="skill">Groovy <i class="val">60%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">HTML <i class="val">50%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">

                    <div class="progress">
                        <span class="skill">Java <i class="val">90%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">PostgreSQL <i class="val">70%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">Hibernate <i class="val">80%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">Spring/Spring Boot<i class="val">80%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <c:forEach items="${skill}" var="title">
                        <div class="progress">
                            <span class="skill">${title.name} <i class="val">${title.value}%</i></span>
                            <div class="progress-bar-wrap">
                                <div class="progress-bar" role="progressbar"
                                     aria-valuenow=${title.value} aria-valuemin="0" aria-valuemax="100"></div>
                            </div>
                        </div>
                    </c:forEach>


                </div>


            </div>

        </div>
    </section><!-- End Skills Section -->

    <form name="send" method="post" action='<c:url value="/addSkills"/>'>
        <!-- container-fluid -->
        <div class="container-fluid">

            <!-- Content Row -->
            <div class="row">
                <div class="col-xl-12 col-md-12 mb-12">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">


                            <div class="form-group row">
                                <label for="skills" class="col-3 col-form-label">Insert name </label>
                                <div class="col-9">
                        <textarea class="form-control" rows="1" id="inputName" name="name"
                                  placeholder="insert name of skill..."></textarea>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="skills" class="col-3 col-form-label">How good do you know this skill?</label>
                                <div class="col-9">
                        <textarea class="form-control" rows="1" id="inputValue" name="value"
                                  placeholder="value in %..."></textarea>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>


            <input class="btn btn-success pull-left" type="submit" value="Send" id="searchButton">


        </div>
        <!-- /.container-fluid -->

    </form>


</main><!-- End #main -->

<!-- ======= Footer ======= -->
<%@include file="../dynamic/board.jspf" %>


<%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>