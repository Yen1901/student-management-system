<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.*,java.sql.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Header</title>
</head>
<body>
	<header id="header" class="header d-flex align-items-center sticky-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center">

      <a href="${pageContext.request.contextPath}/student/index.jsp" class="logo d-flex align-items-center me-auto">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="img/logo.png" alt=""> -->
        <h1 class="sitename"><img src="img/logo.jpg" alt="">SV HAUI</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="${pageContext.request.contextPath}/student/index.jsp" class="active">Trang chủ<br></a></li>
          <li><a href="course.jsp">Chương trình đào tạo</a></li>
          <li><a href="course_registration.jsp">Đăng ký học phần</a></li>
          <li class="dropdown"><a href="#"><span>Theo dõi lịch học</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="timetable.jsp">Thời khóa biểu</a></li>
			  <li><a href="exam_schedule.jsp">Lịch thi</a></li>
            </ul>
          </li>
		  <li class="dropdown"><a href="#"><span>Theo dõi KQ học tập</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="grade.jsp">Kết quả học tập</a></li>
			  <li><a href="exam-result.jsp">Kết quả thi</a></li>
            </ul>
          </li>
        </ul>
		<ul class="navbar-nav ms-auto mb-2 mb-lg-0 profile-menu"> 
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <%= session.getAttribute("username") %>
         <!-- You can also use icon as follows: -->
           <!--  <i class="fas fa-user"></i> -->
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown"style="border: none;left: -100px;">
            <li><a class="" href="student_info.jsp">Thông tin cá nhân</a></li>
            <li><a class="" href="setting.jsp">Cài đặt</a></li>
            <hr class="dropdown-divider" style="margin: 0;">
            <li><a class="" href="${pageContext.request.contextPath}/login">Đăng xuất</a></li>
          </ul>
        </li>
     </ul>
		<i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
	  	  
    </div>
  </header>
	
</body>
</html>