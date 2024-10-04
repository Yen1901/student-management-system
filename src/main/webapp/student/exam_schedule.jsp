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
  
  <link href='js/core/main.css' rel='stylesheet' />
  <link href='js/daygrid/main.css' rel='stylesheet' />

  <!-- Main CSS File -->
  <link href="css/main.css" rel="stylesheet">
   <style>
    .fc .fc-toolbar h2 {
      text-transform: capitalize;
    }
    .fc-day-header {
      text-transform: capitalize;
    }
  </style>

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
              <h1>Lịch thi</h1>
              <p class="mb-0"></p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="index.html">Trang chủ</a></li>
            <li class="current">Lịch thi</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->
  
  <!--Exam schedule Section-->
  <div class="content">
    <div id='calendar'></div>
  </div>
  
  <!--End exam schedule section-->

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
  <script>
      document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {
	  locale: 'vi',
      plugins: [ 'interaction', 'dayGrid' ],
      defaultDate: '2024-02-12',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      events: [
        {
          title: 'All Day Event',
          start: '2024-02-01'
        },
        {
          title: 'Long Event',
          start: '2024-02-07',
          end: '2024-02-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2024-02-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2024-02-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2024-02-11',
          end: '2020-02-13'
        },
        {
          title: 'Meeting',
          start: '2024-02-12T10:30:00',
          end: '2020-02-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2024-02-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2024-02-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2024-02-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2024-02-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2024-02-13T07:00:00'
        }
      ]
    });

    calendar.render();
  });

    </script>

  <!-- Vendor JS Files -->
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/validate.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/glightbox.min.js"></script>
  <script src="js/purecounter_vanilla.js"></script>
  <script src="js/swiper-bundle.min.js"></script>
  
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src='js/core/main.js'></script>
  <script src='js/interaction/main.js'></script>
  <script src='js/daygrid/main.js'></script>
  

  <!-- Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>