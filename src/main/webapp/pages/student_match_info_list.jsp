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
			<jsp:include page="student_menu.jsp" />

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->

				<!-- /.content-header -->
				<section class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1>比赛报名</h1>
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
				<!-- Main content -->
				<section class="content">

					<!-- /.container-fluid -->
					<div class="container-fluid">
						<div class="row">
							<!-- left column -->
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h3 class="card-title">比赛报名</h3>
									</div>
									<!-- /.card-header -->
									<div class="card-body">
										<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                            <%--<div class="card-footer row">
                                                <a href="${pageContext.request.contextPath}/pages/admin_specialty_info_add.jsp"><button type="submit" class="btn btn-primary">添加专业</button>		</a>
                                            </div>--%>
											<div class="row">
												<div class="col-sm-12">
													<div class="card card-info col-sm-12">
													</div>
													<table id="example2" class="table table-bordered table-hover dataTable" role="grid" aria-describedby="example2_info">
														<thead>
															<tr role="row">
																<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">比赛类型</th>
																<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">比赛名称</th>
																<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">开始时间</th>
																<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">结束时间</th>
																<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">比赛地点</th>
																<th class="sorting" tabindex="0" aria-controls="example2" rowspan="1" colspan="1" aria-label="CSS grade: activate to sort column ascending">操作</th>
															</tr>
														</thead>
														<tbody>
															<c:forEach items="${list}" var="li">
																<tr role="row" class="odd">
																	<td class="sorting_1">${li.type}</td>
																	<td class="sorting_1">${li.name}</td>
																	<td class="sorting_1">${li.starttime}</td>
																	<td class="sorting_1">${li.endtime}</td>
																	<td class="sorting_1">${li.address}</td>
																	<td>
																		<a href="${pageContext.request.contextPath}/student/routeSignUpPage?matchId=${li.id}"><button type="button"  ${li.flag=='已报名'?'disabled="disabled"':''} class="btn btn-warning btn-sm">我要报名</button></a>
																	</td>
																</tr>
															</c:forEach>
														</tbody>
													</table>
												</div>
											</div>

										</div>
									</div>
									<!-- /.card-body -->
								</div>
								<!-- /.card -->
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
