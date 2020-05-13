<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
  <!-- summernote -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->

  <!-- /.navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">




    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->

      <!-- Notifications Dropdown Menu -->

      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#">

        </a>
      </li>
    </ul>
  </nav>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="${pageContext.request.contextPath}/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">机器人大赛报名</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar admin panel (optional) -->
      <!--  <div class="admin-panel mt-3 pb-3 mb-3 d-flex">
<div class="image">
<img src="dist/img/admin2-160x160.jpg" class="img-circle elevation-2" alt="admin Image">
</div>
<div class="info">
<a href="#" class="d-block">Alexander Pierce</a>
</div>
</div> -->

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
with font-awesome or any other icon font library -->
          <li   class="nav-item" >
            <a href="${pageContext.request.contextPath}/admin/findAllNotice?pageNum=1" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                比赛公告管理
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="${pageContext.request.contextPath}/admin/findAllMatch?pageNum=1" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                报名信息管理

              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="${pageContext.request.contextPath}/admin/findAllMatchUser?pageNum=1" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                报名信息审核

              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="${pageContext.request.contextPath}/admin/findAllRule?pageNum=1" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                比赛规则管理

              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="${pageContext.request.contextPath}/admin/findAllSchool?pageNum=1" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                学校管理

              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->


    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-outline card-info">
            <div class="card-header">
              <h3 class="card-title">
                比赛公告
                <small></small>
              </h3>

              <!-- tools box -->
              <div class="card-tools">
                <button type="button" class="btn btn-tool btn-sm" data-card-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                  <i class="fas fa-minus"></i></button>
                <button type="button" class="btn btn-tool btn-sm" data-card-widget="remove" data-toggle="tooltip"
                        title="Remove">
                  <i class="fas fa-times"></i></button>
              </div>
              <!-- /. tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div class="form-group row">
                <label for="" class="col-sm-1 col-form-label">标题</label>
                <div class="col-sm-6">
                  <input type="text" class="form-control" id="bt"  name="school" value="${school}"  placeholder="标题">
                </div>
              </div>
            </div>
            <div class="card-body pad">
              <div class="mb-3">
                <textarea id="some-textarea" class="textarea" placeholder="Place some text here"
                          style="width: 100%; height: 100%; font-size: 14px; line-height: 30px; border: 1px solid #dddddd; padding: 10px;"></textarea>
              </div>
              <div class="card-footer">
                <button type="button" onclick="save()" class="btn btn-info">确认</button>
              </div>
            </div>
          </div>

        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- Control Sidebar -->
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
<!-- Summernote -->
<script src="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.min.js"></script>
<script>
  $(function () {
    // Summernote
    $('.textarea').summernote()
  });
  
  function save() {
      var content = $('#some-textarea').val();
      var bt = $('#bt').val();

      $.ajax({
          type: "post",
          url: "${pageContext.request.contextPath}/admin/insertNotice",
          data: {
              info:content,
              name:bt
          },
          dataType: "html",
          success: function(result){

            window.location.href = "${pageContext.request.contextPath}/admin/findAllNotice?pageNum=1";

          }
      });
  }
  
</script>
</body>
</html>
