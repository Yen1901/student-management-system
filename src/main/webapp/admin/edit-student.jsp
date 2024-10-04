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
    <link rel="icon" type="image/jpg" sizes="16x16" href="${pageContext.request.contextPath}/admin/images/logo.jpg">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
	<!-- Datatable -->
    <link href="${pageContext.request.contextPath}/admin/vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/style.css">

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
                                <a class="nav-link bell ai-icon" href="${pageContext.request.contextPath}/admin/#" role="button" data-toggle="dropdown">
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
                                                <a href="${pageContext.request.contextPath}/admin/#">
                                                    <p><strong>Khánh</strong> đã tạo một <strong>tài khoản</strong> thành công
                                                    </p>
                                                </a>
                                            </div>
                                            <span class="notify-time">9:30 AM</span></span>
                                        </li>
                                        <li class="media dropdown-item">
                                            <span class="primary"><i class="ti-settings"></i></span>
                                            <div class="media-body">
                                                <a href="${pageContext.request.contextPath}/admin/#">
                                                    <p><strong>Yến </strong> đã chỉnh sửa cài đặt hệ thống.</p>
                                                </a>
                                            </div>
                                            <span class="notify-time">10:20 AM</span>
                                        </li>
                                    </ul>
                                    <a class="all-notification" href="${pageContext.request.contextPath}/admin/#">Xem tất cả <i class="ti-arrow-right"></i></a>
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
                            <h4>Sinh viên</h4>
                        </div>
                    </div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/index.jsp">Trang chủ</a></li>
                            <li class="breadcrumb-item active"><a href="${pageContext.request.contextPath}/admin/javascript:void(0);">Sinh viên</a></li>
                        </ol>
                    </div>
                </div>	
				<div class="row mx-0">
				    <div class="">
				        <div class="card">
				            <div class="card-body">
				                <div class="profile-tab">
				                    <div class="custom-tab-1">
				                        <ul class="nav nav-tabs">
				                            <li class="nav-item">
				                                <a href="#my-posts" data-toggle="tab" class="nav-link active show">Chỉnh sửa</a>
				                            </li>
				                        </ul>
				                        <div class="tab-content">
										    <div id="my-posts" class="tab-pane fade active show">
										        <form action="${pageContext.request.contextPath}/editstudent" method="post" class="profile-form row gy-3 gy-xxl-4 pt-3 pb-3" style="font-size: 1rem;font-weight: 500;height:400px;overflow-y: auto;">
										            <input type="hidden" name="studentID" value="${st.studentID}">
										
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputFirstName" class="form-label">Mã sinh viên</label>
										                <input type="text" class="form-control" id="studentCode" name="studentCode" value="${st.studentCode}" readonly="readonly">
										            </div>
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputLastName" class="form-label">Họ tên</label>
										                <input type="text" class="form-control" id="studentName" name="studentName" value="${st.studentName}" required>
										            </div>
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputEducation" class="form-label">Quê quán</label>
										                <input type="text" class="form-control" id="studentHomeTown" name="studentHomeTown" value="${st.studentHomeTown}" required>
										            </div>
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputPhone" class="form-label">Ngày sinh</label>
										                <input type="date" class="form-control" id="studentDob" name="studentDob" value="${st.studentDob}" required oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Vui lòng nhập thông tin ngày sinh với kiểu date')">
										            </div>
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputEmail" class="form-label">CCCD</label>
										                <input type="text" class="form-control" id="studentCCCD" name="studentCCCD" value="${st.studentCCCD}" required pattern="\d+" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Vui lòng nhập kiểu số')">
										            </div>
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputLastName" class="form-label">Quốc tịch</label>
										                <input type="text" class="form-control" id="studentNational" name="studentNational" value="${st.studentNational}" required>
										            </div>
										            <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputEducation" class="form-label">Tôn giáo</label>
										                <input type="text" class="form-control" id="studentReligion" name="studentReligion" value="${st.studentReligion}" required>
										            </div>
										             <div class="col-12 col-md-6 pb-3 pt-3">
										                <label for="inputPhone" class="form-label">Số điện thoại</label>
										                <input type="text" class="form-control" id="studentPhone" name="studentPhone" value="${st.studentPhone}" required pattern="\d+" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Vui lòng nhập kiểu số')">
										            </div>
										            <div class="col-12" style="text-align: end;">
										                <button type="button" class="btn btn-default waves-effect" onclick="window.location.href='${pageContext.request.contextPath}/showstudent'">Hủy</button>
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
    <script src="${pageContext.request.contextPath}/admin/vendor/global/global.min.js"></script>
	<script src="${pageContext.request.contextPath}/admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/custom.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/dlabnav-init.js"></script>	
	
	<!-- Datatable -->
    <script src="${pageContext.request.contextPath}/admin/vendor/datatables/js/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/plugins-init/datatables.init.js"></script>
	
    <!-- Svganimation scripts -->
    <script src="${pageContext.request.contextPath}/admin/vendor/svganimation/vivus.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/vendor/svganimation/svg.animation.js"></script>
    <script src="${pageContext.request.contextPath}/admin/js/styleSwitcher.js"></script>
	
	<!--Function scripts-->
	<script src="${pageContext.request.contextPath}/admin/js/scripts.js"></script>
</body>
</html>