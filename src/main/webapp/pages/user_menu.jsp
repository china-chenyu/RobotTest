<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>机器人大赛报名</title>
<script src="" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"
	type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/css/stylesheet.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/swiper.min.css"
	type="text/css" rel="stylesheet" media="screen">
<script src="${pageContext.request.contextPath}/js/swiper.min.js"
	type="text/javascript"></script>
</head>
<body>
	<nav id="top">
	<div class="container">
		<div class="pull-left"></div>
		<div id="top-links" class="nav pull-right">
			<ul class="list-inline">
				<li><a href="${pageContext.request.contextPath}/pages/teacher_login.jsp"
					title="去登录"><i class="fa fa-shopping-bag"></i> <span
						class="hidden-xs hidden-sm hidden-md">去登录</span></a></li>
			</ul>
		</div>
	</div>
	</nav>
	<header>
	<div class="container">
		<%--<div class="row">
			<div class="col-md-3 col-sm-12 col-xs-12">
				<div id="logo">
						<a href=""><img src="${pageContext.request.contextPath}/img/20190316230817.png" title="xxx" alt="xxxxx" class="img-responsive"></a>
					</div>
			</div>
		</div>--%>
	</div>
	</header>
	<nav id="menu" class="navbar">
	<div class="container">
		<div class="row">
			<div class="navbar-header visible-xs visible-sm">
				<button type="button" class="btn btn-primary mobile-search">
					<i class="fa fa-search"></i>
				</button>
				<button type="button" class="btn btn-navbar mobile-nav-icon">
					<i class="fa fa-bars"></i>
				</button>
			</div>
			<div class="side-menu">
				<div id="search" class="input-group hidden-lg hidden-md">
					<input type="text" name="search" value="" placeholder="搜索"
						class="form-control">
					<button type="button" class="btn btn-primary">
						<i class="fa fa-search"></i>
					</button>
				</div>
				<div class="side-title hidden-lg hidden-md"></div>
				<ul class="nav navbar-nav">
					<li><a href="${pageContext.request.contextPath}/pages/index.jsp">首页</a></li>
					<li><a href="${pageContext.request.contextPath}/index/findAllNotice">关于竞赛</a></li>
					<li><a href="${pageContext.request.contextPath}/index/findAllRule">比赛项目</a></li>
					<li><a href="${pageContext.request.contextPath}/pages/index.jsp">精彩影像</a></li>

				</ul>
			</div>
		</div>
	</div>
	</nav>
</body>

</html>