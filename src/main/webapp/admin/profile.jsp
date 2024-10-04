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
	<!-- Datatable -->
    <link href="vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
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
				    
                <div class="row page-titles mx-0">
                    <div class="col-sm-6 p-md-0">
                        <div class="welcome-text">
                            <h4>Thông tin cá nhân</h4>
                        </div>
                    </div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0);">Thông tin cá nhân</a></li>
                        </ol>
                    </div>
                </div>
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
								
				<div class="row">
					<div class="col-xl-3 col-xxl-4 col-lg-4">
						<div class="row">
							<div class="col-lg-12">
								<div class="card">
									<div class="text-center p-3 overlay-box" style="background-image: url(images/big/img1.jpg);">
										<div class="profile-photo">
											<img src="images/profile/profile.png" width="100" class="img-fluid rounded-circle" alt="">
										</div>
										<h3 class="mt-3 mb-1 text-white"><%= roleName %></h3>
									</div>
									
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header">
										<h2 class="card-title">Thông tin cá nhân</h2>
									</div>
									<div class="card-body pb-0">
										<ul class="list-group list-group-flush">
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Tên đăng nhập</strong>
												<span class="mb-0"><%= session.getAttribute("username") %></span>
											</li>
											<li class="list-group-item d-flex px-0 justify-content-between">
												<strong>Email</strong>
												<span class="mb-0"><%= session.getAttribute("email") %></span>
											</li>
											
										</ul>
									</div>
									
								</div>
							</div>
							<div class="col-lg-12">
								<div class="card">
									<div class="card-header d-block">
										<h4 class="card-title">Ưu điểm</h4>
									</div>
									<div class="card-body">
										<h6>Java
											<span class="pull-right">85%</span>
										</h6>
										<div class="progress ">
											<div class="progress-bar bg-danger progress-animated" style="width: 85%; height:6px;" role="progressbar">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
										<h6 class="mt-4">HTML, CSS
											<span class="pull-right">90%</span>
										</h6>
										<div class="progress">
											<div class="progress-bar bg-info progress-animated" style="width: 90%; height:6px;" role="progressbar">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
										<h6 class="mt-4">SQL
											<span class="pull-right">75%</span>
										</h6>
										<div class="progress">
											<div class="progress-bar bg-success progress-animated" style="width: 75%; height:6px;" role="progressbar">
												<span class="sr-only">60% Complete</span>
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
                                <div class="profile-tab">
                                    <div class="custom-tab-1">
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item"><a href="#about-me" data-toggle="tab" class="nav-link active show">Giới thiệu chung</a></li>
                                            <li class="nav-item"><a href="#my-posts" data-toggle="tab" class="nav-link">Chỉnh sửa thông tin</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div id="about-me" class="tab-pane fade active show">
                                                <div class="profile-personal-info pt-4">
                                                    <div class="row mb-4">
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                                            <h5 class="f-w-500">Tên đăng nhập <span class="pull-right">:</span>
                                                            </h5>
                                                        </div>
                                                        <div class="col-lg-9 col-md-8 col-sm-6 col-6"><span><%= session.getAttribute("username") %></span>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-4">
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                                            <h5 class="f-w-500">Họ tên <span class="pull-right">:</span>
                                                            </h5>
                                                        </div>
                                                        <div class="col-lg-9 col-md-8 col-sm-6 col-6"><span>
                                                        	<%
													            String adminName = (String) session.getAttribute("adminName");
													            if (adminName != null) {
													                out.print(adminName);
													            } else {
													                out.print("N/A");
													            }
													        %>
													                                                        </span>
                                                        </div>
                                                    </div>
                                                    <div class="row mb-4">
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                                            <h5 class="f-w-500">Email <span class="pull-right">:</span>
                                                            </h5>
                                                        </div>
                                                        <div class="col-lg-9 col-md-8 col-sm-6 col-6"><span><%= session.getAttribute("email") %></span></span>
                                                        </div>
                                                    </div>
													<div class="row mb-4">
                                                        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
                                                            <h5 class="f-w-500">Vai trò <span class="pull-right">:</span></h5>
                                                        </div>
                                                        <div class="col-lg-9 col-md-8 col-sm-6 col-6"><span>
                                                        <%= roleName %>
                                                        </span>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
											<div id="my-posts" class="tab-pane fade">
                                                <form action="#!" class="profile-form row gy-3 gy-xxl-4 pt-3 pb-3" style="font-size: 1rem;font-weight: 500;height: 686px;overflow-y: auto;">
												  <div class="col-12">
													<div class="row gy-2">
													  <label class="col-12 form-label m-0">Ảnh chân dung</label>
													  <div class="col-12 pb-3 pt-3">
														<img src="images/profile/profile.png" class="img-fluid" alt="Admin" style="width: 30%;">
													  </div>
													  <div class="col-12 pb-3">
														<a href="#;" class="btn btn-sm btn-primary" data-toggle="modal"><i class="la la-pencil"></i></a>
														<a href="#" class="btn btn-sm btn-danger" data-toggle="modal" ><i class="la la-trash-o"></i></a>

													  </div>
													</div>
												  </div>
												  <div class="col-12 col-md-6 pb-3">
													<label for="inputFirstName" class="form-label">Tên đăng nhập</label>
													<input type="text" class="form-control" id="" value="">
												  </div>
												  <div class="col-12 col-md-6 pb-3">
													<label for="inputLastName" class="form-label">Mật khẩu</label>
													<input type="text" class="form-control" id="" value="">
												  </div>
												  <div class="col-12 col-md-6 pb-3">
													<label for="inputEducation" class="form-label">Họ tên</label>
													<input type="text" class="form-control" id="" value="">
												  </div>
												  <div class="col-12 col-md-6 pb-3">
													<label for="inputPhone" class="form-label">Email</label>
													<input type="text" class="form-control" id="" value="">
												  </div>
												  <div class="col-12 col-md-6 pb-3">
													<label for="inputEmail" class="form-label">Vai trò</label>
													<input type="text" class="form-control" id="" value="">
												  </div>
												  
												  <div class="col-12"  style="text-align: end;">
													<button type="submit" class="btn btn-primary btn-profile">Lưu</button>
												  </div>
												</form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
	
	<!-- Datatable -->
    <script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="js/plugins-init/datatables.init.js"></script>
	
    <!-- Svganimation scripts -->
    <script src="vendor/svganimation/vivus.min.js"></script>
    <script src="vendor/svganimation/svg.animation.js"></script>
    <script src="js/styleSwitcher.js"></script>
	
	<!--Function scripts-->
	<script src="js/scripts.js"></script>
</body>
</html>