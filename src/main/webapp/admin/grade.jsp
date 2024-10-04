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
    <link rel="stylesheet"
        href="${pageContext.request.contextPath}/admin/vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <!-- Datatable -->
    <link href="${pageContext.request.contextPath}/admin/vendor/datatables/css/jquery.dataTables.min.css"
        rel="stylesheet">
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
                            <h4>Kết quả học tập</h4>
                        </div>
                    </div>
                    <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                            <li class="breadcrumb-item active"><a href="javascript:void(0);">Kết quả học tập</a></li>
                        </ol>
                    </div>
                </div>
				
				
				<div class="row">
					<div class="col-lg-12">
						<ul class="nav nav-pills mb-3">
							<li class="nav-item"><a href="#list-view" data-toggle="tab" class="nav-link btn-primary mr-1 show active"><i class="la la-list-ul"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-12">
						<div class="row tab-content">
							<div id="list-view" class="tab-pane fade active show col-lg-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">Kết quả học tập</h4>
										<a href="#" class="btn btn-primary" id="add-new-btn">+ Thêm mới</a>
									</div>
									
										<!--form add-->
										<!-- Modal -->
										<div class="modal fade" id="addNewModal" tabindex="-1" role="dialog" aria-labelledby="addNewModalLabel" aria-hidden="true">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<h4 class="modal-title" id="addNewModalLabel"><strong>Thêm mới</strong></h4>
													</div>
													<div class="modal-body">
														<form action="#" method="post">
															<div class="row">
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Mã điểm</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Mã lớp</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Mã sinh viên</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Mã học phần</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">TX1</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">TX2</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Điểm thi</label>
																		<input type="text" class="form-control">
																	</div>
																</div>
																<div class="col-lg-6 col-md-6 col-sm-12">
																	<div class="form-group">
																		<label class="form-label">Xếp loại</label>
																		<input type="text" class="form-control">
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
											<!-- Form để chọn mã lớp -->
									        <form method="get" action="showgrade" class="form-inline mb-3">
									            <label for="classId" class="mr-2">Chọn mã lớp:</label>
									            <select id="classId" name="classId" class="form-control mr-2">
									                <option value="-1">Tất cả</option>
									                <c:forEach var="id" items="${classIds}">
									                    <option value="${id}">${id}</option>
									                </c:forEach>
									            </select>
									            <button type="submit" class="btn btn-primary mr-2">Lọc</button>
									            <a href="#" class="btn btn-primary chart-btn" id="chartBtn">Xem biểu đồ</a>
									        </form>
									        
											<table id="example3" class="display custom-table" style="min-width: 845px">
												<thead>
													<tr>
														<th>Mã điểm</th>
														<th>Mã lớp</th>
														<th>Mã sinh viên</th>
														<th>Mã học phần</th>
														<th>TX1</th>
														<th>TX2</th>
														<th>Điểm thi</th>
														<th>Xếp loại</th>											
														<th></th>
														
													</tr>
												</thead>
												<tbody>
													<c:forEach var="x" items="${listG}">
														<tr>
															<td><c:out value="${x.grade_ID}" /></td>
									                        <td><c:out value="${x.class_ID}" /></td>
									                        <td><c:out value="${x.student_ID}" /></td>
									                        <td><c:out value="${x.course_ID}" /></td>
									                        <td><c:out value="${x.tx1}" /></td>
									                        <td><c:out value="${x.tx2}" /></td>
									                        <td><c:out value="${x.exam_Score}" /></td>
									                        <td><c:out value="${x.letter_Score}" /></td>
															<td>
																<!-- Button to trigger the modal -->
																<a href="javascript:void(0);" class="btn btn-sm btn-primary edit-btn" data-toggle="modal" data-target="#editModal"><i class="la la-pencil"></i></a>
																<!-- Button trigger modal -->
																<a href="#" class="btn btn-sm btn-danger delete-btn" data-toggle="modal" data-target="#deleteModal">
																	<i class="la la-trash-o"></i>
																</a>
															</td>		
														</tr>
													</c:forEach>
												</tbody>
											</table>
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
    <script
        src="${pageContext.request.contextPath}/admin/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
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