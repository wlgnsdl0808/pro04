<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>결과4</title>
</head>
<body>
	<h2>결과4</h2>
	<div>
		<p>${member.id }</p>
		<p>${member.pw }</p>
	</div>
	<script>
		if(pw.length<5 || pw.length>12){
			alert("비밀번호의 글자수가 맞지않습니다.");
			return false;
		}
		
		var idReg = /^[a-z0-9]{5,12}$/g; //아이디 정규표현식
		if(!idReg.test(id)){
			alert("아이디 입력 형식이 아닙니다.");
			return;
		}
		
		var pwReg = /^[a-zA-Z0-9]{8,12}$/g; //아이디 정규표현식
		if(!pwReg.test(id)){
			alert("비밀번호 입력 형식이 아닙니다.");
			return;
		}
		
		location.herf = "./check3.do?id="+id+"&pw"+pw;
	</script>
</body>
</html>