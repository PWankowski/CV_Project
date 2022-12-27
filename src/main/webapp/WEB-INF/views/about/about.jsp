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

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>About me </h2>
                <p>I have always been intrested in new technologies and I wanted to be a part of this word not only from the user's side but
                    also the developer</p>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <img src='<c:url value="/resources/img/IMG_0140b.jpg"/>' class="img-fluid"  alt="">
                </div>
                <div class="col-lg-8 pt-4 pt-lg-0 content">
                    <h3>Junior Java Developer</h3>
                    <p class="font-italic">
                        Since 6 Month I have been working as Junior Java Developer  for Oponeo.pl in Bydgoszcz.
                        Also for 1 Year I was a trainee on Programing course from Java in Software Development Academy which I finished in October 2021.
                    </p>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="icofont-rounded-right"></i> <strong>Date of birth:</strong> 2 October
                                    1989
                                </li>
                                <li><i class="icofont-rounded-right"></i> <strong>Phone:</strong> 792 021 089</li>
                                <li><i class="icofont-rounded-right"></i> <strong>City:</strong> Bydgoszcz, Poland
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="icofont-rounded-right"></i> <strong>Age:</strong> 33</li>
                                <li><i class="icofont-rounded-right"></i> <strong>Education:</strong> Master of Science
                                </li>
                                <li><i class="icofont-rounded-right"></i> <strong>Email:</strong> pawel.wankowski@wp.pl
                                </li>
                            </ul>
                        </div>
                    </div>
                    <p>
                        Programming gives me a great pleasure and fun from creating. I always felt strong with
                        solving technical problems.
                        I'm ambitious person, prepared for new challenges,friendly, gladly cooperating in group, with positive outlook on work.
                        In my opinion programming branch is giving great opportunity to development, which I would like to use
                        being open for new knowledge and by improving my skills in programming.
                    </p>
                </div>
            </div>


        </div>
    </section><!-- End About Section -->
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

                <div class="buttons">
                    <a href='<c:url value="/addSkills"/>' class="btn btn-success btn-icon-split">
              <span class="icon text-white-50">
                  <i class="fas fa-check"></i>
              </span>
                        <span class="text">Add new Skill</span>
                    </a>

                    <a href='<c:url value="/editSkills"/>' class="btn btn-primary">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
                        <span class="text">Edit</span>
                    </a>
                </div>

            </div>

        </div>
    </section><!-- End Skills Section -->

</main><!-- End #main -->

<!--  Tu wstawic Board -->
<%@include file="../dynamic/board.jspf" %>


<!--  Tu wstawic JS -->
<%@include file="../dynamic/javaScript.jspf" %>

</body>

</html>