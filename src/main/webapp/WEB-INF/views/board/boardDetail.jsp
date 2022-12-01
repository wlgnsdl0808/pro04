<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>공지사항 글 보기</title>
	    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<header id="header">
	<!-- 헤더 부분 인클루드 -->
	<jsp:include page="../include/hd.jsp"></jsp:include>
</header>
    <div class="row column text-center">
      <h2>공지사항 상세 보기</h2>
      <hr>
      <table>
      	<tbody>

      		<tr>
      			<th>글 번호</th>
      			<td>${dto.seq }</td>
      		</tr>	
      		<tr>
      			<th>글 제목</th>
      			<td>${dto.title }</td>
      		</tr>
      		<tr>
      			<th>글 내용</th>
      			<td><p>${dto.content }</p></td>
      		</tr>
      		<tr>
      			<th>작성자</th>
      			<td>${dto.nickname }</td>
      		</tr>
      		<tr>
      			<th>작성일시</th>
      			<td>${dto.regdate }</td>
      		</tr>
      		<tr>
      			<th>읽은 횟수</th>
      			<td>${dto.visited }</td>
      		</tr>
      	</tbody>
      </table>
    </div>
    <script>
      $(document).foundation();
    </script>
    <footer id="footer" class="footer-nav row expanded collapse">
	<!-- 푸터 부분 인클루드 -->
	<jsp:include page="../include/ft.jsp"></jsp:include>
</footer>
</body>
</html>