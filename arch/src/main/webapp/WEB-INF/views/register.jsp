<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
	<link rel="stylesheet" href="/resources/css/style.css">
    <title>Hello, world!</title>
  </head>
  <body>
    
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="#">ArchMES</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-link" href="#">종합화면 <span class="sr-only">(current)</span></a>
				<a class="nav-link" href="#">연구개발</a>
				<a class="nav-link" href="#">영업관리</a>
				<a class="nav-link" href="#">구매자재</a>
				<a class="nav-link" href="#">생산관리</a>
				<a class="nav-link" href="#">공정관리</a>
				<a class="nav-link active" href="/register">품질관리<span class="sr-only">(current)</span></a>
				<a class="nav-link" href="#">예산관리</a>
				<a class="nav-link" href="#">회계관리</a>
				<a class="nav-link" href="#">인사관리</a>
				<a class="nav-link" href="#">급여관리</a>
			</div>
		</div>
	</nav>
	<div style="width: 100%; height: 30px;">
		<div class="top_left" style="float: left;">
		<b>검사자재등록: Qco9010</b>
		</div>
		<div class="top_right" style="float: right; display: table-cell; vertical-align: middle;">
			<button type="button" class="btn btn-outline-primary btn-sm">검색</button>
			<button type="button" class="btn btn-outline-primary btn-sm">초기화</button>
			<button type="button" class="btn btn-outline-primary btn-sm">저장</button>
			<button type="button" class="btn btn-outline-primary btn-sm">취소</button>
			<button type="button" class="btn btn-outline-primary btn-sm">엑셀</button>
			<button type="button" class="btn btn-outline-primary btn-sm">Help</button>
		</div>
	</div>
	
	<div class="input-group input-group-sm mb-3">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm">자재코드</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autofocus="autofocus">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm">자재명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm">구매업체명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm">수입검사자</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	
	<div style="width: 100%; height: 30px;">
		<div class="top_left" style="float: left;">
			<b>검사자재등록</b>
		</div>
		<div class="top_right" style="float: right; display: table-cell; vertical-align: middle;">
			<button type="button" class="btn btn-outline-primary btn-sm">추가</button>
			<button type="button" class="btn btn-outline-primary btn-sm">삭제</button>
		</div>
	</div>
	
	<div class="input-group input-group-sm mb-1">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재코드</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매자</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매자명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매부서</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group input-group-sm mb-1">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매부서명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매업체</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매업체명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">수입검사자</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">현재고</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group input-group-sm mb-5" style="width: 60%">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매단가</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">검사여부</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">폐기여부</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	
	
	
	
	<div class="table-responsive">
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th scope="col">#</th>
		      <th scope="col">St</th>
		      <th scope="col">자재코드</th>
		      <th scope="col">자재명</th>
		      <th scope="col">구매자</th>
		      <th scope="col">구매자명</th>
		      <th scope="col">구매부서</th>
		      <th scope="col">구매부서명</th>
		      <th scope="col">구매업체</th>
		      <th scope="col">구매업체명</th>
		      <th scope="col">수입검사자</th>
		      <th scope="col">현재고</th>
		      <th scope="col">구매단가</th>
		      <th scope="col">검사여부</th>
		      <th scope="col">폐기여부</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${register}" var="board">
		  	<c:set var="i" value="${i+1}"/>
			<tr>
				<td>${i}</td>
				<td></td>
				<td>${board.item_code}</td>
				<td>${board.item_name}</td>
				<td>${board.purch_user}</td>
				<td>${board.purch_user_name}</td>
				<td>${board.purch_dept}</td>
				<td>${board.purch_dept_name}</td>
				<td>${board.vendor}</td>
				<td>${board.vendor_name}</td>
				<td>${board.income_insp_user}</td>
				<td>${board.current_stock}</td>
				<td>${board.purch_price}</td>
				<td>${board.insp_f}</td>
				<td>${board.deletion_f}</td>
			</tr>
		  </c:forEach>
		  
		  
		 <!--  <tbody>
		    <tr>
		      <th scope="row">1</th>
		      <td>Mark</td>
		      <td>Otto</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		      <td>@mdo</td>
		    </tr>
		    <tr>
		      <th scope="row">2</th>
		      <td>Jacob</td>
		      <td>Thornton</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		      <td>@fat</td>
		    </tr>
		  </tbody> -->
		  </tbody>
		</table>
	</div>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
  </body>
</html>