<%@page import="com.javalec.mysite.vo.BoardVO"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>글 상세</title>
</head>
<body>

	<center>
		<h1>게시글 상세</h1>
		<hr>
		<form action="selectone.do" method="post">

			<table border="1" cellpadding="0" cellspacing="0" width=700px>
				<tr>
					<td width=20%>제목</td>
					
<!-- 					type="text" -->
					
					<td>&nbsp;&nbsp;<input name="title"  
						disabled="disabled" value="${selectone.title}"/></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td>&nbsp;&nbsp;<input name="writer" type="text"
						disabled="disabled" value="${selectone.writer}"/></td>
				</tr>
				<tr>
					<td>내용</td>
					<td>&nbsp;&nbsp;<textarea name="content" cols="70" rows="10"
							disabled="disabled"
							>${selectone.content}</textarea>
					</td>
				</tr>
				<tr>
					<td>등록일</td>
					<td>${selectone.reg_date}</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>${selectone.cnt}</td>
				</tr>

			</table>
		</form>
		<hr>
	</center>
	<div align="center" width:100%	height:50px margin:20pxauto;>
	
	<c:if test="${sessionScope.id==selectone.id}">
		<a href="getBoard.do?seq=${selectone.seq}">변경</a>&nbsp;&nbsp;&nbsp; 
		<a href="delete.do?seq=${selectone.seq}">삭제</a>&nbsp;&nbsp;&nbsp;
		</c:if>
		
		<a href="list.do">목록</a>
		
	</div>
</body>
</html>
