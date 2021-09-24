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

          <form name = "send" method="post" action='<c:url value="/addNewProject"/>'>
          <div class="row">
              <div class="col-xl-12 col-md-12 mb-12">
                  <div class="card shadow mb-4">
                      <div class="card-header py-3">


                          <div class="form-group row">
                              <label for="portfolio" class="col-2 col-form-label">Nazwa Projektu </label>
                              <div class="col-10">
                                  <textarea class="form-control" rows="1" id="projectName" name="projectName"
                                            placeholder="tutaj wpisz nazwę projektu..."></textarea>
                              </div>
                          </div>


                          <div class="form-group row">
                              <label for="portfolio" class="col-2 col-form-label">Link do GitHuba</label>
                              <div class="col-10">
                                  <textarea class="form-control" rows="1" id="gitHubLink" name="gitHub"
                                            placeholder="wklej link do githuba..."></textarea>
                              </div>
                          </div>


                      </div>
                  </div>
              </div>
          </div>

          <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton">
      </form>
          
       
      
        
        

      </div>
    </section><!-- End Portfolio Section -->

   

    

    

  </main><!-- End #main -->



  <%@include file="../dynamic/board.jspf"%>

  <%@include file="../dynamic/javaScript.jspf"%>

</body>

</html>