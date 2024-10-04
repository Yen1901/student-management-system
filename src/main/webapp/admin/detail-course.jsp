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
    <title>Admin-SV HAUI</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/jpg" sizes="16x16" href="images/logo.jpg">
    <link rel="stylesheet" href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <!--*******************
        Preloader start
    ********************-->
    <div id="preloader">
        <div class="sk-three-bounce">
            <div class="sk-child sk-bounce1"></div>
            <div class="sk-child sk-bounce2"></div>
            <div class="sk-child sk-bounce3"></div>
        </div>
    </div>
    <!--*******************
        Preloader end
    ********************-->

    <!--**********************************
        Main wrapper start
    ***********************************-->
    <div id="main-wrapper">

        <!--**********************************
            Nav header start
        ***********************************-->
        <div class="nav-header">
            <a href="index.html" class="brand-logo">
                <img class="logo-abbr mr-3" src="images/logo.jpg" alt="">
				SV HAUI
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="search_bar dropdown">
                                <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                                    <i class="mdi mdi-magnify"></i>
                                </span>
                                <div class="dropdown-menu p-0 m-0">
                                    <form>
                                        <input class="form-control" type="search" placeholder="Tìm kiếm..." aria-label="Search">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <ul class="navbar-nav header-right">
                            <li class="nav-item dropdown notification_dropdown">
                                <a class="nav-link bell ai-icon" href="#" role="button" data-toggle="dropdown">
                                    <svg id="icon-user" xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bell">
										<path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
										<path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
									</svg>
                                    <div class="pulse-css"></div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <ul class="list-unstyled">
                                        <li class="media dropdown-item">
                                            <span class="success"><i class="ti-user"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Khánh</strong> đã tạo một <strong>tài khoản</strong> thành công
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">9:30 AM</span></span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="primary"><i class="ti-settings"></i></span>
                                            <div class="media-body">
                                                <a href="#">
                                                    <p><strong>Yến </strong> đã chỉnh sửa cài đặt hệ thống.</p>
                                                </a>
                                            </div>
                                            <span class="notify-time">10:20 AM</span>
                                        </li>
                                    </ul>
                                    <a class="all-notification" href="#">Xem tất cả <i class="ti-arrow-right"></i></a>
                                </div>
                            </li>
                             <li class="nav-item dropdown header-profile">
                                <a class="nav-link" href="#" role="button" data-toggle="dropdown">
                                    <%= session.getAttribute("username") %>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="/BTL_QLSV_JavaWeb/admin/profile.jsp" class="dropdown-item ai-icon">
                                        <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                        <span class="ml-2">Thông tin cá nhân</span>
                                    </a>
                                    <a href="/BTL_QLSV_JavaWeb/login" class="dropdown-item ai-icon">
                                        <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewbox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-log-out"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path><polyline points="16 17 21 12 16 7"></polyline><line x1="21" y1="12" x2="9" y2="12"></line></svg>
                                        <span class="ml-2">Đăng xuất</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <!-- <div class="dlabnav">
            <div class="dlabnav-scroll">
                <ul class="metismenu" id="menu">

					<li><a class="ai-icon" href="index.html" aria-expanded="false">
							<i class="la la-home"></i>
							<span class="nav-text">Trang chủ</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="account.html" aria-expanded="false">
							<i class="la la-user"></i>
							<span class="nav-text">Tài khoản</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="student.html" aria-expanded="false">
							<i class="la la-users"></i>
							<span class="nav-text">Sinh viên</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="teacher.html" aria-expanded="false">
							<i class="la la-users"></i>
							<span class="nav-text">Giảng viên</span>
						</a>
                    </li>
					<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
							<i class="la la-graduation-cap"></i>
							<span class="nav-text">Học phần</span>
						</a>
						<ul aria-expanded="false">
                            <li><a href="course.html">Chương trình đào tạo</a></li>
							<li><a href="course_registration.html">Đăng ký học phần</a></li>
                        </ul>
                    </li>
					<li><a class="ai-icon" href="class.html" aria-expanded="false">
							<i class="la la-building"></i>
							<span class="nav-text">Lớp học phần</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="grade.html" aria-expanded="false">
							<i class="la la-signal"></i>
							<span class="nav-text">Kết quả học tập</span>
						</a>
                    </li>
					<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
							<i class="la la-calendar"></i>
							<span class="nav-text">Lịch</span>
						</a>
						<ul aria-expanded="false">
                            <li><a href="timetable.html">Thời khóa biểu</a></li>
                            <li><a href="exam_schedule.html">Lịch thi</a></li>
                        </ul>
                    </li>
				</ul>
            </div>
        </div> -->
        <%@ include file="menu.jsp" %> 
        <!--**********************************
            Sidebar end
        ***********************************-->
		
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">
            <!-- row -->
            <div class="container-fluid">
				    
                <div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                        <div class="welcome-text">
                            <h4>Chi tiết học phần</h4>
                        </div>
                    </div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0);">Học phần</a></li>
                            <li class="breadcrumb-item active"><a href="course.html">Chương trình đào tạo</a></li>
							<li class="breadcrumb-item active"><a href="javascript:void(0);">Chi tiết học phần</a></li>
                        </ol>
                    </div>
                </div>
				
				<div class="row">
					<div class="col-xl-3 col-xxl-4 col-lg-4">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<img class="img-fluid" src="images/courses/pic1.jpg" alt="">
									<div class="card-body">
										<h4 class="mb-0">Lập trình hướng đối tượng</h4>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title">Thông tin</h2>
									</div>
									<div class="card-body pb-0">
										<ul class="list-group list-group-flush">
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Mã học phần</strong>
												<span class="mb-0">MH001</span>
											</li>
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Số tín chỉ</strong>
												<span class="mb-0">3</span>
											</li>
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Ngày ban hành</strong>
												<span class="mb-0">23-05-2024</span>
											</li>
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Bộ môn</strong>
												<span class="mb-0">Công nghệ phần mềm</span>
											</li>
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>GV phụ trách</strong>
												<span class="mb-0">Hoàng Quang Huy</span>
											</li>
										</ul>
									</div>
									<div class="card-footer pt-0 pb-0 text-center">
										<div class="row">
											<div class="col-4 pt-3 pb-3 border-right">
												<h3 class="mb-1 text-primary">01</h3>
												<span>Năm</span>
											</div>
											<div class="col-4 pt-3 pb-3 border-right">
												<h3 class="mb-1 text-primary">150</h3>
												<span>Sinh viên</span>
											</div>
											<div class="col-4 pt-3 pb-3">
												<h3 class="mb-1 text-primary">05</h3>
												<span>Giảng viên</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-xxl-8 col-lg-8">
						<div class="card">
							<div class="card-body">
								<h4 class="text-primary">Mô tả</h4>
								<p>
								Học phần cung cấp cho người học các kiến thức cơ bản về phương pháp lập trình hướng đối tượng với Java, các nguyên tắc của kỹ thuật lập trình hướng đối tượng như trừu tượng, đóng gói, thừa kế và đa hình. </p>
								<p>Ngoài ra, học phần còn cung cấp kiến thức về ngôn ngữ lập trình Java bao gồm các đặc trưng cơ bản của ngôn ngữ, các thư viện cơ bản và cách thức tổ chức vào/ra dữ liệu.  </p>
								<p class="pb-4">Sau khi học xong học phần này, người học có thể có các năng lực sau: Thực hiện được các kỹ thuật lập trình cơ bản với ngôn ngữ lập trình Java; Cài đặt được bài toán theo cách tiếp cận hướng đối tượng bằng ngôn ngữ lập trình Java; Triển khai được kỹ thuật tổng hợp với Java để giải quyết bài toán thực tế. </p>
								
								<h4 class="text-primary">Ngành</h4>
								<div class="profile-skills pt-2 border-bottom-1 pb-2">
									<a href="javascript:void()" class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Công nghệ thông tin</a>
									<a href="javascript:void()" class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Hệ thống thông tin</a>
									<a href="javascript:void()" class="btn btn-outline-dark btn-rounded px-4 my-3 my-sm-0 mr-3 m-b-10">Khoa học máy tính</a>
								</div>
								<div class="profile-lang pt-4 border-bottom-1 pb-4">
									<h4 class="text-primary mb-4">Ngôn ngữ lập trình</h4><a href="javascript:void()" class="text-muted pr-3 f-s-16"><i class="flag-icon flag-icon-us"></i> Java</a> 
								</div>
								<h4 class="text-primary">Yêu cầu đặc thù</h4>
								<ul class="list-group mb-3 list-group-flush">
									<li class="list-group-item border-0 px-0">Đối với sinh viên: Để được tham gia bài đánh giá cuối kỳ sinh viên phải tham gia tối thiểu 70% số giờ học cả lý thuyết và thực hành.</li>
									<li class="list-group-item border-0 px-0">Phòng học lý thuyết có máy chiếu, phòng máy có máy chiếu, máy tính có cài đặt phần mềm hỗ trợ lập trình theo ngôn ngữ được lựa chọn.</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
            </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->


        <!--**********************************
            Footer start
        ***********************************-->
       <div class="footer">
            <div class="copyright">
				<p>© Bản quyền thuộc về <a href="${pageContext.request.contextPath}/student/index.jsp" target="_blank">SV HAUI</a></p>
                <p>Được thiết kế bởi <a>Nhóm 2 - Java Web</a></p>
            </div>
        </div>
        <!--**********************************
            Footer end
        ***********************************-->

		<!--**********************************
           Support ticket button start
        ***********************************-->

        <!--**********************************
           Support ticket button end
        ***********************************-->


    </div>
    <!--**********************************
        Main wrapper end
    ***********************************-->

    <!--**********************************
        Scripts
    ***********************************-->
    <!-- Required vendors -->
    <script src="vendor/global/global.min.js"></script>
	<script src="vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="js/custom.min.js"></script>
	<script src="js/dlabnav-init.js"></script>

    <!-- Svganimation scripts -->
    <script src="vendor/svganimation/vivus.min.js"></script>
    <script src="vendor/svganimation/svg.animation.js"></script>
    <script src="js/styleSwitcher.js"></script>
	
</body>
</html>