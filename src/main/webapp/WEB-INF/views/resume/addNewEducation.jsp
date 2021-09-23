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

       
        <div class="row">
          <div class="col-lg-12">
        

            
            <div class="resume-item">
              <h4>Mechanika i Budowa Maszyn specjalizacja Procesy, Maszyny i Systemy Produkcyjne, studia magisterskie</h4>
              <h5>2012 - 2014</h5>
              <p><em>Uniwersytet Technologiczno-Przyrodniczy w Bydgoszczy </em></p>
             
            </div>
             <div class="resume-item">
              <h4>Zarządzanie Inżynierią Produkcji, specjalizacja Zarządzanie Procesami Produkcyjnymi, studia inżynierskie</h4>
              <h5>2008 - 2012</h5>
              <p><em>Uniwersytet Technologiczno-Przyrodniczy w Bydgoszczy</em></p>
              
            </div>
              <c:forEach items="${education}" var="edu">
                  <div class="resume-item">
                      <h4>${edu.fieldOfStudy}</h4>
                      <h5>${edu.startAndEndOfStudy}</h5>
                      <p><em>${edu.universityName}</em></p>

                  </div>


              </c:forEach>

          </div>
         
        </div>


          <form name = "send" method="post" action='<c:url value="/addNewEducation"/>'>
           <div class="form-group row">

               <div class="col-lg-12">
                   <textarea class="form-control" rows="3" name="fieldOfStudy" placeholder="Kierunek studiów oraz specjalizacja..."></textarea>
               </div>

               <div class="col-lg-12">
                   <input class="form-control" type="text" name="startAndEndOfStudy" placeholder="Data rozpoczęcia oraz data ukończenia...">
               </div>

               <div class="col-lg-12">
                   <input class="form-control" type="text" name="universityName" placeholder="Nazwa uczelni...">
               </div>

</div>


          <input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>

          </form>
         
        
            
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