<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- 타이틀 -->
<title>Zest</title>

<!-- 부트스트랩 CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- 부트스트랩 슬라이더 CSS -->
<link href="css/half-slider.css" rel="stylesheet">
<!--  main css -->
<link href="css/main.css" rel="stylesheet">
</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#"> <img alt="Logo"
				src="images/logo.png">
			</a>
			<!-- 검색창 -->
			<form class="flyout-search" action="#" name="search">
				<div class="searchdiv" style="border: 2px solid #ff7200">
					<div class="inputlmg">
						<img src="images/돋보기.png" onclick='#' style="margin-left: 5px;">
						<!-- 검색 텍스트 -->
						<input type="text" name="search"
							placeholder="배우고 싶은 수업 또는 튜터를 검색해보세요!" onclick="#"
							value="
							"
							style="border-color: #ffffff00; width: 250px; outline: none;">
					</div>
				</div>
			</form>
			<!-- 토글 -->
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<!-- 최상위 메뉴 -->
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" href="#"
						style="font-family: 'Malgun Gothic'">서비스소개 <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">튜터 등록</a></li>
					<li class="nav-item"><a class="nav-link" href="#">회원 가입</a></li>
					<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- 헤더 -->
	<!-- 배너 -->
	<header>
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- Slide One -->
				<div class="carousel-item active"
					style="background-image: url('images/baner1.png'); cursor: pointer;"
					onclick="location.href='#'"></div>
				<!-- Slide Two -->
				<div class="carousel-item"
					style="background-image: url('images/baner2.png'); cursor: pointer;"
					onclick="location.href='#'"></div>
				<!-- Slide Three -->
				<div class="carousel-item"
					style="background-image: url('images/baner3.png'); cursor: pointer;"
					onclick="location.href='#'"></div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</header>
	<br>

	<!-- 메뉴바 -->
	<div class="container" align="center">
		<div class="row" style="background-color: #f0f0f0">
			<div class=col onclick="goUrl(hot)">인기수업</div>
			<div class=col onclick="goUrl(sports)">스포츠</div>
			<div class=col onclick="goUrl(beauty)">뷰티</div>
			<div class=col onclick="goUrl(music)">음악</div>
			<div class=col onclick="goUrl(cook)">요리/음식</div>
			<div class=col onclick="goUrl(design)">디자인</div>
			<div class=col onclick="goUrl(working)">실무</div>
			<div class=col onclick="goUrl(language)">외국어</div>
			<div class=col onclick="goUrl(programming)">프로그래밍</div>
			<div class=col onclick="goUrl(lifeStyle)">라이프스타일</div>
		</div>
	</div>
	<!-- 이건 뭐지..?? -->
	<script>
		function goUrl(val){
			location.href = "/view/main.jsp"
		}
	</script>

	<!-- 카테고리 -->
	<section class="py-5">
		<div class="container">
			<div class="row">
				<!-- 카테고리 사이드바  -->
				<div class="col-lg-3 class_cont">
					<h1 class="my-4">카테고리</h1>
					<div class="list-group"
						style="border: 1px solid black; height: 400px;">
						<a href="#" class="list-group-item">Category 1</a> <a href="#"
							class="list-group-item">Category 2</a> <a href="#"
							class="list-group-item">Category 3</a> <a href="#"
							class="list-group-item">Category 3</a> <a href="#"
							class="list-group-item">Category 3</a> <a href="#"
							class="list-group-item">Category 3</a>
					</div>
				</div>
				<!--  추천 수업 -->
				<div class="col-lg-9 class_cont">
					<h1 class="my-4">추천수업</h1>
					<div style="border: 1px solid black; height: 400px">
						<!-- 1순위 항목 -->
						<a>
							<div class="main_cont">1순위 내용</div>
						</a>
						<!-- 나머지 항목들 -->
						<div class="sub_cont">
							<a>
								<div class="sub"></div>
							</a> <a>
								<div class="sub"></div>
							</a> <a>
								<div class="sub"></div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 광고 -->
		<div class="ad">광고/배너</div>

		<!-- 인기 원데이 -->
		<div class="container oneday">
			<div class="oneday_head">
				<b style="font-size: x-large;">인기원데이</b> &nbsp;&nbsp;&nbsp; 깔끔하게 딱하루
			</div>

			<div id="onedayIndicators" class="carousel slide"
				style="height: 430px" data-ride="carousel">
				<!-- 화살표 파지네이션 -->
				<ol class="carousel-indicators">
					<li data-target="#onedayIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#onedayIndicators" data-slide-to="1"></li>
					<li data-target="#onedayIndicators" data-slide-to="2"></li>
				</ol>

				<!-- 슬라이드 내용 -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<div class="oneday_cont" style="margin-left: 28px;">
							<div class="image"></div>
						</div>
						<div class="oneday_cont">
							<div class="image"></div>
						</div>
						<div class="oneday_cont">
							<div class="image"></div>
						</div>
					</div>
					<div class="carousel-item">
						<div class="oneday_cont" style="margin-left: 28px;"><div class="image"></div></div>
						<div class="oneday_cont"><div class="image"></div></div>
						<div class="oneday_cont"><div class="image"></div></div>
					</div>
					<div class="carousel-item">
						<div class="oneday_cont" style="margin-left: 28px;"><div class="image"></div></div>
						<div class="oneday_cont"><div class="image"></div></div>
						<div class="oneday_cont"><div class="image"></div></div>
					</div>
				</div>

				<a class="carousel-control-prev" href="#onedayIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#onedayIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center">Copyright &copy; Your Website 2018</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>

</body>

</html>