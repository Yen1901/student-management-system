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
<title>Menu</title>
<!-- Favicon icon -->
   <!--  <link rel="icon" type="image/jpg" sizes="16x16" href="images/logo.jpg">
    <link rel="stylesheet" href="vendor/jqvmap/css/jqvmap.min.css">
	<link rel="stylesheet" href="vendor/chartist/css/chartist.min.css">
	<link rel="stylesheet" href="vendor/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/skin-2.css"> -->
</head>
<body>
	<div class="dlabnav">
            <div class="dlabnav-scroll">
                <ul class="metismenu" id="menu">

					<li><a class="ai-icon" href="${pageContext.request.contextPath}/admin/index.jsp" aria-expanded="false">
							<i class="la la-home"></i>
							<span class="nav-text">Trang chủ</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="${pageContext.request.contextPath}/admin/account.jsp" aria-expanded="false">
							<i class="la la-user"></i>
							<span class="nav-text">Tài khoản</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="${pageContext.request.contextPath}/showstudent" aria-expanded="false">
							<i class="la la-users"></i>
							<span class="nav-text">Sinh viên</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="${pageContext.request.contextPath}/admin/teacher.jsp" aria-expanded="false">
							<i class="la la-users"></i>
							<span class="nav-text">Giảng viên</span>
						</a>
                    </li>
					<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
							<i class="la la-graduation-cap"></i>
							<span class="nav-text">Học phần</span>
						</a>
						<ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath}/admin/course.jsp">Chương trình đào tạo</a></li>
							<li><a href="#">Đăng ký học phần</a></li>
                        </ul>
                    </li>
					<li><a class="ai-icon" href="${pageContext.request.contextPath}/admin/class.jsp" aria-expanded="false">
							<i class="la la-building"></i>
							<span class="nav-text">Lớp học phần</span>
						</a>
                    </li>
					<li><a class="ai-icon" href="${pageContext.request.contextPath}/showgrade" aria-expanded="false">
							<i class="la la-signal"></i>
							<span class="nav-text">Kết quả học tập</span>
						</a>
                    </li>
					<li><a class="has-arrow" href="javascript:void()" aria-expanded="false">
							<i class="la la-calendar"></i>
							<span class="nav-text">Lịch</span>
						</a>
						<ul aria-expanded="false">
                            <li><a href="${pageContext.request.contextPath}/admin/timetable.jsp">Thời khóa biểu</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/exam_schedule.jsp">Lịch thi</a></li>
                        </ul>
                    </li>
				</ul>
            </div>
        </div>
   
</body>
</html>