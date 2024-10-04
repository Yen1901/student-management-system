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
   <link href="${pageContext.request.contextPath}/student/https://fonts.googleapis.com/css2?family=Raleway:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="${pageContext.request.contextPath}/student/css/bootstrap.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/bootstrap-icons.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/aos.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/glightbox.min.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath}/student/css/swiper-bundle.min.css" rel="stylesheet">

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

<body class="index-page">

  <%@ include file="header.jsp" %>

  <main class="main">
  <!-- Page Title -->
    <div class="page-title" data-aos="fade">
      <div class="heading">
        <div class="container">
          <div class="row d-flex justify-content-center text-center">
            <div class="col-lg-8">
              <h1>Xin chào, <%= session.getAttribute("username") %>!</h1>
              <p class="mb-0"></p>
            </div>
          </div>
        </div>
      </div>
      <nav class="breadcrumbs">
        <div class="container">
          <ol>
            <li><a href="${pageContext.request.contextPath}/student/index.jsp">Trang chủ</a></li>
            <li class="current">Thông tin cá nhân</li>
          </ol>
        </div>
      </nav>
    </div><!-- End Page Title -->
	<% 
	   Integer roleId = (Integer) session.getAttribute("roleId");
	   String roleName = "";
	   if (roleId != null) {
	       switch (roleId) {
	           case 1:
	               roleName = "Người quản trị"; 
	               break;
	           case 2:
	               roleName = "Giảng viên"; 
	               break;
	           case 3:
	               roleName = "Sinh viên"; 
	               break;
	           default:
	               roleName = "Không xác định"; 
	               break;
	       }
	   }
	%>
	  <div class="container">
		<div class="row gy-4 gy-lg-0">
		  <div class="col-12 col-lg-4 col-xl-3">
			<div class="row gy-4">
			  <div class="col-12">
				<div class=" card-profile card widget-card border-light shadow-sm">
				  <div class="card-header text-bg-primary">Thông tin cá nhân</div>
				  <div class=" card-body">
					<div class="text-center mb-3 mt-3">
					  <img src="${pageContext.request.contextPath}/student/img/team/team-1.jpg" class="img-fluid rounded-circle" alt="Luna John">
					</div>
					<h5 class="text-center mb-1"><%= session.getAttribute("username") %></h5>
					<p class="text-center text-secondary mb-4"><%= roleName %></p>
				  </div>
				</div>
			  </div>
			  
			  
			</div>
		  </div>
		  <div class="col-12 col-lg-8 col-xl-9">
			<div class="card widget-card border-light shadow-sm"  style="height: 600px;">
			  <div class="card-body p-4">
				<ul class="nav nav-tabs" id="profileTab" role="tablist">
				  <li class="nav-item" role="presentation">
					<button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="#overview-tab-pane" type="button" role="tab" aria-controls="overview-tab-pane" aria-selected="true">Giới thiệu chung</button>
				  </li>
				  <li class="nav-item" role="presentation">
					<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Chỉnh sửa thông tin</button>
				  </li>
				</ul>
				<div class="profile-form tab-content pt-4" id="profileTabContent">
				  <div class="tab-pane fade show active" id="overview-tab-pane" role="tabpanel" aria-labelledby="overview-tab" tabindex="0">
					<div class="row g-0">
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Mã sinh viên</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentCode") != null ? session.getAttribute("studentCode") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Họ tên</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentName") != null ? session.getAttribute("studentName") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Email</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2"><%= session.getAttribute("email") %></div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Quê quán</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentHomeTown") != null ? session.getAttribute("studentHomeTown") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Ngày sinh</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentDob") != null ? session.getAttribute("studentDob") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">CCCD</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentCCCD") != null ? session.getAttribute("studentCCCD") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Quốc tịch</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentNational") != null ? session.getAttribute("studentNational") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Tôn giáo</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						 <%= session.getAttribute("studentReligion") != null ? session.getAttribute("studentReligion") : "N/A" %>
						</div>
					  </div>
					  <div class="col-5 col-md-3 bg-light border-bottom border-white border-3">
						<div class="p-2">Số điện thoại</div>
					  </div>
					  <div class="col-7 col-md-9 bg-light border-start border-bottom border-white border-3">
						<div class="p-2">
						<%= session.getAttribute("studentPhone") != null ? session.getAttribute("studentPhone") : "N/A" %>
						</div>
					  </div>
					</div>
				  </div>
				  <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
					<form action="editstudentprofile" class="profile-form row gy-3 gy-xxl-4">
					  <div class="col-12">
						<div class="row gy-2">
						  <label class="col-12 form-label m-0">Ảnh chân dung</label>
						  <div class="col-12">
							<img src="${pageContext.request.contextPath}/student/img/team/team-1.jpg" class="img-fluid" alt="Luna John" style="width: 30%;">
						  </div>
						  <div class="col-12">
							<a href="#" class="btn-profile d-inline-block bg-primary link-light lh-1 p-2 rounded">
							  <i class="bi bi-upload"></i>
							</a>
							<a href="#" class="btn-disprofile d-inline-block bg-danger link-light lh-1 p-2 rounded">
							  <i class="bi bi-trash"></i>
							</a>
						  </div>
						</div>
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputFirstName" class="form-label">Mã sinh viên</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentCode") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputLastName" class="form-label">Họ tên</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentName") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputEducation" class="form-label">Email</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("email") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputSkills" class="form-label">Quê quán</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentHomeTown") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputJob" class="form-label">Ngày sinh</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentDob") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputJob" class="form-label">CCCD</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentCCCD") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputCompany" class="form-label">Quốc tịch</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentNational") %>">
					  </div>
					  
					  <div class="col-12 col-md-6">
						<label for="inputYouTube" class="form-label">Tôn giáo</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentReligion") %>">
					  </div>
					  <div class="col-12 col-md-6">
						<label for="inputX" class="form-label">Số điện thoại</label>
						<input type="text" class="form-control" id="" value="<%= session.getAttribute("studentPhone") %>">
					  </div>
					  
					  <div class="col-12">
						<button type="submit" class="btn btn-primary btn-profile">Gửi yêu cầu cập nhật</button>
					  </div>
					</form>
				  </div>
				  
				  
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>

</section>
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
  <script src="${pageContext.request.contextPath}/student/js/apexcharts.min.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/validate.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/aos.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/glightbox.min.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/purecounter_vanilla.js"></script>
  <script src="${pageContext.request.contextPath}/student/js/swiper-bundle.min.js"></script>

  <!-- Main JS File -->
  <script src="${pageContext.request.contextPath}/student/js/main.js"></script>

</body>

</html>