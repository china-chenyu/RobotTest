<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>机器人大赛报名</title>
		<!-- Tell the browser to be responsive to screen width -->
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Font Awesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
		<!-- Ionicons -->
		<!-- <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"> -->
		<!-- icheck bootstrap -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
		<!-- Google Font: Source Sans Pro -->
		<!-- <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet"> -->
	</head>
	<body class="hold-transition login-page">
		<div class="login-box">
			<div class="login-logo">
				机器人大赛报名
			</div>
			<!-- /.login-logo -->
			<div class="card">
				<div class="card-body login-card-body">
					<p class="login-box-msg">学生注册</p>

					<form action="${pageContext.request.contextPath}/student/regist" method="post">
						<div class="input-group mb-3">
							<input type="text" name="username" class="form-control" placeholder="姓名">
							<div class="input-group-append">
								<div class="input-group-text">

								</div>
							</div>
						</div>
						<div class="input-group mb-3">
							<input type="password" name="password" class="form-control" placeholder="密码">
							<div class="input-group-append">
								<div class="input-group-text">

								</div>
							</div>
						</div>
						<div class="form-group">
							<select class="form-control" name="school">
								<c:forEach items="${list}" var="li">
									<option value="${li.name}">${li.name}</option>
								</c:forEach>
							</select>
						</div>
						<div class="row">
							
							<!-- /.col -->
							<div class="col-12">
								<button type="submit" onclick="ale()" class="btn btn-primary btn-block">注册</button>
							</div>

							<!-- /.col -->
						</div>
						
						<div class="row">
							
							<!-- /.col -->
							<div class="col-12" align="center" style="color: #DC3545;">
								<h3>${msg }</h3>
							</div>
							<!-- /.col -->
						</div>
					</form>

				
				<!-- /.login-card-body -->
			</div>
		</div>
		<!-- /.login-box -->

		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
		<script>
			function ale() {
				alert("注册成功！")
            }
		</script>
	</body>
</html>
