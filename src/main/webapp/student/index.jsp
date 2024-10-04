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

   <!-- <header id="header" class="header d-flex align-items-center sticky-top">
    <div class="container-fluid container-xl position-relative d-flex align-items-center">

      <a href="index.html" class="logo d-flex align-items-center me-auto">
        Uncomment the line below if you also wish to use an image logo
        <img src="img/logo.png" alt="">
        <h1 class="sitename"><img src="img/logo.jpg" alt="">SV HAUI</h1>
      </a>

      <nav id="navmenu" class="navmenu">
        <ul>
          <li><a href="index.html" class="active">Trang chủ<br></a></li>
          <li><a href="course.html">Chương trình đào tạo</a></li>
          <li><a href="course_registration.html">Đăng ký học phần</a></li>
          <li class="dropdown"><a href="#"><span>Theo dõi lịch học</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="timetable.html">Thời khóa biểu</a></li>
			  <li><a href="exam_schedule.html">Lịch thi</a></li>
            </ul>
          </li>
		  <li class="dropdown"><a href="#"><span>Theo dõi KQ học tập</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
            <ul>
              <li><a href="grade.html">Kết quả học tập</a></li>
			  <li><a href="exam_result.html">Kết quả thi</a></li>
            </ul>
          </li>
        </ul>
		<ul class="navbar-nav ms-auto mb-2 mb-lg-0 profile-menu"> 
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <div class="profile-pic">
                <img src="img/team/team-1.jpg" alt="Profile Picture">
             </div>
         You can also use icon as follows:
            <i class="fas fa-user"></i>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown"style="border: none;left: -100px;">
            <li><a class="" href="student_info.html">Thông tin cá nhân</a></li>
            <li><a class="" href="setting.html">Cài đặt</a></li>
            <hr class="dropdown-divider" style="margin: 0;">
            <li><a class="" href="../login/index.html">Đăng xuất</a></li>
          </ul>
        </li>
     </ul>
		<i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
      </nav>
	  	  
    </div>
  </header> -->
<%@ include file="header.jsp" %>
  <main class="main">

    <section id="hero" class="hero section">

      <div class="info d-flex align-items-center">
        <div class="container">
          <div class="row justify-content-center" data-aos="fade-up" data-aos-delay="100">
            <div class="col-lg-12 text-center">
              <h2 class="">Chào mừng đến với SV HAUI</h2>
              <p>Giáo dục toàn diện, vì sự phát triển bền vững và hội nhập</p>
            </div>
          </div>
        </div>
      </div>

      <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

        <div class="carousel-item active">
          <img src="img/banner-1.jpg" alt="">
        </div>

        <div class="carousel-item">
          <img src="img/banner-2.jpg" alt="">
        </div>

        <div class="carousel-item">
          <img src="img/banner-3.jpg" alt="">
        </div>

        <div class="carousel-item">
          <img src="img/banner-4.jpg" alt="">
        </div>

        <div class="carousel-item">
          <img src="img/banner-5.jpg" alt="">
        </div>

        <a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
          <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
          <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

      </div>

    </section><!-- /Hero Section -->

    <!-- Why Us Section -->
    <section id="why-us" class="why-us section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2 class="">Giới thiệu</h2>

      </div><!-- End Section Title -->

      <div class="container">

        <div class="row g-0">

          <div class="col-xl-5 img-bg" data-aos="fade-up" data-aos-delay="100">
            <img src="img/gioithieu.jpg" alt="">
          </div>

          <div class="col-xl-7 slides position-relative" data-aos="fade-up" data-aos-delay="200">

            <div class="swiper">
              <script type="application/json" class="swiper-config">
                {
                  "loop": true,
                  "speed": 600,
                  "autoplay": {
                    "delay": 5000
                  },
                  "slidesPerView": "auto",
                  "centeredSlides": true,
                  "pagination": {
                    "el": ".swiper-pagination",
                    "type": "bullets",
                    "clickable": true
                  },
                  "navigation": {
                    "nextEl": ".swiper-button-next",
                    "prevEl": ".swiper-button-prev"
                  }
                }
              </script>
              <div class="swiper-wrapper">

                <div class="swiper-slide">
                  <div class="item">
                    <h3 class="mb-3">Lịch sử</h3>
					<h4 class="mb-3"></h4>
                    <p>Trải qua hơn 120 năm, ở giai đoạn nào, Trường cũng luôn được đánh giá là cái nôi đào tạo cán bộ kỹ thuật, cán bộ kinh tế hàng đầu của cả nước, nhiều cựu học sinh của Trường đã trở thành lãnh đạo cấp cao của Đảng, Nhà nước đã đi vào lịch sử như: Hoàng Quốc Việt, Nguyễn Thanh Bình, Phạm Hồng Thái, Lương Khánh Thiện...; nhiều cựu học sinh, sinh viên trở thành các cán bộ nòng cốt, nắm giữ các cương vị trọng trách của Đảng, Nhà nước, các Bộ, Ban, Ngành Trung Ương và địa phương.</p>
                  </div>
                </div><!-- End slide item -->

                <div class="swiper-slide">
                  <div class="item">
                    <h3 class="mb-3">Quy mô đào tạo</h3>
					<h4 class="mb-3"></h4>
                    <p>
					- Tổng số sinh viên đang theo học: 32.000 - 34.000 người <br/>
					- Số sinh viên đại học chính quy đang theo học: 25.447 người <br/>
					- Số sinh viên sau đại học (cao học, NCS hoặc tương đương) đang theo học: 558 người <br/>
					- Số sinh viên cao đẳng chính quy đang theo học: 601 người <br/>
					- Tỷ lệ sinh viên chính quy ra trường có việc làm sau 12 tháng kể từ ngày tốt nghiệp: 92,14% <br/>
					- Tỷ lệ sinh viên ĐH chính quy ra trường có việc làm sau 12 tháng kể từ ngày tốt nghiệp: 92,78% <br/>
					- Tỷ lệ sinh viên CĐ chính quy ra trường có việc làm sau 12 tháng kể từ ngày tốt nghiệp: 90,61% <br/>
					</p>
                  </div>
                </div><!-- End slide item -->

                <div class="swiper-slide">
                  <div class="item">
                    <h3 class="mb-3">Cơ sở vật chất</h3>
					<h4 class="mb-3"></h4>
                    <p>Đại học Công nghiệp Hà Nội xây dựng một môi trường giáo dục mở để tạo bình đẳng, cơ hội học tập, trải nghiệm và khơi dậy tài năng cho tất cả mọi người.
					Một ngôi trường hiện đại với 3 cơ sở đào tạo, có tổng diện tích gần 50 ha. <br/>
					- Cơ sở 1 tại phường Minh Khai, quận Bắc Từ Liêm, thành phố Hà Nội. <br/>
					- Cơ sở 2 được đặt tại phường Tây Tựu, quận Bắc Từ Liêm, thành phố Hà Nội. <br/>
					- Cơ sở 3 ở phường Lê Hồng Phong, thành phố Phủ Lý, tỉnh Hà Nam. <br/></p>
                  </div>
                </div><!-- End slide item -->

                <div class="swiper-slide">
                  <div class="item">
                    <h3 class="mb-3">Danh hiệu thi đua</h3>
					<h4 class="mb-3"> </h4>
                    <p>
					- Huân chương Hồ Chí Minh năm 2013 <br/>
					- Đơn vị Anh hùng Lao động thời kỳ đổi mới năm 2008 <br/>
					- 02 Huân chương Độc lập hạng Nhất năm 1998, 2003 <br/>
					- 01 Huân chương Độc lập hạng Ba năm 1996 <br/>
					- 01 Huân chương Chiến công hạng Nhất năm 1998 <br/>
					- 01 Huân chương Chiến công hạng Ba năm 1988 <br/>
					- 03 Huân chương Lao động hạng Nhất năm 1986, 1988, 2018 <br/>
					- 02 Huân chương Lao động hạng Nhì năm 1981, 1984 <br/>
					- 03 Huân chương Lao động hạng Ba năm 1968, 1978, 2002 <br/>
					- Huân chương Hữu nghị của nước CHDCND Lào năm 2018 <br/>
					</p>
                  </div>
                </div><!-- End slide item -->

              </div>
              <div class="swiper-pagination"></div>
            </div>

            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
          </div>

        </div>

      </div>

    </section><!-- /Why Us Section -->

    <!-- Counts Section -->
    <section id="counts" class="section counts">

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="row gy-4">
			<div class="col-lg-3 col-md-6">
				<div class="stats-item text-center w-100 h-100">
				  <span data-purecounter-start="0" data-purecounter-end="125" data-purecounter-duration="1" class="purecounter"></span>
				  <p class="">Năm thành lập</p>
				</div>
			</div><!-- End Stats Item -->
			<div class="col-lg-3 col-md-6">
				<div class="stats-item text-center w-100 h-100">
				  <span data-purecounter-start="0" data-purecounter-end="3" data-purecounter-duration="1" class="purecounter"></span>
				  <p class="">Cơ sở</p>
				</div>
			</div><!-- End Stats Item -->
			
			<div class="col-lg-3 col-md-6">
				<div class="stats-item text-center w-100 h-100">
				  <span data-purecounter-start="0" data-purecounter-end="1562" data-purecounter-duration="1" class="purecounter"></span>
				  <p class="">Giảng viên</p>
				</div>
			</div><!-- End Stats Item -->
			<div class="col-lg-3 col-md-6">
				<div class="stats-item text-center w-100 h-100">
				  <span data-purecounter-start="0" data-purecounter-end="34000" data-purecounter-duration="1" class="purecounter"></span>
				  <p class="">Sinh viên</p>
				</div>
			</div><!-- End Stats Item -->


          

          
        </div>

      </div>

    </section><!-- /Counts Section -->

    <!-- Courses Section -->
    <section id="courses" class="courses section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2>Chương trình đào tạo</h2>
        <p class=""></p>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row">

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
            <div class="course-item">
				<div class="course-img d-flex justify-content-center">
					<img src="img/course-1.jpg" class="img-fluid" alt="...">
				</div>

              
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <p class="category">Kì 2</p>
                  <p class="price">3.0 tín</p>
                </div>

                <h3><a href="course-detail.html">Kỹ thuật lập trình</a></h3>
                <p class="description">Học phần cung cấp cho sinh viên các kiến thức cơ bản về lập trình, các cấu trúc điều khiển, các kiểu dữ liệu cơ sở...</p>
                
              </div>
            </div>
          </div> <!-- End Course Item-->

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
            <div class="course-item">
              <div class="course-img d-flex justify-content-center">
					<img src="img/course-2.jpg" class="img-fluid" alt="...">
				</div>
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <p class="category">Kì 3</p>
                   <p class="price">3.0 tín</p>
                </div>

                <h3><a href="course-detail.html">Kiến trúc máy tính</a></h3>
                <p class="description">Mục tiêu chính là giới thiệu một số khái niệm cơ bản liên quan tới kiến trúc máy tính và nguyên lý Hệ điều hành: Kiến trúc tập lệnh của máy tính.</p>
                
              </div>
            </div>
          </div> <!-- End Course Item-->

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
            <div class="course-item">
              <div class="course-img d-flex justify-content-center">
					<img src="img/course-3.jpg" class="img-fluid" alt="...">
				</div>
              <div class="course-content">
                <div class="d-flex justify-content-between align-items-center mb-3">
                  <p class="category">Kì 3</p>
                   <p class="price">3.0 tín</p>
                </div>

                <h3><a href="course-detail.html">Lập trình hướng đối tượng</a></h3>
                <p class="description">Học phần cung cấp cho người học các kiến thức cơ bản về phương pháp lập trình hướng đối tượng với Java,... </p>
              </div>
            </div>
          </div> <!-- End Course Item-->

        </div>

      </div>

    </section><!-- /Courses Section -->
	<!-- Reports -->
	<div class="container" style="background-color: #f9f9f9;max-width: 1400px;">
	  <div class="row justify-content-center" style="width: 100%; margin: auto;">
		<div class="col-md-6 col-lg-5 mb-4">
		  <div class="card">

			<div class="filter">
			  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
			  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
				<li class="dropdown-header text-start">
				  <h6>Lọc</h6>
				</li>
				<li><a class="dropdown-item" href="#">Kỳ 1</a></li>
				<li><a class="dropdown-item" href="#">Kỳ 2</a></li>
				<li><a class="dropdown-item" href="#">Kỳ 3</a></li>
			  </ul>
			</div>

			<div class="card-body">
			  <h5 class="card-title">Kết quả học tập</h5>

			  <!-- Line Chart -->
			  <div id="reportsChart"></div>

			  <script>
				document.addEventListener("DOMContentLoaded", () => {
				  new ApexCharts(document.querySelector("#reportsChart"), {
					series: [{
					  name: 'Kỳ 1',
					  data: [31, 40, 28, 51, 42, 82, 56],
					}, {
					  name: 'Kỳ 2',
					  data: [11, 32, 45, 32, 34, 52, 41]
					}, {
					  name: 'Kỳ 3',
					  data: [15, 11, 32, 18, 9, 24, 11]
					}],
					chart: {
					  height: 350,
					  type: 'area',
					  toolbar: {
						show: false
					  },
					},
					markers: {
					  size: 4
					},
					colors: ['#4154f1', '#2eca6a', '#ff771d'],
					fill: {
					  type: "gradient",
					  gradient: {
						shadeIntensity: 1,
						opacityFrom: 0.3,
						opacityTo: 0.4,
						stops: [0, 90, 100]
					  }
					},
					dataLabels: {
					  enabled: false
					},
					stroke: {
					  curve: 'smooth',
					  width: 2
					},
					xaxis: {
					  type: 'datetime',
					  categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
					},
					tooltip: {
					  x: {
						format: 'dd/MM/yy HH:mm'
					  },
					}
				  }).render();
				});
			  </script>
			  <!-- End Line Chart -->

			</div>
		  </div>
		</div>
		<div class="col-md-6 col-lg-5 mb-4">
		  <div class="card">

			<div class="card-body">
			  <h5 class="card-title">Thời khóa biểu<span> / Hôm nay</span></h5>
			  <ul class="main">
				<li class="date">
				  <h3>02/06</h3>
				</li>
				<li class="events">
				  <ul class="events-detail">
					<li>
					  <a href="#">
						<span class="event-time">2:00pm - </span>
						<span class="event-name">Kickoff Ceremony</span>
						<br />
						<span class="event-location">Headquarters</span>
					  </a>
					</li>
					<li>
					  <a href="#">
						<span class="event-time">2:00pm - </span>
						<span class="event-name">Kickoff Ceremony</span>
						<br />
						<span class="event-location">Headquarters</span>
					  </a>
					</li>
					<li>
					  <a href="#">
						<span class="event-time">2:00pm - </span>
						<span class="event-name">Kickoff Ceremony</span>
						<br />
						<span class="event-location">Headquarters</span>
					  </a>
					</li>
				  </ul>
				</li>
			  </ul>
			</div>
		  </div>
		</div>
	  </div>
	</div>

	<!-- Features Section -->
    <section id="features" class="features section">

      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up" data-aos-delay="100">
            <div class="features-item">
			    <i class="bi bi-mortarboard" style="color: #ffbb2c;"></i>
              <h3><a href="student_info.html" class="stretched-link">Thông tin cá nhân</a></h3>
            </div>
          </div><!-- End Feature Item -->

          <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up" data-aos-delay="200">
            <div class="features-item">
			  <i class="bi bi-book" style="color: #5578ff;"></i>
              <h3><a href="course.html" class="stretched-link">Chương trình đào tạo</a></h3>
            </div>
          </div><!-- End Feature Item -->

          <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up" data-aos-delay="300">
            <div class="features-item">
			<i class="bi bi-feather" style="color: #29cc61;"></i>
              <h3><a href="course_registration.html" class="stretched-link">Đăng ký học phần</a></h3>
            </div>
          </div><!-- End Feature Item -->

          <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up" data-aos-delay="400">
            <div class="features-item">
			<i class="bi bi-card-checklist" style="color: #b20969;"></i>
              
              <h3><a href="exam_schedule.html" class="stretched-link">Theo dõi lịch thi</a></h3>
            </div>
          </div><!-- End Feature Item -->

          <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up" data-aos-delay="500">
            <div class="features-item">
			<i class="bi bi-hourglass-split" style="color: #e361ff;"></i>

              <h3><a href="timetable.html" class="stretched-link">Xem thời khóa biểu</a></h3>
            </div>
          </div><!-- End Feature Item -->

          <div class="col-lg-4 col-md-6 col-sm-12" data-aos="fade-up" data-aos-delay="600">
            <div class="features-item">
			<i class="bi bi-file-bar-graph" style="color: #b2904f;"></i>
              <h3><a href="grade.html" class="stretched-link">Kết quả học tập</a></h3>
            </div>
          </div><!-- End Feature Item -->

        </div>

      </div>

    </section><!-- /Features Section -->
	
	 <!-- Team Section -->
    <section id="team" class="team section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2 class="">Đội ngũ phát triển</h2>
      </div><!-- End Section Title -->

      <div class="container">

        <div class="row gy-4">

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <img src="img/team/team-1.jpg" class="img-fluid" alt="">
              <h4>Thái Quốc Khánh</h4>
              <span>Web Development</span>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <img src="img/team/team-2.jpg" class="img-fluid" alt="">
              <h4>Nguyễn Thị Yến</h4>
              <span>Web Development</span>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <img src="img/team/team-3.jpg" class="img-fluid" alt="">
              <h4>Ngô Anh Tiến</h4>
              <span>Web Development</span>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div><!-- End Team Member -->

          <div class="col-xl-3 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <img src="img/team/team-4.jpg" class="img-fluid" alt="">
              <h4>Nguyễn Thị Hường</h4>
              <span>Web Development</span>
              <div class="social">
                <a href=""><i class="bi bi-twitter-x"></i></a>
                <a href=""><i class="bi bi-facebook"></i></a>
                <a href=""><i class="bi bi-instagram"></i></a>
                <a href=""><i class="bi bi-linkedin"></i></a>
              </div>
            </div>
          </div><!-- End Team Member -->

        </div>

      </div>

    </section><!-- /Team Section -->


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
  <script src="js/apexcharts.min.js"></script>
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