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
		<h3>사용자 등록</h3>
		<hr>
		<form action="write.do" method="post">
			<table border="1" cellpadding="0" cellspacing="0" width=700px>
				<tr>
					<td width=20%>아이디</td>
					<td>&nbsp;&nbsp;<input type="text" name="id" size="20" /></td>
				</tr>
				<tr>
					<td>이름</td>
					<td>&nbsp;&nbsp;<input type="text" name="name" size= "20" />
					</td>
				</tr>
				<tr>
					<td>역할</td>
					<td>&nbsp;&nbsp; <input type="radio" name="role"value="admin" checked="checked"> 어드민 
					<input type="radio" name="role" value="general"> 일반사용자
					</td>
				<tr>
					<td>비밀번호</td>
					<td>&nbsp;&nbsp;<input type="password" name="password"
						size="20" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="사용자 등록" /></td>
				</tr>
			</table>
		</form>
		<hr>
	</center>

</body>
</html>