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



          <c:forEach items="${education}" var="editedEducation">
          <form name="sendEditSkill" method="post" action='<c:url value="/editEducation/${editedEducation.id}"/>'>

              <div class="form-group" >

                  <div class="form-group row">
                  <div class="col-lg-12" >
                      <textarea class="form-control" rows="2"  name="fieldOfStudy">${editedEducation.fieldOfStudy}</textarea>
                  </div>
                  </div>

                  <div class="form-group row">
                  <div class="col-lg-12" >
                      <div>
                      <input class="form-control" type="text" name="startAndEndOfStudy" value=${editedEducation.startAndEndOfStudy}>
                      </div>
                  </div>
                  </div>

                  <div class="form-group row">
                  <div class="col-lg-12">
                      <input class="form-control" type="text" name="universityName" value=${editedEducation.universityName}>
                  </div>
                  </div>


              </div>

              <!-- Buttons -->
              <div class="form-group row">

                  <div class="col-1">
                      <input class="btn btn-success pull-left" type="submit" value="Zapisz"
                             id="searchButton">
                  </div>


                  <div class="col-1">
                      <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#modalButton${editedEducation.id}">
                          Usuń
                      </button>
                  </div>
              </div>
          </form>

              <!-- The Modal -->
              <div class="modal" id="modalButton${editedEducation.id}" data-backdrop="false">
                  <div class="modal-dialog">
                      <div class="modal-content">

                          <!-- Modal Header -->
                          <div class="modal-header">
                              <h4 class="modal-title">Czy na pewno chcesz usunąć obiekt ?</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>

                          <!-- Modal body -->
                          <div class="modal-body">
                              Jeżeli usuniesz to już nie będzie odwrotu
                          </div>

                          <!-- Modal footer -->
                          <div class="modal-footer">
                              <button type="button" class="btn btn-primary" data-dismiss="modal">Anuluj</button>
                              <form name="deleteEducation" method="post"
                                    action='<c:url value="/deleteEducation/${editedEducation.id}"/>'>
                                  <input type="submit" class="btn btn-danger pull-left" value="Tak"/>
                              </form>
                          </div>

                      </div>

                  </div>
              </div>

        </c:forEach>

        </div>
    </section><!-- End Resume Section -->


  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <%@include file="../dynamic/board.jspf" %>

  <%@include file="../dynamic/javaScript.jspf" %>


</body>

</html>