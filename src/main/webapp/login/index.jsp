<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,java.sql.*" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.google.gson.JsonObject" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
	<script>
        function redirectToStudentIndex() {
            window.location.href = "../student/index.html";
        }
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login/style.css" />
    <title>SV HAUI</title>
	<!-- Favicons -->
  <link href="${pageContext.request.contextPath}/login/img/logo.jpg" rel="icon">
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="login" method="post" class="sign-in-form">
        <h2 class="title">Đăng nhập</h2>
        <%-- Hiển thị thông báo lỗi nếu có --%>
        <c:if test="${not empty requestScope.error}">
            <p style="color: red;"><%= request.getAttribute("error") %></p>
        </c:if>
        <div class="input-field">
            <i class="fas fa-user"></i>
            <input type="text" placeholder="Tên đăng nhập" id="username" name="username" required="required"/>
        </div>
        <div class="input-field">
            <i class="fas fa-lock"></i>
            <input type="password" placeholder="Mật khẩu" id="password" name="password" required="required"/>
        </div>
        
        <div class="flex-sb-m w-full p-t-3 p-b-32">
            <div class="contact100-form-checkbox">
                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                <label class="label-checkbox100" for="ckb1">
                    Remember me
                </label>
            </div>
            <div>
                <a href="#" class="txt1">
                    Forgot Password?
                </a>
            </div>
        </div>
        
        <input type="submit" value="Đăng nhập" class="btn solid" />
    </form>
          <form action="#" class="sign-up-form">
            <h2 class="title">Đăng ký</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Tên đăng nhập" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Mật khẩu" />
            </div>
            <input type="submit" class="btn" value="Đăng ký" />
            <p class="social-text">Hoặc đăng ký với</p>
            <div class="social-media">
              <a href="#" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Bạn chưa có tài khoản?</h3>
            <p>
              
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Đăng ký
            </button>
          </div>
          <img src="${pageContext.request.contextPath}/login/img/log.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>Bạn đã có tài khoản?</h3>
            <p>
              
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Đăng nhập
            </button>
          </div>
          <img src="${pageContext.request.contextPath}/login/img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="${pageContext.request.contextPath}/login/app.js"></script>
  </body>
</html>
