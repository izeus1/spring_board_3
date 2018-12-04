<%@page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--  아래 링크: css 사용을 위한 경로 설정  -->
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
    
  
</style>


<title>글 목록</title>
</head>

	<% String id = (String)session.getAttribute("id"); %>

<%-- <center> --%>
<div style="margin: 0 auto; width:700px">
	<h1>게시판 목록</h1>
	<img src="data:image/jpeg;base64,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" width="500" height="300">
	
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

	
	<table border=1 align="right">
		<tr> 
			<td><%=id%>님 환영합니다! </td>
			<td>
				<form action="logout.do">
					<input type="submit" value="로그아웃" />
				</form>
			</td>
		</tr>
	</table>

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
	<div align="center" width:100%	height:50px margin:20pxauto;>
		<a href="addform.do">게시글 등록</a>&nbsp;&nbsp;&nbsp;
	</div>
<%-- </center> --%>
</div>

</body>
</html>