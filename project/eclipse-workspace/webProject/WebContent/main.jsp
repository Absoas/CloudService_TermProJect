<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<style>
#topMenu {
	height: 30px; /* 메인 메뉴의 높이 */
	width: 850px; /* 메인 메뉴의 넓이 */
}

#topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */
	list-style-type: none; /* 메인 메뉴 안의 ul 내부의 목록 표시를 없애줌 */
	margin: 0px; /* 메인 메뉴 안의 ul의 margin을 없앰 */
	padding: 0px; /* 메인 메뉴 안의 ul의 padding을 없앰 */
}

#topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */
	color: white; /* 글씨 색을 흰색으로 설정 */
	float: left; /* 왼쪽으로 나열되도록 설정 */
	line-height: 30px; /* 텍스트 한 줄의 높이를 30px로 설정 */
	vertical-align: middle; /* 세로 정렬을 가운데로 설정 */
	text-align: center; /* 텍스트를 가운데로 정렬 */
	position: relative; /* 해당 li 태그 내부의 top/left 포지션 초기화 */
}

.menuLink, .submenuLink { /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */
	text-decoration: none; /* a 태그의 꾸밈 효과 제거 */
	display: block; /* a 태그의 클릭 범위를 넓힘 */
	width: 150px; /* 기본 넓이를 150px로 설정 */
	font-size: 12px; /* 폰트 사이즈를 12px로 설정 */
	font-weight: bold; /* 폰트를 굵게 설정 */
	font-family: "Trebuchet MS", Dotum; /* 기본 폰트를 영어/한글 순서대로 설정 */
}

.menuLink { /* 상위 메뉴의 글씨색을 흰색으로 설정 */
	color: white;
}

.topMenuLi:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */
	color: black; /* 글씨 색 빨간색 */
	background-color: #6ADCBD; /* 배경색을 밝은 회색으로 설정 */
}

.submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */
	color: #6ADCBD; /* 글씨 색을 RGB(2D2D2D)로 설정 */
	background-color: white; /* 배경색을 흰색으로 설정 */
	border: solid 1px black; /* 테두리를 설정 */
	margin-top: -1px; /* 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */
}

.longLink { /* 좀 더 긴 메뉴 스타일 설정 */
	width: 190px; /* 넓이는 190px로 설정 */
}

.submenu { /* 하위 메뉴 스타일 설정 */
	position: absolute; /* html의 flow에 영향을 미치지 않게 absolute 설정 */
	height: 0px; /* 초기 높이는 0px로 설정 */
	overflow: hidden; /* 실 내용이 높이보다 커지면 해당 내용 감춤 */
	transition: height .2s; /* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(기본) */
	-webkit-transition: height .2s;
	/* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 크롬/사파라ㅣ) */
	-moz-transition: height .2s;
	/* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 파폭) */
	-o-transition: height .2s;
	/* height를 변화 시켰을 때 0.2초간 변화 되도록 설정(구버전 오페라) */
}

.topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */
	height: 93px; /* 높이를 93px로 설정 */
}

.submenuLink:hover { /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */
	color: black; /* 글씨색을 빨간색으로 설정 */
	background-color: #FFFFFF; /* 배경을 RGB(DDDDDD)로 설정 */
}
</style>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords"
	content="Bootstrap, Parallax, Template, Registration, Landing">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="author" content="Grayrids">
<title>Wellfare</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/line-icons.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/nivo-lightbox.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/slicknav.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/responsive.css">

</head>

<body>

	<!-- Header Section Start -->
	<header id="hero-area" data-stellar-background-ratio="0.5">
		<!-- Navbar Start -->
		<nav class="navbar navbar-expand-lg fixed-top scrolling-navbar indigo">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<a href="main.jsp" class="navbar-brand"><img class="img-fulid"
						src="img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#main-navbar" aria-controls="main-navbar"
						aria-expanded="false" aria-label="Toggle navigation">
						<i class="lnr lnr-menu"></i>
					</button>
				</div>
				  <div class="collapse navbar-collapse" id="main-navbar">
				<div align="center" style="height: 30px;">
					<nav id="topMenu">
						<ul>
							<li class="topMenuLi"><a class="menuLink" href="#">회원가입한
									리스트</a>
								<ul class="submenu">
									<li><a class="submenuLink longLink"
										href="control.jsp?action=list">회원가입 유저 목록</a></li>
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink" href="#">환자리스트</a>
								<ul class="submenu">
									<li><a class="submenuLink longLink"
										href="control.jsp?action=list1">전체 리스트</a></li>
									<li><a class="submenuLink longLink"
										href="control.jsp?action=list2">팀팀 리스트</a></li>
							
								</ul></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink" href="#">환자 데이터 보기</a>
							</li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink" href="#">LECTURES</a></li>
							<li>|</li>
							<li class="topMenuLi"><a class="menuLink" href="#">LECTURES</a></li>
						</ul>
					</nav>

				</div>
				</div>
			</div>
		</nav>
		<!-- Navbar End -->
		<div class="container">
			<div class="row justify-content-md-center">
				<div class="col-md-10">
					<div class="contents text-center">
						<h1 class="wow fadeInDown" data-wow-duration="1000ms"
							data-wow-delay="0.3s">welcome to "WELLFARE"</h1>
						<p class="lead  wow fadeIn" data-wow-duration="1000ms"
							data-wow-delay="400ms">WELLFARE WELL+WELFARE</p>

					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Header Section End -->


	<!-- jQuery first, then Tether, then Bootstrap JS. -->
	<script src="js/jquery-min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.mixitup.js"></script>
	<script src="js/nivo-lightbox.js"></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/jquery.nav.js"></script>
	<script src="js/scrolling-nav.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/wow.js"></script>
	<script src="js/jquery.vide.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/main.js"></script>

</body>
</html>