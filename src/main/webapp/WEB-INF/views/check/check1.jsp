<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<h2>FORM 유효성 검사1</h2>
<form action="./check1" method="post">
	id : <input type="text" name="id" id="id" pattern="^[a-z0-9]{5-12}" maxlength="12" required/><br>
	pw : <input type="password" name="pw" id="pw" pattern="^[a-zA-Z0-9]{8,12}$" maxlength="12" required/><br>
	<button class="btn" type="submit"> 전송 </button>
</form>
</body>
</html>