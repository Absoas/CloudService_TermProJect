<%@page import="DO.nurse_DO"%>
<%@page import="DO.Patient_DO"%>
<%@page import="bean.Db_connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="java.util.*"%>
<!DOCTYPE HTML>
<html>
<style type="text/css">
table.table-style-two {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #3A3A3A;
	border-collapse: collapse;
}

table.table-style-two th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #517994;
	background-color: #B2CFD8;
}

table.table-style-two tr:hover td {
	background-color: #DFEBF1;
}

table.table-style-two td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #517994;
	background-color: #ffffff;
}

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
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<jsp:useBean id="datas" scope="request" class="java.util.ArrayList" />

<body>

	<div align="center" style="height: 30px;"
		style="background-color:black;">

		<nav id="topMenu" style="background-color:black;">
		<ul style="background-color: black;">
			<li class="topMenuLi"><a class="menuLink" href="main.jsp">Home</a></li>
			<li>|</li>
			<li class="topMenuLi"><a class="menuLink" href="#">회원가입한 리스트</a>
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
						href="control.jsp?action=list2">팀별 리스트</a></li>
				</ul></li>
			<li>|</li>
			<li class="topMenuLi"><a class="menuLink" href="#">환자 데이터 보기</a>
			</li>
			<li>|</li>

			<li class="topMenuLi"><a class="menuLink" href="#">LECTURES</a></li>
		</ul>
		</nav>
	</div>



<div align="center"> 
<H2>로그인:로그인 List</H2>
<HR>
<a href="login_form.jsp">로그인 화면으로</a><P>

			
		<table  class="table-style-two">
			<tr><th>아이디</th><th>이름</th><th>패스워드</th><th>폰번호</th><th>팀</th></tr>
			<%
				for(nurse_DO ab : (ArrayList<nurse_DO>) datas) {
			%>
			  <tr>
				<td><%=ab.getId() %></td>
				<td><%=ab.getName() %></td>
				<td><%=ab.getPassword() %></td>
			    <td><%=ab.getPhone() %></td>
			    <td><%=ab.getTeam() %></td> 
			  </tr>
			 <%
				}
			 %>
		</table>
</div>
</body>
</html>