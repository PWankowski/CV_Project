<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="../dynamic/css.jspf"%>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

  <!-- ======= Header ======= -->
  <%@include file="../dynamic/navigationMain.jspf"%>

 

  <main id="main">

    Section -->
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
              <span class="skill">HTML <i class="val">70%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">CSS <i class="val">70%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">JavaScript <i class="val">35%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">

            <div class="progress">
              <span class="skill">Java <i class="val">100%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">MySQL <i class="val">80%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

            <div class="progress">
              <span class="skill">Hibernate <i class="val">70%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>
            
            <div class="progress">
              <span class="skill">Spring <i class="val">70%</i></span>
              <div class="progress-bar-wrap">
                <div class="progress-bar" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
            </div>

          </div>

         

        </div>

      </div>
    </section><!-- End Skills Section -->

    
<!-- container-fluid -->
    <div class="container-fluid">

      <!-- Content Row -->
      <div class="row">
          <div class="col-xl-12 col-md-12 mb-12">
              <div class="card shadow mb-4">
                  <div class="card-header py-3">
                     
                     
                     
<div class="form-group row">
<label for="skills" class="col-2 col-form-label">Podaj Nazwę </label>
<div class="col-10">
<textarea class="form-control" rows="1" id="start" placeholder="tutaj wpisz umiejętność..."></textarea>
</div>
</div>                     
                     
                     
                     
                      <div class="form-group row">
                          <label for="skills" class="col-2 col-form-label">Na ile % znasz podaną umiejętność</label>
                          <div class="col-10">
                             <textarea class="form-control" rows="1" id="startSkill" placeholder="podaj znajomość umiejętności wpisując wartość w  %..."></textarea>
                          </div>
              </div>


                  </div>
              </div>
          </div>
      </div>
      

<input class="btn btn-success pull-left" type="submit" value="Wyślij" id="searchButton"></input>




</div>
<!-- /.container-fluid -->
    


    

   

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@include file="../dynamic/board.jspf"%>



  <%@include file="../dynamic/javaScript.jspf"%>

</body>

</html>