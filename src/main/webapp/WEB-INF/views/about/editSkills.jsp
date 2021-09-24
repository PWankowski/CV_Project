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


      <!-- ======= Skills Section ======= -->
      <section id="skills" class="skills section-bg">
          <div class="container" data-aos="fade-up">

              <div class="section-title">
                  <h2>Umiejętności</h2>
                  <p></p>
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
                          <c:forEach items="${skill}" var="editedSkill">
                              <form name="sendEditSkill" method="post" action='<c:url value="/editSkills/${editedSkill.id}"/>'>
                          <div class="form-group row">

                          <div class="col-3">
                              <input class="form-control" type="text" name ="name" value=${editedSkill.name}>

                          </div>

                          <div class="col-2">
                              <input class="form-control" type="text" name ="value" value=${editedSkill.value} >
                          </div>

                              <!-- Buttons -->
                              <div class="col-1">
                                  <input class="btn btn-success pull-left" type="submit" value="Zapisz " id="searchButton">
                              </div>


                              <div class="col-1">
                                  <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#myModal${editedSkill.id}"> Usuń </button>
                              </div>


                          </div>
                              </form>


                          <div class="modal" id="myModal${editedSkill.id}">
                              <div class="modal-dialog">
                                  <div class="modal-content">

                                      <!-- Modal Header -->
                                      <div class="modal-header">
                                          <h4 class="modal-title">Czy na pewno chcesz usunąć umiejętność ?</h4>
                                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>

                                      <!-- Modal body -->
                                      <div class="modal-body">
                                          Jeżeli usuniesz to już nie będzie odwrotu
                                      </div>

                                      <!-- Modal footer -->
                                      <div class="modal-footer">
                                          <button type="button" class="btn btn-primary" data-dismiss="modal">Anuluj</button>
                                          <form name="deleteSkill" method="post"
                                                action='<c:url value="/deleteEditSkills/${editedSkill.id}"/>'>
                                              <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                                          </form>
                                      </div>

                                  </div>

                              </div>
                          </div>

                          </c:forEach>
                          </div>

                  </div>

                      </div>
                  </div>
              </div>
          </div>










      </div>
      <!-- /.container-fluid -->





    </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@include file="../dynamic/board.jspf"%>


  <%@include file="../dynamic/javaScript.jspf"%>

</body>

</html>