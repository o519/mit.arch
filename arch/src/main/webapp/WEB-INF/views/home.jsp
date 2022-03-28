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
	hi  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<a href='/material'>검사자재등록</a><br />
<a href='/characteristics'>검사항목등록</a>

</body>
</html>
