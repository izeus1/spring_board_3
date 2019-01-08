<%@page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style>
table.type08 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	border: 1px solid #ccc;
	margin: 20px 10px;
}

table.type08 thead {
	border-right: 1px solid #ccc;
	border-left: 1px solid #ccc;
	background: #37a69b;
}

table.type08 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #fff;
}

table.type08 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #fcf1f4;
}

table.type08 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

.box {
	-moz-box-shadow:inset 0px 1px 0px 0px #9fb4f2;
	-webkit-box-shadow:inset 0px 1px 0px 0px #9fb4f2;
	box-shadow:inset 0px 1px 0px 0px #9fb4f2;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #7892c2), color-stop(1, #476e9e));
	background:-moz-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:-webkit-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:-o-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:-ms-linear-gradient(top, #7892c2 5%, #476e9e 100%);
	background:linear-gradient(to bottom, #7892c2 5%, #476e9e 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2', endColorstr='#476e9e',GradientType=0);
	background-color:#7892c2;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:7px 12px;
	text-decoration:none;
}
.box:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e), color-stop(1, #7892c2));
	background:-moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e', endColorstr='#7892c2',GradientType=0);
	background-color:#476e9e;
}
.box:active {
	position:relative;
	top:1px;
}

.green_window{
	display:-moz-inline-block;
	display:-moz-inline-box;
	display:inline-block;
	width:358px;_width /**/:372px;
	height:26px;_height /**/:40px;
	border:7px solid #3eaf0e;
	background-color:#fff
 
	} 
   

.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #3eaf0e;
	-webkit-box-shadow:inset 0px 1px 0px 0px #3eaf0e;
	box-shadow:inset 0px 1px 0px 0px #3eaf0e;
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #44c767), color-stop(1, #5cbf2a));
	background:-moz-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-webkit-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-o-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:-ms-linear-gradient(top, #44c767 5%, #5cbf2a 100%);
	background:linear-gradient(to bottom, #44c767 5%, #5cbf2a 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#44c767', endColorstr='#5cbf2a',GradientType=0);
	background-color:#44c767;
	border:1px solid #18ab29;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:9px 28px;
	text-decoration:none;
}
.myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #5cbf2a), color-stop(1, #44c767));
	background:-moz-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-webkit-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-o-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:-ms-linear-gradient(top, #5cbf2a 5%, #44c767 100%);
	background:linear-gradient(to bottom, #5cbf2a 5%, #44c767 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#5cbf2a', endColorstr='#44c767',GradientType=0);
	background-color:#5cbf2a;
}
.myButton:active {
	position:relative;
	top:1px;

select {
background-color:yellow;
font-size:15px;
}


</style>


<title>글 목록</title>
</head>

<% String id = (String)session.getAttribute("id"); %>

<%-- <center> --%>
<div style="margin: 0 auto; width: 700px">
<!-- 	<h1>게시판 목록</h1> -->
<img src="${pageContext.request.contextPath}/resources/boardlist.png">

<div border=1 align="right">
			<td>[<%=id%>]님 환영합니다!</td>
			<td>
				<form action="logout.do">
					<input class=box type="submit" value="로그아웃" />
				</form>
			</td>
	</div>

	<img src="${pageContext.request.contextPath }/resources/paradise_beach.jpg" width="700" height="400">

	<!-- 검색 시작 -->
	<form action="list.do" method="post">
	<div id="wrap" width="700" align="right">
		<td align="right"><select name="searchtype">
				<option value="TITLE" />제목
				<option value="CONTENT" />내용
		</select> <input class="green_window" name="keyword" type="text" /> <span
			class="input_text" cellpadding="0" cellspacing="0" width=700px></td>
		<td><input type="submit" value="검색" class="myButton" /></td>
		</div>
	</form>

	<!-- 검색 종료 -->
	<table class="type08" border="1" cellpadding="0" cellspacing="0"
		width=700px>
		<thead>
			<tr>
				<th scope="cols">번호</th>
				<th scope="cols">제목</th>
				<th scope="cols">작성자</th>
				<th scope="cols">등록일</th>
				<th scope="cols">조회수</th>
			</tr>
		</thead>

		<c:forEach items="${list}" var="board">
			<tr>
				<th scope="row">${board.seq}</th>
				<%-- 							<td align="left">${board.title}</td> --%>
				<td align="left"><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.reg_date}</td>
				<td>${board.cnt}</td>
			</tr>
		</c:forEach>
	</table>


	<br>
	<div align="center" width:100%	height:50pxmargin:20pxauto;>
		<a href="addform.do">게시글 등록</a>&nbsp;&nbsp;&nbsp;
	</div>
	<%-- </center> --%>
</div>

</body>
</html>