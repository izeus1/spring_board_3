<%@page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--  아래 링크: css 사용을 위한 경로 설정  -->
<style>
table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #369;
	border-bottom: 3px solid #036;
}

table.type09 tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table.type09 td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}
</style>


<title>글 목록</title>
</head>

	<% String id = (String)session.getAttribute("id"); %>

<center>
	<h1>게시판 목록</h1>
	<h3></h3>
	<!-- 검색 시작 -->
	<form action="list.do" method="post">
		<table border="1" cellpadding="0" cellspacing="0" width=700px>
			<tr>
				<td align="right"><select name="searchtype">
						<option value="TITLE" />제목
						<option value="CONTENT" />내용

				</select> <input name="keyword" type="text" /> <input type="submit"
					value="검색" /></td>
			</tr>
		</table>
	</form>

	<table border=1>
		<tr>
			<td><%=id%>님 환영합니다!</td>
			<td>
				<form action="logout.do">
					<input type="submit" value="로그아웃" />
				</form>
			</td>
		</tr>
	</table>

	<!-- 검색 종료 -->
	<table class="type09" border="1" cellpadding="0" cellspacing="0"
		width=700px>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일</th>
			<th>조회수</th>
		</tr>

		<c:forEach items="${list}" var="board">
			<tr>
				<td>${board.seq}</td>
				<%-- 							<td align="left">${board.title}</td> --%>
				<td align="left"><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
				<td>${board.writer}</td>
				<td>${board.reg_date}</td>
				<td>${board.cnt}</td>
			</tr>
		</c:forEach>
	</table>


	<br>
	<div align="center" width:100%	height:50px margin:20pxauto;>
		<a href="addform.do">게시글 등록</a>&nbsp;&nbsp;&nbsp;
	</div>
</center>

</body>
</html>