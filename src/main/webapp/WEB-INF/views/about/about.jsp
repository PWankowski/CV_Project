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
                <h2>O mnie </h2>
                <p>Od zawsze interesowałem sie nowymi technologiami i chciałbym zostać częscia tego świata nie tylko z
                    perspektywy użytkownika, ale również poznać ten świat z perspektywy developera.</p>
            </div>

            <div class="row">
                <div class="col-lg-4">
                    <img src='<c:url value="/resources/img/IMG_0140b.jpg"/>' class="img-fluid" class="img-fluid" alt="">
                </div>
                <div class="col-lg-8 pt-4 pt-lg-0 content">
                    <h3>Inżynier Systemów Telekomunikacyjnych</h3>
                    <p class="font-italic">
                        Od ponad 5 lat pracuję jako Inżynier Systemów Telekomunikacyjnych w Sp. Z o.o. Łączpol dla Nokia
                        w Bydgoszczy, oraz od roku uczestniczę w kursie Software Development Academy programowania w
                        Javie.
                    </p>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="icofont-rounded-right"></i> <strong>Data urodzenia:</strong> 2 Października
                                    1989
                                </li>
                                <li><i class="icofont-rounded-right"></i> <strong>Telefon:</strong> 792 021 089</li>
                                <li><i class="icofont-rounded-right"></i> <strong>Miasto:</strong> Bydgoszcz, Polska
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul>
                                <li><i class="icofont-rounded-right"></i> <strong>Wiek:</strong> 32</li>
                                <li><i class="icofont-rounded-right"></i> <strong>Wykształcenie:</strong> Magister
                                    Inżynier
                                </li>
                                <li><i class="icofont-rounded-right"></i> <strong>Email:</strong> pawel.wankowski@wp.pl
                                </li>
                            </ul>
                        </div>
                    </div>
                    <p>
                        Programowanie sprawia mi ogromną przyjemnośc i radość z tworzenia. Zawsze czułem sie mocny w
                        rozwiazywaniu problemów technicznych.
                        Jestem osoba ambitną, gotową na nowe wyzwania, chętnie współpracującą w grupie, życzliwą z
                        pozytywnym nastawieniem do pracy.
                        Według mnie branża programistyczna daje ogromne mozliwosci rozwoju z których chciałbym
                        skorzystać bedąc otwartym na nową wiedze i zdobywanie nowych umiejętności.
                    </p>
                </div>
            </div>


        </div>
    </section><!-- End About Section -->
    <!-- ======= Skills Section ======= -->
    <section id="skills" class="skills section-bg">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Umiejętności</h2>
                <p></p>
            </div>

            <div class="row skills-content">

                <div class="col-lg-6">

                    <div class="progress">
                        <span class="skill">HTML <i class="val">50%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">CSS <i class="val">40%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">JavaScript <i class="val">35%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="35" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                </div>

                <div class="col-lg-6">

                    <div class="progress">
                        <span class="skill">Java <i class="val">80%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">MySQL <i class="val">70%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">Hibernate <i class="val">70%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                    </div>

                    <div class="progress">
                        <span class="skill">Spring <i class="val">70%</i></span>
                        <div class="progress-bar-wrap">
                            <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0"
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
                        <span class="text">Dodaj nową umiejętnosc</span>
                    </a>

                    <a href='<c:url value="/editSkills"/>' class="btn btn-primary">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
                        <span class="text">Edytuj</span>
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