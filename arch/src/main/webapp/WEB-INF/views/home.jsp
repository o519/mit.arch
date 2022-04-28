<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Arch MES 프로젝트
</h1>

<P>  The time on the server is ${serverTime}. </P>

<!-- <a href='/material'>1차 - 검사자재등록</a><br />
<a href='/characteristics'>2차 - 검사항목등록</a><br />
<a href='/item_insp_char'>3차 - 자재별검사항목등록</a><br />
<a href='/lotInspResult'>4차 - Lot별 검사결과입력</a><br /><br />

<a href='/sample/all'>로그인 기능 구현 - 접근 제한 없음</a><br />
<a href='/sample/member'>로그인 기능 구현 - 로그인 사용자</a><br />
<a href='/sample/admin'>로그인 기능 구현  - 관리자 권한을 가진 사용자</a> -->

<script>
location.href='/material'
</script>

</body>
</html>
