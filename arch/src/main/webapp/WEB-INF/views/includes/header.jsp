<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/style.css">
	
    <title>Arch MES</title>
  </head>
  <body>
    
	<nav class="navbar navbar-expand-xl navbar-dark bg-primary">
		<a class="navbar-brand" href="/">ArchMES</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="row collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="col navbar-nav" style="white-space: nowrap;">
				<a class="nav-link" href="#">종합화면 <span class="sr-only">(current)</span></a>
				<a class="nav-link" href="#">연구개발</a>
				<a class="nav-link" href="#">영업관리</a>
				<a class="nav-link" href="#">구매자재</a>
				<a class="nav-link" href="#">생산관리</a>
				<a class="nav-link" href="#">공정관리</a>
			 	<li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle active" href="#" id="navbarScrollingDropdown" role="button" data-toggle="dropdown" aria-expanded="false">
			          	품질관리
			        </a>
			        <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
			          <li>&nbsp;&nbsp;<b>수입검사</span></b></li>
			          <li><a class="dropdown-item" href="#">수입검사등록*</a></li>
			          <li><a class="dropdown-item" href="#">수입검사현황*</a></li>
			          <li><a class="dropdown-item" href="#">수입검사분석*</a></li>
			          <li><hr class="dropdown-divider"></li>
			          <li>&nbsp;&nbsp;<b>공정품질</span></b></li>
			          <li><a class="dropdown-item" href="#">공정검사등록</a></li>
			          <li><a class="dropdown-item" href="#">입고검사등록</a></li>
			          <li><a class="dropdown-item" href="#">수리현황*</a></li>
			          <li><a class="dropdown-item" href="#">품질PPM현황*</a></li>
			          <li><a class="dropdown-item" href="#">출하검사등록*</a></li>
			          <li><hr class="dropdown-divider"></li>
			          <li>&nbsp;&nbsp;<b>검사성적서</span></b></li>
			          <li><a class="dropdown-item" href="#">검사성적서*</a></li>
			          <li><hr class="dropdown-divider"></li>
			          <li>&nbsp;&nbsp;<b>기준정보</span></b></li>
			          <!-- <li><a class="dropdown-item" href="#">검사항목관리*</a></li> -->
			          <!-- <li><a class="dropdown-item" href="#">검사표준관리*</a></li> -->
			          <li><a class="dropdown-item" href="/material">검사자재등록</a></li>
			          <li><a class="dropdown-item" href="/characteristics">검사항목등록</a></li>
			          <li><a class="dropdown-item" href="/item_insp_char">자재별검사항목등록</a></li>
			          <li><a class="dropdown-item" href="/lotInspResult">Lot별 검사결과입력</a></li>
			        </ul>
		      	</li>
				<a class="nav-link" href="#">예산관리</a>
				<a class="nav-link" href="#">회계관리</a>
				<a class="nav-link" href="#">인사관리</a>
				<a class="nav-link" href="#">급여관리</a>
			</div>
			<div class="col-right" style="margin-right: 5px;">
				<sec:authorize access="isAnonymous()">
					<a href="/login"><button class="btn btn-primary active" style="outline: none; box-shadow: none;">로그인</button></a>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<form action="/logout" method="post" onsubmit="return btn_logout()">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						<button class="btn btn-primary active" style="outline: none; box-shadow: none;"><sec:authentication property="principal.username"/></button>
					</form>
				</sec:authorize>
			</div>
		</div>
	</nav>
	<script>
		function btn_logout() {
			if(confirm("로그아웃 하시겠습니까?") == true) {
				return true;
			}else {
				return false;
			}
		}
	</script>