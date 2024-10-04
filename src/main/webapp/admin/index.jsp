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
    <link rel="stylesheet" href="vendor/jqvmap/css/jqvmap.min.css">
	<link rel="stylesheet" href="vendor/chartist/css/chartist.min.css">
	<link rel="stylesheet" href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/skin-2.css">

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
            <a href="${pageContext.request.contextPath}/admin/index.jsp" class="brand-logo">
                <img class="logo-abbr mr-3" src="${pageContext.request.contextPath}/admin/images/logo.jpg" alt=""> SV
                HAUI
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
			
                <div class="row">
					
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-primary">
							<div class="card-body">
								<div class="media">
									<span class="mr-3">
										<i class="la la-users"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Sinh viên</p>
										<h3 class="text-white">32000</h3>
										<div class="progress mb-2 bg-white">
                                            <div class="progress-bar progress-animated bg-light" style="width: 80%"></div>
                                        </div>
										<small></small>
									</div>
								</div>
							</div>
						</div>
                    </div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-warning">
							<div class="card-body">
								<div class="media">
									<span class="mr-3">
										<i class="la la-users"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Giảng viên</p>
										<h3 class="text-white">1562</h3>
										<div class="progress mb-2 bg-white">
                                            <div class="progress-bar progress-animated bg-light" style="width: 50%"></div>
                                        </div>
										<small></small>
									</div>
								</div>
							</div>
						</div>
                    </div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-secondary">
							<div class="card-body">
								<div class="media">
									<span class="mr-3">
										<i class="la la-building"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Lớp học phần</p>
										<h3 class="text-white">256</h3>
										<div class="progress mb-2 bg-white">
                                            <div class="progress-bar progress-animated bg-light" style="width: 76%"></div>
                                        </div>
										<small></small>
									</div>
								</div>
							</div>
						</div>
                    </div>
					<div class="col-xl-3 col-xxl-3 col-sm-6">
						<div class="widget-stat card bg-danger">
							<div class="card-body">
								<div class="media">
									<span class="mr-3">
										<i class="la la-graduation-cap"></i>
									</span>
									<div class="media-body text-white">
										<p class="mb-1">Học phần</p>
										<h3 class="text-white">50000</h3>
										<div class="progress mb-2 bg-white">
                                            <div class="progress-bar progress-animated bg-light" style="width: 30%"></div>
                                        </div>
										<small></small>
									</div>
								</div>
							</div>
						</div>
                    </div>
					<div class="col-xl-6 col-xxl-6 col-sm-6">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Biểu đồ thống kê</h3>
							</div>
							<div class="card-body">
								<canvas id="barChart_2"></canvas>
							</div>
						</div>
					</div>
					<div class="col-xl-6 col-xxl-6 col-sm-6">
						<div class="card">
							<div class="card-header">
								<h3 class="card-title">Biểu đồ thống kê</h3>
							</div>
							<div class="card-body">
								 <canvas id="areaChart_1"></canvas>
							</div>
						</div>
					</div>
					<div class="col-xl-8 col-xxl-8 col-lg-8 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="card-title">nhiệm vụ</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table header-border table-hover verticle-middle">
                                        <thead>
                                            <tr>
                                                <th scope="col">STT</th>
                                                <th scope="col">nhiệm vụ</th>
                                                <th scope="col">đảm nhiệm</th>
                                                <th scope="col">trạng thái</th>
                                                <th scope="col">tiến độ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>1</th>
                                                <td>Tạo bản thống kê điểm</td>
                                                <td>Khánh</td>
                                                <td><span class="badge badge-rounded badge-primary">Hoàn thành</span></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar" style="width: 100%;" role="progressbar">
															<span class="sr-only">Hoàn thành 100%</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>2</th>
                                                <td>Chỉnh sửa danh sách tài khoản</td>
												<td>Tiến</td>
												<td><span class="badge badge-rounded badge-warning">Đang hoàn thành</span></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" style="width: 70%;" role="progressbar">
															<span class="sr-only">Hoàn thành 70%</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>3</th>
                                                <td>Tạo báo cáo tài khoản</td>
												<td>Yến</td>
												<td><span class="badge badge-rounded badge-warning">Đang hoàn thành</span></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-warning" style="width: 85%;" role="progressbar">
															<span class="sr-only">Hoàn thành 85%</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>4</th>
                                                <td>Cập nhật cài đặt hệ thống</td>
												<td>Hường</td>
												<td><span class="badge badge-rounded badge-danger">Tạm ngưng</span></td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar bg-danger" style="width: 60%;" role="progressbar">
															<span class="sr-only">Hoàn thành 60%</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-xl-4 col-xxl-4 col-lg-4 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">thông báo</h4>
                            </div>
                            <div class="card-body"> 
                                <div class="widget-todo dz-scroll" style="height:370px;" id="DZ_W_thông báo">
                                    <ul class="timeline">
                                        <li>
                                            <div class="timeline-badge primary"></div>
                                            <a class="timeline-panel text-muted mb-3 d-flex align-items-center" href="javascript:void(0);">
                                                <img class="rounded-circle" alt="image" width="50" src="images/profile/education/pic1.jpg">
												<div class="col">
													<h5 class="mb-1">Yến đã chỉnh sửa cài đặt hệ thống.</h5>
													<small class="d-block">09-06-2024 - 10:20 AM</small>
													
												</div>
											</a>
                                        </li>
                                        <li>
                                            <div class="timeline-badge warning"></div>
                                            <a class="timeline-panel text-muted mb-3 d-flex align-items-center" href="javascript:void(0);">
                                                <img class="rounded-circle" alt="image" width="50" src="images/profile/education/pic2.jpg">
												<div class="col">
													<h5 class="mb-1">Khánh đã tạo một tài khoản thành công</h5>
													<small class="d-block">09-06-2024 - 09:30 AM</small>
												</div>
											</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
						</div>
					</div>
					<div class="col-lg-12">
                        <div class="card">
							<div class="card-header">
                                <h4 class="card-title">Tài khoản</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-sm mb-0 table-striped">
                                        <thead>
                                            <tr>
												<th class="px-5 py-3">Tên tài khoản</th>
                                                <th class="py-3">Vai trò</th>
                                                <th class="py-3">Trạng thái</th>
                                                <th class="py-3">Ngày truy cập</th>
                                                <th class="py-3"></th>
                                            </tr>
                                        </thead>
                                        <tbody id="customers">
                                            <tr class="btn-reveal-trigger">
                                                <td class="p-3">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex align-items-center">
                                                            <div class="avatar avatar-xl mr-2">
                                                                <img class="rounded-circle img-fluid" src="images/avatar/5.png" width="30" alt="">
                                                            </div>
                                                            <div class="media-body">
                                                                <h5 class="mb-0 fs--1">Khoa</h5>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </td>
                                                <td class="py-2">Sinh viên</td>
                                                <td><span class="badge badge-rounded badge-primary">Hoàn thành</span></td>
                                                <td class="py-2">11-06-2024</td>
                                                <td>
                                                    <a href="edit-student.html" class="btn btn-sm btn-primary"><i class="la la-pencil"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger"><i class="la la-trash-o"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="btn-reveal-trigger">
                                                <td class="p-3">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex align-items-center">
                                                            <div class="avatar avatar-xl mr-2">
                                                                <img class="rounded-circle img-fluid" src="images/avatar/1.png" alt="" width="30">
                                                            </div>
                                                            <div class="media-body">
                                                                <h5 class="mb-0 fs--1">Tiến</h5>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </td>
                                                <td class="py-2">Admin</td>
                                                <td><span class="badge badge-rounded badge-warning">Đang hoàn thành</span></td>
                                                <td class="py-2">10-06-2024</td>
                                                <td>
                                                    <a href="edit-student.html" class="btn btn-sm btn-primary"><i class="la la-pencil"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger"><i class="la la-trash-o"></i></a>
                                                </td>
                                            </tr>
                                            <tr class="btn-reveal-trigger">
                                                <td class="p-3">
                                                    <a href="javascript:void(0);">
                                                        <div class="media d-flex align-items-center">
                                                            <div class="avatar avatar-xl mr-2">
                                                                <img class="rounded-circle img-fluid" src="images/avatar/5.png" width="30" alt="">
                                                            </div>
                                                            <div class="media-body">
                                                                <h5 class="mb-0 fs--1">Khoa</h5>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </td>
                                                <td class="py-2">Sih viên</td>
                                                <td><span class="badge badge-rounded badge-primary">Hoàn thành</span></td>
                                                <td class="py-2">10-06-2024</td>
                                                <td>
                                                    <a href="edit-student.html" class="btn btn-sm btn-primary"><i class="la la-pencil"></i></a>
                                                    <a href="javascript:void(0);" class="btn btn-sm btn-danger"><i class="la la-trash-o"></i></a>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
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

    <!-- Chart ChartJS plugin files -->
    <script src="vendor/chart.js/Chart.bundle.min.js"></script>
	
	<!-- Chart piety plugin files -->
    <script src="vendor/peity/jquery.peity.min.js"></script>
	
	<!-- Chart sparkline plugin files -->
    <script src="vendor/jquery-sparkline/jquery.sparkline.min.js"></script>
	
		<!-- Demo scripts -->
    <script src="js/dashboard/dashboard-3.js"></script>
	
	<!-- Svganimation scripts -->
    <script src="vendor/svganimation/vivus.min.js"></script>
    <script src="vendor/svganimation/svg.animation.js"></script>
    <script src="js/styleSwitcher.js"></script>
	
</body>
</html>