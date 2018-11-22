
<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>

	<center>
		<h1>로그인</h1>
		<hr>
		<form action="login.do" method="post">
			<table class="tbl-ex" align="center"   width=400>
				<tr>
					<td bgcolor="#999">아이디</td>
					<td><input type="text" name="id"  value="id"/></td>
					
				</tr>
				<tr>
					<td bgcolor="#999">비밀번호</td>
					<td><input type="password" name="password" value="password"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="로그인" /></td>
				</tr>
			</table>
		</form>
		
		<hr>
		
		<h3> <font color="red"> </font></h3>
		
		<a href="joinform.jsp">회원가입</a>    
		<a href="findpassword.jsp">비밀번호 찾기</a>
	</center>


</body>
</html>