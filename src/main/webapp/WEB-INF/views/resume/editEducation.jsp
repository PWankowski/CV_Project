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

    
    <!-- ======= Resume Section ======= -->
    <section id="resume" class="resume">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Edukacja</h2>
          
        </div>

       
        
          
            <div class="form-group row">

    <div class="col-lg-12">
                              <textarea class="form-control" rows="3">Kierunek studiów oraz specjalizacja</textarea>
                          </div>

                          <div class="col-lg-12">
                              <input class="form-control" type="text" value="Data rozpoczęcia oraz data ukończenia" >
                          </div>
                          
                          <div class="col-lg-12">
                              <input class="form-control" type="text" value="Nazwa uczelni" >
                          </div>

</div>
         
        
        <div class="row">
            <div class="col-lg-3">
           
           
            <a href="#" class="btn btn-success btn-icon-split">
              <span class="icon text-white-50">
                  <i class="fas fa-check"></i>
              </span>
              <span class="text">Zapisz Zmiany</span>
          </a>
          
          <a href="#" class="btn btn-danger btn-icon-split">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
            <span class="text">Usuń</span>
        </a>
       
            
        </div>
            
        </div>

      </div>
    </section><!-- End Resume Section -->

    
  </main><!-- End #main -->

   <!-- ======= Footer ======= -->
  <%@include file="../dynamic/board.jspf"%>

  <%@include file="../dynamic/javaScript.jspf"%>


</body>

</html>