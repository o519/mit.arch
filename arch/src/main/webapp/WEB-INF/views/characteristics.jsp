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
	<script type="text/javascript" src="/resources/js/characteristics.js"></script>

    <title>품질관리 > 기준정보 > 검사항목등록</title>
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
			          <li><a class="dropdown-item" href="#">검사항목관리*</a></li>
			          <li><a class="dropdown-item" href="#">검사표준관리*</a></li>
			          <li><a class="dropdown-item" href="/material">검사자재등록</a></li>
			          <li><a class="dropdown-item" href="characteristics">검사항목등록</a></li>
			        </ul>
		      	</li>
				<a class="nav-link" href="#">예산관리</a>
				<a class="nav-link" href="#">회계관리</a>
				<a class="nav-link" href="#">인사관리</a>
				<a class="nav-link" href="#">급여관리</a>
			</div>
		</div>
	</nav>
	<div style="width: 100%; height: 30px;">
		<div class="top_left" style="float: left;">
		<b>검사항목등록: Qco9020</b>
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
	
	<div class="input-group input-group-sm mb-3" style="width: 50%">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm">검사항목</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm">검사항목명</span>
	  </div>
	  <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	<!-- autocomplete="off" -->
	<form id="operForm" >
	<div style="width: 100%; height: 30px;">
		<div class="top_left" style="float: left;">
			<b>검사자재등록</b>
		</div>
		<div class="top_right" style="float: right; display: table-cell; vertical-align: middle;">
			<button type="button" data-oper="register" class="btn btn-outline-primary btn-sm">추가</button>
			<button type="button" data-oper="modify" class="btn btn-outline-primary btn-sm">수정</button>
			<button type="button" data-oper="remove" class="btn btn-outline-primary btn-sm">삭제</button>
		</div>
	</div>
	<div class="input-group input-group-sm mb-1">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">검사항목</span>
	  </div>
	  <input name="insp_char" type="text" id="insp_char" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autofocus="autofocus">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">검사항목명</span>
	  </div>
	  <input name="insp_char_name"  type="text" id="insp_char_name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">정성정량</span>
	  </div>
	  <select name="qn_f" id="qn_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <option selected></option>
        <option>정성</option>
        <option>정량</option>
      </select>
	  <!-- <input name="purch_user"  type="text" id="purch_user" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"> -->
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">시료수</span>
	  </div>
	  <input name="sample_qty"  type="text" id="sample_qty" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">AC값</span>
	  </div>
	  <input name="AC"  type="text" id="AC" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">RE값</span>
	  </div>
	  <input name="RE"  type="text" id="RE" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group input-group-sm mb-1">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">USL</span>
	  </div>
	  <input name="USL"  type="text" id="USL" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">SL</span>
	  </div>
	  <input name="SL"  type="text" id="SL" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LSL</span>
	  </div>
	  <input name="LSL"  id="LSL" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">UCL</span>
	  </div>
	  <input name="UCL"  type="text" id="UCL" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">CL</span>
	  </div>
	  <input name="CL"  type="text" id="CL" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LCL</span>
	  </div>
	  <input name="LCL"  type="text" id="LCL" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group input-group-sm mb-1" style="width: 83.4%">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">단위</span>
	  </div>
	  <select name="unit" id="unit" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <option selected></option>
        <option>KG</option>
        <option>EA</option>
        <option>SET</option>
        <option>포기</option>
        <option>미터</option>
        <option>포대</option>
        <option>박스</option>
      </select>
	  <!-- <input name="unit"  type="text" id="unit" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"> -->
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">생성일</span>
	  </div>
	  <input name="create_date" id="create_date" type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <!-- <input name="insp_f"  type="text" id="insp_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"> -->
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">수정일</span>
	  </div>
	  <input name="update_date" id="update_date" type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <!-- <input name="insp_f"  type="text" id="insp_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"> -->
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">삭제일</span>
	  </div>
	  <input name="delete_date" id="delete_date" type="date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <!-- <input name="insp_f"  type="text" id="insp_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"> -->
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">폐기여부</span>
	  </div>
      <select name="deletion_f" id="deletion_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
        <option selected></option>
        <option>Y</option>
        <option>N</option>
      </select>
	  <!-- <input name="deletion_f"  type="text" id="deletion_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"> -->
	</div>
	<div class="input-group input-group-sm mb-5">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">비고</span>
	  </div>
	  <input name="etc"  type="text" id="etc" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	</form>
	
	<div class="table-responsive">
		<table id="table01" class="table table-striped">
		  <thead>
		    <tr>
			  <th><input type="checkbox" name="selectall" value="selectall" onclick="selectAll(this)"></th>
		      <th scope="col">#</th>
		      <th scope="col">St</th>
		      <th scope="col">검사항목</th>
		      <th scope="col">검사항목명</th>
		      <th scope="col">정성정량</th>
		      <th scope="col">시료수</th>
		      <th scope="col">AC값</th>
		      <th scope="col">RE값</th>
		      <th scope="col">USL</th>
		      <th scope="col">SL</th>
		      <th scope="col">LSL</th>
		      <th scope="col">UCL</th>
		      <th scope="col">CL</th>
		      <th scope="col">LCL</th>
		      <th scope="col">단위</th>
		      <th scope="col">생성자</th>
		      <th scope="col">생성일자</th>
		      <th scope="col">수정자</th>
		      <th scope="col">수정일자</th>
		      <th scope="col">삭제자</th>
		      <th scope="col">삭제일자</th>
		      <th scope="col">폐기여부</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${characteristics}" var="insp_char">
		  	<c:set var="i" value="${i+1}"/>
			<tr>
				<td><input type="checkbox" name='chkbox' value='' onclick='getCheckboxValue(event)'/></td>
				<td>${i}</td>
				<td></td>
				<td>${insp_char.insp_char}</td>
				<td>${insp_char.insp_char_name}</td>
				<td>${insp_char.qn_f}</td>
				<td>${insp_char.sample_qty}</td>
				<td>${insp_char.AC}</td>
				<td>${insp_char.RE}</td>
				<td>${insp_char.USL}</td>
				<td>${insp_char.SL}</td>
				<td>${insp_char.LSL}</td>
				<td>${insp_char.UCL}</td>
				<td>${insp_char.CL}</td>
				<td>${insp_char.LCL}</td>
				<td>${insp_char.unit}</td>
				<td>${insp_char.create_user}</td>
				<td>${insp_char.create_date}</td>
				<td>${insp_char.update_user}</td>
				<td>${insp_char.update_date}</td>
				<td>${insp_char.delete_user}</td>
				<td>${insp_char.delete_date}</td>
				<td>${insp_char.deletion_f}</td>
			</tr>
		  </c:forEach>
		  </tbody>
		</table>
	</div>
	
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<!--     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

	<script>
	const inputs = document.querySelectorAll("input");
	const total = inputs.length;
	
	const cols = 6; // 컬럼수
	//const rows = Math.ceil(total/cols); // 줄수
	
	function keyevent(event) {
		const keycode = event.keyCode;
		const idx = Array.from(document.querySelectorAll('input')).indexOf(event.target);
		
		switch (keycode) {
			case (13) : // Enter
				if(idx===(total-1)){ //enter
					//alert("폼 전송");
				}else{
					document.querySelectorAll('input')[idx+1].focus();
				}
				break;
				
	/* 		case(33) : // PageUp
				document.querySelectorAll('input')[0].focus();
				break;
			
			case(34) : // PageDown
				document.querySelectorAll('input')[total-1].focus();
				break; */
			
			case(37) : // Left
				if(idx===0){
					return false;
				}else{
					document.querySelectorAll('input')[idx-1].focus();
				}
				break;
				
			case(33) : // Up
				if(idx < cols){
					return false;
				}else{
					document.querySelectorAll('input')[idx-cols].focus();
				}
				break;
				
			case(39) : // Right
				if(idx===(total-1)){
					return false;
				}else{
					document.querySelectorAll('input')[idx+1].focus();
				}
				break;
				
			case (34) : // Down
				if(idx+cols >= total){
					return false;
				}else{
					document.querySelectorAll('input')[idx+cols].focus();
				}
				break;
			default :
				return false;
				break;
		}
	}
	
	function formCheck(e) {
		// 문제가 있으면
		// e.preventDefault();
	}
	
	document.querySelector("form").addEventListener('submit', formCheck);
	for(const item of inputs) {
		item.addEventListener('keydown', keyevent);
	}
	</script>
	<script>
	$(document).ready(function(){
		$('#qn_f').change(function() {
			var result = $('#qn_f option:selected').val();
			if (result == '정성') {
				$('#AC').attr("disabled",true).attr("readonly",false);
				$('#RE').attr("disabled",true).attr("readonly",false);
				$('#USL').attr("disabled",false).attr("readonly",false);
				$('#SL').attr("disabled",false).attr("readonly",false);
				$('#LSL').attr("disabled",false).attr("readonly",false);
			} else {
				$('#USL').attr("disabled",true).attr("readonly",false);
				$('#SL').attr("disabled",true).attr("readonly",false);
				$('#LSL').attr("disabled",true).attr("readonly",false);
				$("#AC").attr("disabled",false).attr("readonly",false); //입력가능
				$("#RE").attr("disabled",false).attr("readonly",false); //입력가능
			}
		});
		var operForm = $("#operForm");
		$("button[data-oper='remove']").on("click", function(e){
			var checkRows = $("[name='chkbox']:checked");
			for(var i=checkRows.length-1; i>-1; i--){
				checkRows.eq(i).closest('tr').remove();
			}
			/* registerService.remove(
					{
						item_code:$('input[name=item_code]').val(),

					}
					,
					function(result){
						alert("결과" + result);
						location.reload(true);
					}
			); */
		});
		$("button[data-oper='register']").on("click", function(e){
			registerService.add(
					{
						insp_char:$('input[name=insp_char]').val(),
						insp_char_name:$('input[name=insp_char_name]').val(),
						qn_f:$('select[name=qn_f]').val(),
						sample_qty:$('input[name=sample_qty]').val(),
						AC:$('input[name=AC]').val(),
						RE:$('input[name=RE]').val(),
						USL:$('input[name=USL]').val(),
						SL:$('input[name=SL]').val(),
						LSL:$('input[name=LSL]').val(),
						UCL:$('input[name=UCL]').val(),
						CL:$('input[name=CL]').val(),
						LCL:$('input[name=LCL]').val(),
						unit:$('select[name=unit]').val(),
						create_date:$('input[name=create_date]').val(),
						update_date:$('input[name=update_date]').val(),
						delete_date:$('input[name=delete_date]').val(),
						deletion_f:$('select[name=deletion_f]').val()
						
						/* insp_char:$('input[name=insp_char]').val().trim(),
						insp_char_name:$('input[name=insp_char_name]').val().trim(),
						qn_f:$('select[name=qn_f]').val().trim(),
						sample_qty:$('input[name=sample_qty]').val().trim(),
						AC:$('input[name=AC]').val().trim(),
						RE:$('input[name=RE]').val().trim(),
						USL:$('input[name=USL]').val().trim(),
						SL:$('input[name=SL]').val().trim(),
						LSL:$('input[name=LSL]').val().trim(),
						UCL:$('input[name=UCL]').val().trim(),
						CL:$('input[name=CL]').val().trim(),
						LCL:$('input[name=LCL]').val().trim(),
						unit:$('select[name=unit]').val().trim(),
						create_date:$('input[name=create_date]').val().trim(),
						update_date:$('input[name=update_date]').val().trim(),
						delete_date:$('input[name=delete_date]').val().trim(),
						deletion_f:$('select[name=deletion_f]').val().trim() */
					}
					,
					function(result){
						alert("결과" + result);
						location.reload(true);
					}
			);
		});
		$("button[data-oper='modify']").on("click", function(e){
			registerService.update(
					{
						item_code:$('input[name=item_code]').val(),
						item_name:$('input[name=item_name]').val(),
						purch_user:$('input[name=purch_user]').val(),
						purch_user_name:$('input[name=purch_user_name]').val(),
						purch_dept:$('input[name=purch_dept]').val(),
						purch_dept_name:$('input[name=purch_dept_name]').val(),
						vendor:$('input[name=vendor]').val(),
						vendor_name:$('input[name=vendor_name]').val(),
						income_insp_user:$('input[name=income_insp_user]').val(),
						current_stock:$('input[name=current_stock]').val(),
						purch_price:$('input[name=purch_price]').val(),
						insp_f:$('input[name=insp_f]').val(),
						deletion_f:$('input[name=deletion_f]').val()
					}
					,
					function(result){
						alert("결과" + result);
						location.reload(true);
					}
			);
		});
	});
	
	$(document).keydown(function(event) {
	    if ( event.keyCode == 46 || event.which == 46 ) {
	    	
	    	var con_test = confirm("삭제하시겠습니까?");
	    	if(con_test == true){
	    	    alert("확인을 누르셨군요");
	    	}
	    	else if(con_test == false){
	    	    alert("취소를 누르셨군요.");
	    	}
	    }
	});
	
	$("#table01 tr").click(function(){     
		 
        var str = ""
        var tdArr = new Array();    // 배열 선언
        
        // 현재 클릭된 Row(<tr>)
        var tr = $(this);
        var td = tr.children();
        
        // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
        console.log("클릭한 Row의 모든 데이터 : "+tr.text());
        
        // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
        td.each(function(i){
            tdArr.push(td.eq(i).text());
        });
        
        $("#item_code").val(td.eq(3).text());
        $("#item_name").val(td.eq(4).text());
        $("#purch_user").val(td.eq(5).text());
        $("#purch_user_name").val(td.eq(6).text());
        $("#purch_dept").val(td.eq(7).text());
        $("#purch_dept_name").val(td.eq(8).text());
        $("#vendor").val(td.eq(9).text());
        $("#vendor_name").val(td.eq(10).text());
        $("#income_insp_user").val(td.eq(11).text());
        $("#current_stock").val(td.eq(12).text());
        $("#purch_price").val(td.eq(13).text());
        $("#insp_f").val(td.eq(14).text());
        $("#deletion_f").val(td.eq(15).text());
    });
	</script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
  </body>
</html>