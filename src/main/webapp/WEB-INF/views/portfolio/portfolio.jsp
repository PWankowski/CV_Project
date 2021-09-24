<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf"%>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

  <%@include file="../dynamic/navigationMain.jspf"%>

 

  <main id="main">


    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Portfolio</h2>
          <p>Zrealizowane Projekty</p>
        </div>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up" data-aos-delay="100">
           
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src='<c:url value="/resources/img/portfolio/photo-hotel.jpg"/>' class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>Hotel_Service Project</h4>
                <div class="portfolio-links">
                  <a href='<c:url value="https://github.com/PWankowski/Hotel_Service"/>'  data-vbtype="iframe"  title="githubLink"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src='<c:url value="/resources/img/portfolio/cv.jpeg"/>' class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>CV Project</h4>
                <div class="portfolio-links">
                  <a href='<c:url value="https://github.com/PWankowski/CV_Project"/>'  data-vbtype="iframe"  title="githubLink"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div>


          <c:forEach items="${project}" var="myProject">

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
              <div class="portfolio-wrap">
                <img src='<c:url value="/resources/img/portfolio/new-project.jpg"/>' class="img-fluid" alt="">
                <div class="portfolio-info">
                  <h4>${myProject.projectName}</h4>
                  <div class="portfolio-links">
                    <a href='<c:url value="${myProject.gitHub}"/>' data-vbtype="iframe"
                       title="githubLink"><i class="bx bx-link"></i></a>
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>



        </div>
        
        <div class="Buttons">
            <a href='<c:url value="/addNewProject"/>' class="btn btn-success btn-icon-split">
              <span class="icon text-white-50">
                  <i class="fas fa-check"></i>
              </span>
              <span class="text">Dodaj Projekt</span>
          </a>

          <a href='<c:url value="/editProject"/>' class="btn btn-primary">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
            <span class="text">Edytuj</span>
          </a>
        </div>
        
        

      </div>
    </section><!-- End Portfolio Section -->

   

    

    

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@include file="../dynamic/board.jspf"%>


  <%@include file="../dynamic/javaScript.jspf"%>

</body>

</html>