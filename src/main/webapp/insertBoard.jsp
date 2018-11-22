<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>새글등록</title>

</head>
<body>

	<center>
		<h1>게시글 등록</h1>
		<hr>
		<form action="add.do" method="post" >
			<input type="hidden" value="${sessionScope.id}" name="id">
			<input type="hidden" name="writer" size="20" value="${sessionScope.name}"/>
			<table border="1" cellpadding="0" cellspacing="0" width=700px>

				<tr>
					<td bgcolor="#999">제목</td>
					<td>&nbsp;&nbsp;<input type="text" name="title" size="50" /></td>
				</tr>
				<tr>
					<td bgcolor="#999">작성자</td>
					<td>&nbsp;&nbsp;${sessionScope.name}</td>
				</tr>
				<tr>
					<td bgcolor="#999">내용</td>
					<td>&nbsp;&nbsp;<textarea name="content" cols="70" rows="10"></textarea></td>
				</tr>


				<tr>
					<td colspan="2" align="center"><input type="submit"
						value=" 새글 등록 " /></td>
				</tr>
			</table>
		</form>
		<hr>

	</center>
	<div align="center" width:100%	height:50px margin:20pxauto;>
		<a href="list.do">목록</a>
	</div>

</body>
</html>