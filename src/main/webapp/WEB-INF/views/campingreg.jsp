<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="resources/css/admin.css" rel="stylesheet" />
<link href="resources/css/campingreg.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp"%>
	<%@include file="sidemenu.jsp"%>

	<div id="layoutSidenav_content">
		<main>
		<form action="campRegister" method="post">
			<div class="container-fluid px-4">
				<h1 class="mt-4">캠핑장등록</h1>
				<hr>
				<div class="main-area"
					style="float: right; margin-top: 50px; margin-right: 180px;">
					캠핑장 이름 : <input type="text" id="campName" name="c_name"
						style="margin-right: 100px; margin-bottom: 70px;"> <br>
					<br> 캠핑장 주소 : <input type="text"
						style="margin-right: 20px; margin-bottom: 10px;"> <input
						type="button" value="주소검색"><br> <input type="text"
						id="campAddress" name="c_address"
						style="margin-right: 5px; margin-bottom: 20px;"> <br>
					<br>
					<p style="float: left; margin-top: 100px;">캠핑장 소개 :</p>
					<textarea id="campContent" name="c_content"
						style="resize: none; width: 400px; height: 200px; margin-left: 10px;"></textarea>
				</div>
				<div class="image-container">
					<img style="width: 500px; height: 500px; border: solid 2px black;"
						id="preview-image"
						src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image">
					<input style="display: none" type="file" id="input-image">
					<div class="button">
						<label for="input-image">사진등록</label>
					</div>
				</div>
			</div>
			<script src="resources/js/equip.js"></script>
			<div class="buttonContainer"
				style="float: right; margin-left: 500px; margin-top: 50px; margin-bottom: 50px;">
				<input type="submit" value="등록하기"
					style="background-color: black; color: white;">
			</div>
		</form>
		</main>
		<footer> </footer>
	</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/assets/demo/chart-area-demo.js"></script>
	<script src="resources/assets/demo/chart-bar-demo.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/js/datatables-simple-demo.js"></script>
</body>
</html>