<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>새글등록</title>
<style> 
html, body, form, fieldset, legend, ol, li {
	margin: 20px auto 0;
	padding: 0;
	}

body {
	background: #ffffff;
	color: #111111;
	font-family: 맑은고딕,굴림,돋움;
	padding: 20px;	
}

form {
    background: #9cbc2c;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	counter-reset: fieldsets;
	padding: 20px;
	width: 400px;	
}

		
form fieldset {
	border: none;
	margin-bottom: 10px;
}
		
form fieldset:last-of-type {
	margin-bottom: 0;
}
			
form legend {
	color: #384313;
	font-size: 16px;
	font-weight: bold;
	padding-bottom: 10px;
	text-shadow: 0 1px 1px #c0d576;
}
				
form > fieldset > legend:before {
	content: "Step " counter(fieldsets) ": ";
	counter-increment: fieldsets;
}
				
form fieldset fieldset legend {
	color: #111111;
	font-size: 13px;
	font-weight: normal;
	padding-bottom: 0;
}
			
form ol li {
	background: #b9cf6a;
	background: rgba(255,255,255,.3);
	border-color: #e3ebc3;
	border-color: rgba(255,255,255,.6);
	border-style: solid;
	border-width: 2px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-khtml-border-radius: 5px;
	border-radius: 5px;
	line-height: 30px;
	list-style: none;
	padding: 5px 10px;
	margin-bottom: 2px;
}
							
form ol ol li {
	background: none;
	border: none;
	float: left;
}
			
form label {
	float: left;
	font-size: 13px;
	width: 110px;
}
				
form fieldset fieldset label {
	background:none no-repeat left 50%;
	line-height: 20px;
	padding: 0 0 0 30px;
	width: auto;
}
					
					
form fieldset fieldset label:hover {
	cursor: pointer;
}
				
form input:not([type=radio]) {
	background: #ffffff;
	border: none;
	-moz-border-radius: 3px;
	-webkit-border-radius: 3px;
	-khtml-border-radius: 3px;
	border-radius: 3px;
	font: italic 13px 맑은고딕,굴림,돋움;
	outline: none;
	padding: 5px;
	width: 200px;
}
					
form input:not([type=submit]):focus {
	background: #eaeaea;
}
					
				
form button {
	background: #384313;
	border: none;
	-moz-border-radius: 20px;
	-webkit-border-radius: 20px;
	-khtml-border-radius: 20px;
	border-radius: 20px;
	color: #ffffff;
	display: block;
	font: 16px 맑은고딕,굴림,돋움;
	letter-spacing: 1px;
	margin: auto;
	padding: 7px 25px;
	text-shadow: 0 1px 1px #000000;
	text-transform: uppercase;
}
					
form button:hover {
	background: #1e2506;
	cursor: pointer;
}

</style>
</head>

<body>
<form>
<fieldset>
		<legend>회원가입 정보</legend>
		<ol>
		 <li> 
			<action="write.do" method="post">
			<label for="id">아이디</label>
			<input type="text" name="id" size="20" equired autofocus/></td>
		 </li>
		 <li>
			<label for="name">이름</label>
			<input type="text" name="name" size= "20" required/>
		 </li>
		 <li>
		 	<label for="role">역할</label>
		    <input type="radio" name="role"value="admin" checked="checked"> 어드민 
			<input type="radio" name="role" value="general"> 일반사용자
		 </li>
		 <li>
			<label for="password">비밀번호</label>
			<input type="text" name="password" size= "20" required/>
		 </li>
		 </ol>
</fieldset>

<fieldset> 
			<button type="submit">사용자 등록</button>
</fieldset>

		</form>
</body>
</html>