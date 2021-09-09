<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>

<%@include file="dynamic/css.jspf"%>



<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

  <%@include file="dynamic/navigationMain.jspf"%>

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container" data-aos="zoom-in" data-aos-delay="100">
      <h1>Paweł Wańkowski</h1>
      <p>I'm <span class="typed" data-typed-items="Junior Java Developer"></span></p>
     
    </div>
  </section><!-- End Hero -->

  <main id="main">

 

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@include file="dynamic/board.jspf"%>



  <%@include file="dynamic/javaScript.jspf"%>

</body>

</html>