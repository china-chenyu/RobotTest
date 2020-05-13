<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
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
		<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
		<!-- Tempusdominus Bbootstrap 4 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
		<!-- iCheck -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
		<!-- JQVMap -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jqvmap/jqvmap.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
		<!-- overlayScrollbars -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
		<!-- Daterange picker -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
		<!-- summernote -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.css">
		<!-- Google Font: Source Sans Pro -->
		<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
	</head>
	<body class="hold-transition sidebar-mini layout-fixed">
		<div class="wrapper">

			<!-- Navbar -->

			<!-- /.navbar -->

			<!-- Main Sidebar Container -->
			<jsp:include page="admin_menu.jsp" />

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1>修改报名信息</h1>
							</div>
							<div class="col-sm-6">
								<%--<ol class="breadcrumb float-sm-right">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active">DataTables</li>
								</ol>--%>
							</div>
						</div>
					</div><!-- /.container-fluid -->
				</section>
				<!-- /.content-header -->

				<!-- Main content -->
				<section class="content">

					<!-- /.container-fluid -->
					<div class="container-fluid">
						<div class="row">
							<!-- left column -->
							<div class="col-md-12">
								<div class="card card-info">
									<div class="card-header">
										<h3 class="card-title">修改报名信息</h3>
									</div>
									<!-- /.card-header -->
									<!-- form start -->
									<form class="form-horizontal" action="${pageContext.request.contextPath}/admin/updateMatchsUser" method="post">
										<div class="card-body">
											<div class="form-group row">
												<label for="" class="col-sm-1 col-form-label">学校</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="school" value="${map.school}"  placeholder="学校">
													<input type="hidden" class="form-control" readonly="readonly" name="matchid" value="${map.matchid}"  placeholder="学号">
													<input type="hidden" class="form-control" readonly="readonly" name="userid" value="${map.userid}"  placeholder="学号">
													<input type="hidden" class="form-control" readonly="readonly" name="id" value="${map.id}"  placeholder="学号">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">队名</label>
												<div class="col-sm-6">
													<input type="text" class="form-control" name="processionname" value="${map.processionname}" id="inputPassword3" placeholder="队名">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">领队姓名</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="name" value="${map.name}" id="inputPassword3" placeholder="领队姓名">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">联系方式</label>
												<div class="col-sm-6">
													<input type="text" class="form-control" name="ntel" value="${map.ntel}" id="inputPassword3" placeholder="联系方式">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">团队成员</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="personnel" value="${map.personnel}" id="inputPassword3" placeholder="团队成员">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">指导教师</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="teacher" value="${map.teacher}" id="inputPassword3" placeholder="指导教师">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">联系方式</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="ttel" value="${map.ttel}" id="inputPassword3" placeholder="联系方式">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">参赛项目</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="matchs" value="${map.matchs}" id="inputPassword3" placeholder="参赛项目">
												</div>
											</div>
											<div class="form-group row">
												<label for="inputPassword3" class="col-sm-1 col-form-label">状态</label>
												<div class="col-sm-6">
													<input type="text" class="form-control"  name="state" readonly="readonly" value="${map.state}" id="inputPassword3" placeholder="参赛项目">
												</div>
											</div>

										</div>
										<!-- /.card-body -->
										<div class="card-footer">
											<button type="submit" class="btn btn-info">确认</button>
										</div>
										<!-- /.card-footer -->
									</form>
								</div>
							</div>
						</div>
						</form>
					</div>
					<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!--/.col (right) -->
		</div>
		<!-- /.row -->
		</div>
		</section>
		<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->


		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
		</div>
		<!-- ./wrapper -->

		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
		<!-- jQuery UI 1.11.4 -->
		<script src="${pageContext.request.contextPath}/plugins/jquery-ui/jquery-ui.min.js"></script>
		<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
		<script>
			$.widget.bridge('uibutton', $.ui.button)
		</script>
		<!-- Bootstrap 4 -->
		<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- ChartJS -->
		<script src="${pageContext.request.contextPath}/plugins/chart.js/Chart.min.js"></script>
		<!-- Sparkline -->
		<script src="${pageContext.request.contextPath}/plugins/sparklines/sparkline.js"></script>
		<!-- JQVMap -->
		<script src="${pageContext.request.contextPath}/plugins/jqvmap/jquery.vmap.min.js"></script>
		<script src="${pageContext.request.contextPath}/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
		<!-- jQuery Knob Chart -->
		<script src="${pageContext.request.contextPath}/plugins/jquery-knob/jquery.knob.min.js"></script>
		<!-- daterangepicker -->
		<script src="${pageContext.request.contextPath}/plugins/moment/moment.min.js"></script>
		<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
		<!-- Tempusdominus Bootstrap 4 -->
		<script src="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
		<!-- Summernote -->
		<script src="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.min.js"></script>
		<!-- overlayScrollbars -->
		<script src="${pageContext.request.contextPath}/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
		<!-- AdminLTE App -->
		<script src="${pageContext.request.contextPath}/dist/js/adminlte.js"></script>
		<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
		<script src="${pageContext.request.contextPath}/dist/js/pages/dashboard.js"></script>
		<!-- AdminLTE for demo purposes -->
		<script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
	</body>
</html>
