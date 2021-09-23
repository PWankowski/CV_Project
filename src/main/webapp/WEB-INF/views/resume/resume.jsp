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
          <h2>Edukacja i Doświadczenie Zawodowe</h2>
          
        </div>

        <div class="row">
          <div class="col-lg-6">
        

            <h3 class="resume-title">Edukacja</h3>
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
          <div class="col-lg-6">
            <h3 class="resume-title">DOŚWIADCZENIE ZAWODOWE</h3>
            <div class="resume-item">
              <h4>Trainee</h4>
              <h5>09/2020 - Obecnie</h5>
              <p><em>Software Development Academy </em></p>
              <ul>
                <li>Kurs  nauki programowania w Javie, kurs stacjonarny z przejściem na nauczanie zdalnie od kwietnia 2021.</li>
               
              </ul>
            </div>
            <div class="resume-item">
              <h4>Inżynier Systemów Telekomunikacyjnych</h4>
              <h5>07/2016-Obecnie</h5>
              <p><em>Łączpol Sp. Z o.o. w Nokia Bydgoszcz</em></p>
              <ul>
                <li>Opracowywanie dokumentacji technicznych, wykonawczych oraz powykonawczych lokalizacji i obiektów dla mobilnych sieci 2G, 3G, 4G oraz 5G</li>
                <li>Wdrażanie rozwiązań systemowych klienta oraz współużytkowników obiektu,</li>
                <li>Opracowywanie schematów połączeń antenowych i elektrycznych na potrzeby tworzonej dokumentacji,</li>
                <li>Aktualizowanie pod kątem technicznym i technologicznym opracowywanych obiektów w programie AutoCad,</li>
                <li>Wykonywanie rysunków wykonawczych konstrukcji stalowych,</li>
                <li>Sprawdzanie prac pod kątem zgodności z wytycznymi, bazując na pozyskanych danych z wizji lokalnych oraz wytycznych od klienta</li>
              </ul>
            </div>
            
            <div class="resume-item">
              <h4>Technolog</h4>
              <h5>03/2016 – 07/2016</h5>
              <p><em>Maxbelt Sp. Z o.o. Bydgoszcz</em></p>
              <ul>
                <li>Przygotowywanie marszrut technologicznych,</li>
                <li>Nadzór nad zleceniami w toku,</li>
                <li>Wykonywanie rysunków pasowych kół zębatych w programie Autocad</li>
                <li>Przygotowywanie ofert kół pasowych pod zapytania klientów w oparciu o pracochłonność dla danych typów kół,</li>
                <li>Kontakt telefoniczny oraz prowadzenie korespondencji z klientami z Polski i zagranicy (uzgadnianie szczegółów technicznych, terminów wykonania oraz poziomu cen),</li>
                 <li>Praca z systemem ERP</li>
              </ul>
            </div>
            
            <div class="resume-item">
              <h4>Technolog</h4>
              <h5>11/2014 – 03/2016</h5>
              <p><em>STAL-BUD s.c Bydgoszcz </em></p>
              <ul>
                <li>Utrzymywanie kontaktu z biurami projektowymi oraz kierownikami budowy,</li>
                <li>Wdrażanie rozwiązań systemowych klienta oraz współużytkowników obiektu,</li>
                <li>Przygotowywanie list materiałowych i list z rozkrojami materiałów,</li>
                <li>Zakupy materiałów hutniczych, negocjacje cen materiałów hutniczych z dostawcami,</li>
                <li>Opracowywanie dokumentacji technicznej konstrukcji stalowych,</li>
                <li>Wykonywanie rysunków 2D w programie Inventor/AutoCad,</li>
                <li>Przeprowadzanie doraźnych badań wizualnych złączy spawanych; nadzór nad wykonywanymi pracami na warsztacie;</li>
                <li>Opracowywanie harmonogramu prac w oparciu o uzgodnienia z zleceniodawcą oraz harmonogramu prac warsztatowych i rozdzielanie zadań pracownikom produkcyjnym,</li>
                 <li>Praca z systemem ERP</li>
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
              <span class="text">Dodaj Edukacje</span>
          </a>

              <a href='<c:url value="/editEducation"/>' class="btn btn-primary">
            <span class="icon text-white-50">
                <i class="fas fa-trash"></i>
            </span>
                <span class="text">Edytuj</span>
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