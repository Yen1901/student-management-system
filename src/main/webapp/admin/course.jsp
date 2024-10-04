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
       <!--  <div class="dlabnav">
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
                            <h4>Chương trình đào tạo</h4>
                        </div>
                    </div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
							<li class="breadcrumb-item active"><a href="javascript:void(0);">Học phần</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0);">Chương trình đào tạo</a></li>
                        </ol>
                    </div>
                </div>
				
				
				<div class="row">
					<div class="col-lg-12">
						<ul class="nav nav-pills mb-3">
							<li class="nav-item"><a href="#list-view" data-toggle="tab" class="nav-link btn-primary mr-1 show active"><i class="la la-list-ul"></i></a></li>
							<li class="nav-item"><a href="#grid-view" data-toggle="tab" class="nav-link btn-primary"><i class="la la-th-list"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-12">
						<div class="row tab-content">
							<div id="list-view" class="tab-pane fade active show col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">Chương trình đào tạo  </h4>
										<a href="#" class="btn btn-primary" id="add-new-btn">+ Thêm mới</a>
									</div>
									
										<!--form add-->
										<!-- Modal -->
										<div class="modal fade" id="addNewModal" tabindex="-1" role="dialog" aria-labelledby="addNewModalLabel" aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title" id="addNewModalLabel"><strong>Thêm mới</strong></h4>
														<button type="button" class="close" data-dismiss="modal" aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
													</div>
													<div class="modal-body">
														<form action="#" method="post">
															<div class="row">
																
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Mã học phần</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Tên học phần</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Số tín chỉ</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Loại môn</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Ngày ban hành</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Trình độ đào tạo</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Học kỳ</label>
																		<select class="form-control">
																			<option value="">Chọn học kỳ...</option>
																			<option value="">1</option>
																			<option value="">2</option>
																			<option value="">4</option>
																			<option value="">5</option>
																			<option value="">6</option>
																			<option value="">7</option>
																			<option value="">8</option>

																		</select>
																	</div>
																</div>
																<div class="col-lg-12 col-md-12 col-sm-12">
																	<div class="form-group fallback w-100">
																		<input type="file" class="dropify" data-default-file="">
																	</div>
																</div>
															</div>
														</form>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Đóng</button>
														<button type="submit" class="btn btn-primary">Thêm</button>
													</div>
												</div>
											</div>
										</div>
									<div class="card-body">
										<div class="table-responsive table-responsive-custom">
											<table id="example3" class="display custom-table" style="min-width: 845px">
												<thead>
													<tr>
														<th></th>
														<th>Mã học phần</th>
														<th>Tên học phần</th>
														<th>Số tín chỉ</th>
														<th>Loại môn</th>
														<th>Ngày ban hành</th>
														<th>Trình độ đào tạo</th>
														<th>Học kỳ</th>
														<th></th>
														
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><img class="rounded-circle" width="35" src="images/courses/pic1.jpg" height="35" alt=""></td>
														<td><a href="javascript:void(0);"><strong>MH001</strong></a></td>
														<td>Lập trình hướng đối tượng</td>
														<td>3</td>
														<td>Bắt buộc</td>
														<td>23-05-2024</td>
														<td>Đại học</td>
														<td><a href="javascript:void(0);"><strong>3</strong></a></td>
														<td>
															<!-- Button to trigger the modal -->
															<a href="javascript:void(0);" class="btn btn-sm btn-primary edit-btn" data-toggle="modal" data-target="#editModal"><i class="la la-pencil"></i></a>

															<!-- Modal -->
															<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
																<div class="modal-dialog" role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title" id="editModalLabel"><strong>Chỉnh sửa</strong></h4>
																			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">
																			<form action="#" method="post">
																				<div class="row">
																					
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Mã học phần</label>
																							<input type="text" class="form-control">
																						</div>
																					</div>
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Tên học phần</label>
																							<input type="text" class="form-control">
																						</div>
																					</div>
																					
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Số tín chỉ</label>
																							<input type="text" class="form-control">
																						</div>
																					</div>
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Loại môn</label>
																							<input type="text" class="form-control">
																						</div>
																					</div>
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Ngày ban hành</label>
																							<input type="text" class="form-control">
																						</div>
																					</div>
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Trình độ đào tạo</label>
																							<input type="text" class="form-control">
																						</div>
																					</div>
																					<div class="col-lg-6 col-md-6 col-sm-12">
																						<div class="form-group">
																							<label class="form-label">Học kỳ</label>
																							<select class="form-control">
																								<option value="">Chọn học kỳ...</option>
																								<option value="">1</option>
																								<option value="">2</option>
																								<option value="">4</option>
																								<option value="">5</option>
																								<option value="">6</option>
																								<option value="">7</option>
																								<option value="">8</option>

																							</select>
																						</div>
																					</div>
																					<div class="col-lg-12 col-md-12 col-sm-12">
																						<div class="form-group fallback w-100">
																							<input type="file" class="dropify" data-default-file="">
																						</div>
																					</div>
																				</div>
																			</form>
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Đóng</button>
																			<button type="submit" class="btn btn-primary">Lưu</button>
																		</div>
																	</div>
																</div>
															</div>

															<!-- Button trigger modal -->
															<a href="#" class="btn btn-sm btn-danger delete-btn" data-toggle="modal" data-target="#deleteModal">
																<i class="la la-trash-o"></i>
															</a>

															<!-- Modal -->
															<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title" id="deleteModalLabel"><strong>Xác nhận xóa</strong></h4>
																		</div>
																		<div class="modal-body txt-center">
																			Bạn chắc chắn muốn xóa?
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
																			<button type="button" class="btn btn-danger" id="confirmDeleteBtn">Xóa</button>
																		</div>
																	</div>
																</div>
															</div>

															<!-- Modal for success message -->
															<div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title" id="successModalLabel"><strong>Thông báo xóa</strong></h4>
																		</div>
																		<div class="modal-body txt-center">
																			Xóa thành công!
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-primary" data-dismiss="modal">Đóng</button>
																		</div>
																	</div>
																</div>
															</div>

															<!-- Modal for error message -->
															<div class="modal fade" id="errorModal" tabindex="-1" aria-labelledby="errorModalLabel" aria-hidden="true">
																<div class="modal-dialog">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h4 class="modal-title" id="errorModalLabel"><strong>Thông báo xóa</strong></h4>
																		</div>
																		<div class="modal-body txt-center">
																			Đã xảy ra lỗi. Xóa không thành công
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-primary" data-dismiss="modal">Đóng</button>
																		</div>
																	</div>
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
							<div id="grid-view" class="tab-pane fade col-lg-12">
								<div class="row">
									<div class="col-xl-3 col-xxl-4 col-lg-4 col-md-6 col-sm-6">
										<div class="card">
											<img class="img-fluid" src="images/courses/pic1.jpg" alt="">
											<div class="card-body">
												<h4>Lập trình hướng đối tượng</h4>
												<ul class="list-group mb-3 list-group-flush">
													<li class="list-group-item px-0 border-top-0 d-flex justify-content-between"><span class="mb-0 text-muted">Mã học phần:</span>
														<a href="javascript:void(0);"><strong>MH001</strong></a></li>
													<li class="list-group-item px-0 d-flex justify-content-between">
														<span class="mb-0">Số tín chỉ:</span><strong>3</strong></li>
													<li class="list-group-item px-0 d-flex justify-content-between">
														<span class="mb-0">Ngày ban hành:</span><strong>23-05-2024</strong></li>
													<li class="list-group-item px-0 d-flex justify-content-between">
														<span class="mb-0">Học kỳ:</span><strong>3</strong></li>
													<li class="list-group-item px-0 d-flex justify-content-between">
														<span><i class="fa fa-graduation-cap text-primary mr-2"></i>Sinh viên</span><strong>+60</strong></li>
												</ul>
												<a href="${pageContext.request.contextPath}/admin/detail-course.jsp" class="btn btn-primary">Xem chi tiết</a>
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