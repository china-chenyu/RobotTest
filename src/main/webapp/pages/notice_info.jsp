<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>机器人大赛报名</title>
<script src="" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/css/stylesheet.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/swiper.min.css" type="text/css" rel="stylesheet"
	media="screen">
<script src="${pageContext.request.contextPath}/js/swiper.min.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="user_menu.jsp"></jsp:include>
	<div id="product-product" class="container">

		<div class="row">
			<div id="content" class="col-sm-9">
				<div class="blog-inner">
					${map.info}
				</div>
			</div>
		</div>
	</div>



</body>
<script type="text/javascript">

</script>
</html>