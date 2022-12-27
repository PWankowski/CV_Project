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


    <!-- ======= Resume Section ======= -->
    <section id="resume" class="resume">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Education  and Experience</h2>

            </div>

            <div class="row">
                <div class="col-lg-6">


                    <h3 class="resume-title">Education</h3>
                    <div class="resume-item">
                        <h4>Mechanics and Structure of machines specialization : Processes, Machines and Production Systems, master's degree</h4>
                        <h5>2012 - 2014</h5>
                        <p><em>University of Technology and Sciences  in Bydgoszcz </em></p>

                    </div>
                    <div class="resume-item">
                        <h4>Managing Production Engineering, specialization in Manufacturing Process Management, engineering studies</h4>
                        <h5>2008 - 2012</h5>
                        <p><em>University of Technology and Sciences  in Bydgoszcz</em></p>

                    </div>

                    <c:forEach items="${education}" var="edu">
                        <div class="resume-item">
                            <h4>${edu.fieldOfStudy}</h4>
                            <h5>${edu.startAndEndOfStudy}</h5>
                            <p><em>${edu.universityName}</em></p>

                        </div>

                    </c:forEach>
                </div>
                <div class="col-lg-6">
                    <h3 class="resume-title">Experience</h3>
                    <div class="resume-item">
                        <h4>Junior Java Developer</h4>
                        <h5>06/2022– Nowadays</h5>
                        <p><em>Oponeo.pl in Bydgoszcz</em></p>
                        <ul>
                            <li>Service and developing ERP system to buisness managment in Java language,</li>
                            <li>Spring,</li>
                            <li>Hibernate,</li>
                            <li>Groovy,</li>
                            <li>SOAP API,</li>
                            <li>PostgreSQL,</li>
                        </ul>
                    </div>
                    <div class="resume-item">
                        <h4>Trainee</h4>
                        <h5>09/2020 - 10/2021</h5>
                        <p><em>Software Development Academy </em></p>
                        <ul>
                            <li>
                                Programming course from Java Language, full-time course changed for remote from April 2021.
                            </li>

                        </ul>
                    </div>
                    <div class="resume-item">
                        <h4>Engineer of Telecommunication Systems</h4>
                        <h5>07/2016-Nowadays</h5>
                        <p><em>Łączpol Sp. Z o.o. in Nokia Bydgoszcz</em></p>
                        <ul>
                            <li>Preparation of technical documentation, executive and as-built on sites with network 2G, 3G, 4G and 5G,</li>
                            <li>Implementation of system solutions of the client and co-users on sites,</li>
                            <li>Preparation of cables connection schema and electro connection schema,</li>
                            <li>Technical and technological update for prepared documentations in AutoCad,</li>
                            <li>Preparation of  steel construction drawings according to statics files for masts etc.,</li>
                            <li>Documentation checking according to clients requirements , based on the data obtained from site surveys,</li>
                            <li>Contact with others Nokia facilities in Europe,  explaining issues related to projects, discuss about solutions on sites.</li>
                        </ul>
                    </div>

                    <div class="resume-item">
                        <h4>Technologist </h4>
                        <h5>03/2016 – 07/2016</h5>
                        <p><em>Maxbelt Sp. Z o.o. Bydgoszcz</em></p>
                        <ul>
                            <li>Preparation of technological work plans,</li>
                            <li>Supervision of orders in progress,</li>
                            <li>Preparation of geared pulley  drawings in Autocad, </li>
                            <li>Preparation of offers for geared pulley for clients,</li>
                            <li>Work with ERP System,</li>
                            <li>Maintaining an appropriate level of steel inventory.</li>
                        </ul>
                    </div>

                    <div class="resume-item">
                        <h4>Technologist</h4>
                        <h5>11/2014 – 03/2016</h5>
                        <p><em>STAL-BUD s.c Bydgoszcz </em></p>
                        <ul>
                            <li>Maintaining contact with planning project offices and with construction managers,</li>
                            <li>Preparation of technological steel constructions documentation,</li>
                            <li>Preparation 2D drawings in Inventor/AutoCad,</li>
                            <li>Supervision of  technological processes of steel processing,</li>
                            <li>Performing visual inspection of welding,</li>
                            <li>Supervision of the work performed at the workshop,</li>
                            <li>Preparation of work schedule based on guidelines from the client.</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">


                    <a href='<c:url value="/addNewEducation"/>' class="btn btn-success btn-icon-split">
              <span class="icon text-white-50">
                  <i class="fas fa-check"></i>
              </span>
                        <span class="text">Add Education</span>
                    </a>

                    <a href='<c:url value="/editEducation"/>' class="btn btn-primary">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
                        <span class="text">Edit</span>
                    </a>


                </div>


            </div>

        </div>
    </section><!-- End Resume Section -->


</main><!-- End #main -->

<!-- ======= Footer ======= -->
<%@include file="../dynamic/board.jspf" %>


<%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>