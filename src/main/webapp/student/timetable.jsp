﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
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
  <title>SV HAUI</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="img/logo.jpg" rel="icon">

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-icons.css" rel="stylesheet">
  <link href="css/aos.css" rel="stylesheet">
  <link href="css/glightbox.min.css" rel="stylesheet">
  <link href="css/swiper-bundle.min.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Mentor
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Updated: May 18 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="index-page">

  <%@ include file="header.jsp" %>

  <main class="main">
	<!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>Thời khóa biểu</h1>
              <p class="mb-0"></p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.html">Trang chủ</a></li>
            <li class="current">Thời khóa biểu</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->
  
  <!--Timetable Section-->
	<div class="container py-9 py-lg-11 position-relative z-index-1">
    <div class="row mt-4 mb-4">
            <div class="col-lg-5 mb-5 mb-lg-0">
                <div class="nav nav-pills flex-column aos-init aos-animate" id="myTab" role="tablist" data-aos="fade-up">
                    <button class="nav-link px-4 text-start" id="d2-tab" data-bs-toggle="tab" data-bs-target="#day2" type="button" role="tab" aria-controls="day2" aria-selected="false" tabindex="-1">
                        <span class="d-block fs-5 fw-bold">Hôm qua</span>
                        <span class="small">04/06/2024</span>
                    </button>
					
					<button class="nav-link px-4 text-start mb-3 active" id="d1-tab" data-bs-toggle="tab" data-bs-target="#day1" type="button" role="tab" aria-controls="day1" aria-selected="true">
                        <span class="d-block fs-5 fw-bold">Hôm nay</span>
                        <span class="small">05/06/2024</span>
                    </button>
                    
                    <button class="nav-link px-4 text-start" id="d2-tab" data-bs-toggle="tab" data-bs-target="#day2" type="button" role="tab" aria-controls="day2" aria-selected="false" tabindex="-1">
                        <span class="d-block fs-5 fw-bold">Ngày mai</span>
                        <span class="small">06/06/2024</span>
                    </button>
					
					
                </div>
            </div>
            
            <div class="col-lg-7 col-xl-6">
                <div data-aos="fade-up" class="tab-content aos-init aos-animate" id="myTabContent">
                    <div class="tab-pane fade active show" id="day1" role="tabpanel" aria-labelledby="d1-tab">
                        <ul class="pt-4 list-unstyled mb-0">
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">09:00
                                    AM - 10:00 AM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Registration and Coffee</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">10:00
                                    AM - 11:00 AM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Culpa qui officia deserunt</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">11:00
                                    AM - 12:30 PM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Excepteur sint occaecat cupidatat</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">12:30
                                    PM - 01:30 PM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Lunch break</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-pane fade" id="day2" role="tabpanel" aria-labelledby="d2-tab">
                        <ul class="pt-4 list-unstyled mb-0">
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">09:00
                                    AM - 10:00 AM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Excepteur sint occaecat</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">10:00
                                    AM - 11:00 AM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Culpa qui officia deserunt</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
                            <li class="d-flex flex-column flex-md-row py-4">
                                <span class="flex-shrink-0 width-13x me-md-4 d-block mb-3 mb-md-0 small text-muted">11:00
                                    AM - 12:30 PM</span>
                                <div class="flex-grow-1 ps-4 border-start border-3">
                                    <h4>Excepteur sint occaecat cupidatat</h4>
                                    <p class="mb-0">
                                        Excepteur sint occaecat cupidatat non proident, sunt in culpa qui
                                        officia deserunt mollit anim id est laborum.
                                    </p>
                                </div>
                            </li>
              
                       
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!--End timetable section-->

  </main>

  <footer id="footer" class="footer position-relative">

    <div class="container footer-top">
     <div class="row gy-4">
    <div class="col-lg-4 col-md-6 col-12 footer-about">
		<h4 style="font-size: 20px;"><img src="img/logo.jpg" alt="" style="padding-right: 10px;">SV HAUI</h4>
      <div class="footer-contact pt-2 pb-4">
        <p>
          <i class="bi bi-geo-alt-fill"></i>
          <span class="ms-2">Số 298 đường Cầu Diễn, quận Bắc Từ Liêm, Hà Nội</span>
        </p>
        <p class="mt-3">
          <i class="bi bi-telephone-fill"></i>
          <span class="ms-2">+84 243 765 5121</span>
        </p>
        <p>
          <i class="bi bi-envelope-fill"></i>
          <span class="ms-2">dhcnhn@haui.edu.vn</span>
        </p>
      </div>
    </div>

    <div class="col-lg-4 col-md-6 col-12 footer-links">
      <h4>BẢN ĐỒ</h4>
      <div class="irs-footer-contact mb-4">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.473663078486!2d105.73291811540255!3d21.053735992299995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1631076181348!5m2!1svi!2s" width="100%" height="250px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <h4>CÁC CƠ SỞ KHÁC</h4>
      <ul>
        <li><a href="#">Cơ sở 2: Phường Tây Tựu, Bắc Từ Liêm, Hà Nội</a></li>
        <li><a href="#">Cơ sở 3: Lê Hồng Phong, TP. Phủ Lý, Hà Nam</a></li>
      </ul>
    </div>

    <div class="col-lg-4 col-md-6 col-12 footer-links">
      <h4>MẠNG XÃ HỘI</h4>
      <div class="social-links d-flex mt-4">
        <a href="#"><i class="bi bi-twitter-x"></i></a>
        <a href="#"><i class="bi bi-facebook"></i></a>
        <a href="#"><i class="bi bi-instagram"></i></a>
        <a href="#"><i class="bi bi-linkedin"></i></a>
      </div>
    </div>
  </div>
	
  </footer>
  <div class="text-center" style="background-color: #083970;">
		  <p class="pt-4" style="color: var(--background-color);">© <span>Bản quyền thuộc về </span> <strong class="px-1 sitename">SV HAUI</strong></p>
		  <div class="credits pb-4" style="color: var(--background-color);">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you've purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: [buy-url] -->
			Được thiết kế bởi <strong class="px-1 sitename">Nhóm 2 - Java Web</strong>
		  </div>
		</div>
      </div>

  <!-- Scroll Top -->
  <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/validate.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/glightbox.min.js"></script>
  <script src="js/purecounter_vanilla.js"></script>
  <script src="js/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>