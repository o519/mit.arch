<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./includes/header.jsp" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

	<div style="width: 100%; height: 30px;">
		<div class="top_left" style="float: left;">
		<b>검사자재등록: Qco9010</b>
		</div>
		<div class="top_right" style="float: right; display: table-cell; vertical-align: middle;">
			<button type="button" class="btn btn-outline-primary btn-sm">검색</button>
			<button type="button" class="btn btn-outline-primary btn-sm">초기화</button>
			<button type="button" class="btn btn-outline-primary btn-sm">저장</button>
			<button type="button" class="btn btn-outline-primary btn-sm">취소</button>
			<button type="button" class="btn btn-outline-primary btn-sm" onclick="exportTableToCsv('table01', 'Export example')">엑셀</button>
			<button type="button" class="btn btn-outline-primary btn-sm">Help</button>
		</div>
	</div>
	
	<div class="row row-cols-2 row-cols-sm-2 row-cols-lg-4" style="clear: both; margin: 0;">
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재코드</span>
		  	</div>
		  	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  	</div>
	  	<div class="col input-group input-group-sm" style="padding:0">
		  	<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재명</span>
		  	</div>
		  	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  	</div>
	  	
	  	<div class="col input-group input-group-sm" style="padding:0">
		  	<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매업체명</span>
		  	</div>
		  	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>  	

	  	<div class="col input-group input-group-sm" style="padding:0">
		  	<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">수입검사자</span>
		  	</div>
		  	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
	</div>
	
	<form id="operForm">
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
	
	
	
	<div class="row row-cols-2 row-cols-sm-2 row-cols-lg-5" style="clear: both; margin: 0;">
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재코드</span>
			</div>
			<input name="item_code" type="text" id="item_code" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autofocus="autofocus">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재명</span>
			</div>
			<input name="item_name"  type="text" id="item_name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매자</span>
		 	</div>
			<input name="purch_user"  type="text" id="purch_user" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
			
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매자명</span>
			</div>
			<input name="purch_user_name"  type="text" id="purch_user_name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
			
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매부서</span>
			</div>
			<input name="purch_dept"  type="text" id="purch_dept" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매부서명</span>
			</div>
		  	<input name="purch_dept_name"  type="text" id="purch_dept_name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  	</div>
	  	
		<div class="col input-group input-group-sm" style="padding:0">  	
		  	<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매업체</span>
		  	</div>
		  	<input name="vendor"  type="text" id="vendor" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  	</div>
	  	
	  	<div class="col input-group input-group-sm" style="padding:0">
		  	<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매업체명</span>
			</div>
			<input name="vendor_name"  type="text" id="vendor_name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">수입검사자</span>
			</div>
			<input name="income_insp_user"  id="income_insp_user" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">현재고</span>
			</div>
			<input name="current_stock"  type="text" id="current_stock" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">구매단가</span>
			</div>
		  	<input name="purch_price"  type="text" id="purch_price" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">검사여부</span>
			</div>
		  	<input name="insp_f"  type="text" id="insp_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  	</div>
	  	
	  	<div class="col input-group input-group-sm" style="padding:0">
		  	<div class="input-group-prepend">
		    	<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">폐기여부</span>
		  	</div>
		  	<input name="deletion_f"  type="text" id="deletion_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
		</div>
	</div>
	</form>
	
	
	
	<div class="align-items-center" style="height:31px">
		<b class="align-middle">등록내역</b>
	</div>
	<div class="table-responsive" style="white-space: nowrap; text-align: center;">
		<table id="table01" class="table table-striped">
		  <thead>
		    <tr>
			  <th><input type="checkbox" name="selectall" value="selectall" /></th>
		      <th scope="col">#</th>
		      <!-- <th scope="col">St</th> -->
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
		  <c:forEach items="${material}" var="board">
		  	<c:set var="i" value="${i+1}"/>
			<tr>
				<td><input type="checkbox" name='chkbox' value='' /></td>
				<td>${i}</td>
				<!-- <td></td> -->
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
		  </tbody>
		</table>
	</div>
	
	

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
<!--     <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	
	
	<script>
	
	var csrfHeaderName = "${_csrf.headerName}"; 
	var csrfTokenValue = "${_csrf.token}";
	
	$(document).ready(function(){
		

		console.log(csrfHeaderName);
		console.log(csrfTokenValue);
		
		var operForm = $("#operForm");
		
		$("button[data-oper='remove']").on("click", function(e){
			//var rowData = new Array();
			var itemCodeArr = new Array();
			var checkbox = $("input[name=chkbox]:checked");
			
			checkbox.each(function(i){
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				//rowData.push(tr.text());
				
				var item_code = td.eq(2).text();
				itemCodeArr.push(item_code);
			});
			//console.log(itemCodeArr);
			
			if(itemCodeArr.length > 0){
				if(confirm("삭제하시겠습니까?") == true) {
					$.ajax({
						type : 'delete',
						url : '/item/del',
						beforeSend: function(xhr) {
							xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
						},
						data : JSON.stringify(itemCodeArr),
						contentType : "application/json; charset=utf-8",
						success : function(deleteResult, status, xhr) {
							console.log("처리결과"+deleteResult);
							alert(deleteResult);
							location.reload(true);
						},
					});
				}
			}else
				alert("삭제할 자재코드를 선택해주세요");
		});
		
		$("button[data-oper='register']").on("click", function(e){
			add_service();
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
						alert(result);
						location.reload(true);
					}
			);
		});
	});
	
	$(document).keydown(function(event) {
	    if ( event.keyCode == 46 || event.which == 46 ) {
	    	var con_test = confirm("삭제하시겠습니까?");
	    	if(con_test == true){
	    		delete_service();
	    	}
	    }
	});
	
	$(document).keydown(function(event) {
	    if ( event.keyCode == 13 &&  event.ctrlKey || event.which == 13 &&  event.ctrlKey ) {
	    	var con_remove = confirm("등록하시겠습니까?");
	    	if(con_remove == true){
	    		add_service();
	    	}
	    }
	});
	
	function delete_service(){
		registerService.remove(
				{
					item_code:$('input[name=item_code]').val()
				}
				,
				function(result){
					alert(result);
					location.reload(true);
				}
		);
	};
	
	function add_service(){
		registerService.add(
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
					alert(result);
					location.reload(true);
				}
		);
	};
	
	$("#table01 tbody tr").click(function(){
        var str = ""
        var tdArr = new Array();    // 배열 선언
        
        // 현재 클릭된 Row(<tr>)
        var tr = $(this);
        var td = tr.children();
        
        // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
        //console.log("클릭한 Row의 모든 데이터 : "+ tr.text());
        
        // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
        td.each(function(i){
            tdArr.push(td.eq(i).text());
        });
        
        $("#item_code").val(td.eq(2).text());
        $("#item_name").val(td.eq(3).text());
        $("#purch_user").val(td.eq(4).text());
        $("#purch_user_name").val(td.eq(5).text());
        $("#purch_dept").val(td.eq(6).text());
        $("#purch_dept_name").val(td.eq(7).text());
        $("#vendor").val(td.eq(8).text());
        $("#vendor_name").val(td.eq(9).text());
        $("#income_insp_user").val(td.eq(10).text());
        $("#current_stock").val(td.eq(11).text());
        $("#purch_price").val(td.eq(12).text());
        $("#insp_f").val(td.eq(13).text());
        $("#deletion_f").val(td.eq(14).text());
    });
	
	$("input[name=selectall]").click(function(){
		if($("input[name=selectall]").prop("checked")){
			$("input[type=checkbox]").prop("checked", true);
		}else{
			$("input[type=checkbox]").prop("checked", false);
		}
	});
	

	</script>
	
	<!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js" integrity="sha384-VHvPCCyXqtD5DqJeNxl2dtTyhF78xXNXdkwX1CZeRusQfRKp+tA7hAShOK/B/fQ2" crossorigin="anonymous"></script>
    -->
	<script type="text/javascript" src="/resources/js/material.js?ver=2"></script>
  </body>
</html>