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
  <link href="${pageContext.request.contextPath}/student/img/logo.jpg" rel="icon">

  <!-- Fonts -->
  <link href="${pageContext.request.contextPath}/student/https://fonts.googleapis.com" rel="preconnect">
  <link href="${pageContext.request.contextPath}/student/https://fonts.gstatic.com" rel="preconnect" crossorigin>
  <link href="${pageContext.request.contextPath}/student/https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/student/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/aos.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/swiper-bundle.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/student/css/datatables.min.css">

  <!-- Main CSS File -->
  <link href="${pageContext.request.contextPath}/student/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Mentor
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Updated: May 18 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="courses-page">

  <%@ include file="header.jsp" %>

  <main class="main">

    <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>Kết quả học tập</h1>
              <p class="mb-0"></p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="${pageContext.request.contextPath}/student/index.html">Trang chủ</a></li>
            <li class="current">Kết quả học tập</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->

    <!-- Courses Section -->
	<div class="container mt-4 mb-4">
        <div class="row mb-4">
            <div class="col-12">
                <div class="data_table ">
                    <table id="example" class="table table-striped table-bordered">
                        <thead class="table-dark">
                            <tr>
                                <th class="text-center">Mã học phần</th>
                                <th class="text-center">Tên học phần</th>
                                <th class="text-center">Số tín chỉ</th>
                                <th class="text-center">Loại học phần</th>
                                <th class="text-center">Học kỳ</th>
                                <th class="text-center">Thường xuyên 1</th>
                                <th class="text-center">Thường xuyên 2</th>
	
                            </tr>
                        </thead>
                        <tbody>
			            <%
			                // Dữ liệu các bản ghi điểm của sinh viên (có thể thay bằng dữ liệu lấy từ Servlet)
			                String[] records = {
			                    "C001,Lập trình cơ bản,3,Bắt buộc,1,9,9",
			                    "C002,Cấu trúc dữ liệu và giải thuật,3,Bắt buộc,1,9,9",
			                    "C003,Toán rời rạc,3,Bắt buộc,2,9,9",
			                    "C001,Lập trình cơ bản,3,Bắt buộc,1,9,9",
			                    "C002,Cấu trúc dữ liệu và giải thuật,3,Bắt buộc,1,9,9",
			                    "C003,Toán rời rạc,3,Bắt buộc,2,9,9"
			                };
			
			                for (String record : records) {
			                    String[] parts = record.split(",");
			            %>
			            <tr>
			                <td><%= parts[0] %></td>
			                <td><%= parts[1] %></td>
			                <td><%= parts[2] %></td>
			                <td><%= parts[3] %></td>
			                <td><%= parts[4] %></td>
			                <td><%= parts[5] %></td>
			                <td><%= parts[6] %></td>
			            </tr>
			            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

  </main>

  <footer id="footer" class="footer position-relative">

    <div class="container footer-top">
     <div class="row gy-4">
    <div class="col-lg-4 col-md-6 col-12 footer-about">
		<h4 style="font-size: 20px;"><img src="${pageContext.request.contextPath}/student/img/logo.jpg" alt="" style="padding-right: 10px;">SV HAUI</h4>
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
        <iframe src="${pageContext.request.contextPath}/student/https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.473663078486!2d105.73291811540255!3d21.053735992299995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHcCBIw6AgTuG7mWk!5e0!3m2!1svi!2s!4v1631076181348!5m2!1svi!2s" width="100%" height="250px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      </div>
      <h4>CÁC CƠ SỞ KHÁC</h4>
      <ul>
        <li><a href="${pageContext.request.contextPath}/student/#">Cơ sở 2: Phường Tây Tựu, Bắc Từ Liêm, Hà Nội</a></li>
        <li><a href="${pageContext.request.contextPath}/student/#">Cơ sở 3: Lê Hồng Phong, TP. Phủ Lý, Hà Nam</a></li>
      </ul>
    </div>

    <div class="col-lg-4 col-md-6 col-12 footer-links">
      <h4>MẠNG XÃ HỘI</h4>
      <div class="social-links d-flex mt-4">
        <a href="${pageContext.request.contextPath}/student/#"><i class="bi bi-twitter-x"></i></a>
        <a href="${pageContext.request.contextPath}/student/#"><i class="bi bi-facebook"></i></a>
        <a href="${pageContext.request.contextPath}/student/#"><i class="bi bi-instagram"></i></a>
        <a href="${pageContext.request.contextPath}/student/#"><i class="bi bi-linkedin"></i></a>
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
  <a href="${pageContext.request.contextPath}/student/#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Preloader -->
  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/student/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/validate.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/glightbox.min.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/purecounter_vanilla.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/swiper-bundle.min.js"></script>

    <script src="${pageContext.request.contextPath}/student/js/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/student/js/datatables.min.js"></script>
    <script src="${pageContext.request.contextPath}/student/js/pdfmake.min.js"></script>
    <script src="${pageContext.request.contextPath}/student/js/vfs_fonts.js"></script>
    <script src="${pageContext.request.contextPath}/student/js/custom.js"></script>

  <!-- Main JS File -->
  <script src="${pageContext.request.contextPath}/student/js/main.js"></script>
  

</body>

</html>