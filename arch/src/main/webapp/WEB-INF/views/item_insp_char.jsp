<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./includes/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

	<!-- <div style="width: 100%; height: 30px;">
		<div class="top_left" style="display: table-cell; vertical-align: middle; float: left;"> -->
	<div class="row align-items-center" style="margin:0 0 2px 0;">
		<div class="col" style="padding:0">
			<b>자재별검사항목등록: Qco9030</b>
		</div>
		<!-- <div class="top_right" style="float: right; display: table-cell; vertical-align: middle; margin: 1px 0 2px 0;"> -->
		<div class="col-right" style="padding:0">
			<button type="button" class="btn btn-outline-primary btn-sm">검색</button>
			<button type="button" class="btn btn-outline-primary btn-sm">초기화</button>
			<button type="button" class="btn btn-outline-primary btn-sm">저장</button>
			<button type="button" class="btn btn-outline-primary btn-sm">취소</button>
			<button type="button" class="btn btn-outline-primary btn-sm" onclick="exportTableToCsv('table01', 'Export example')">엑셀</button>
			<button type="button" class="btn btn-outline-primary btn-sm">Help</button>
		</div>
	</div>
	<!-- <div class="input-group input-group-sm mb-3">  --> <!-- style="width: 33.8%" -->
	<div class="row mb-3 row-cols-1 row-cols-sm-2 row-cols-lg-4" style="clear: both; margin: 0;"> 
	
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_itemCode()">자재코드</span>
			</div>
			<input id="searchBox1" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm"  autofocus="autofocus" onkeyup="if(window.event.keyCode==13){item_code()}">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button" id="item_code_btn"><i class="bi bi-check-lg"></i></button>
			</div>
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_inspChar()">검사항목</span>
			</div>
			<input id="searchBox2" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" onkeyup="if(window.event.keyCode==13){insp_char()}">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button" id="insp_char_btn"><i class="bi bi-check-lg"></i></button>
			</div>
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_itemCode2()">자재코드</span>
			</div>
			<input id="searchBox3" list="code_list" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autoComplete="off" onkeyup="if(window.event.keyCode==13){item_code2()}"/>
			<datalist id ="code_list"></datalist>
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button" id="item_code_btn2"><i class="bi bi-check-lg"></i></button>
			</div>
		</div>
		
	</div>
	<!-- autocomplete="off" -->
	<form id="operForm" >
	<div class="row align-items-center" style="margin:0 0 2px 0;">
		<div class="col" style="padding:0">
			<b>자재별검사항목등록</b>
		</div>
		<div class="col-right" style="padding:0">
			<button type="button" data-oper="register" class="btn btn-outline-primary btn-sm">추가</button>
			<!-- <button type="button" data-oper="modify" class="btn btn-outline-primary btn-sm">수정</button> -->
			<button type="button" data-oper="remove" class="btn btn-outline-primary btn-sm">삭제</button>
		</div>
	</div>
	
	<div class="row mb-3" style="margin:0;"> <!-- padding: top right bottom left -->
	
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재코드＊</span>
			</div>
			<input name="item_code" type="text" id="item_code" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">검사항목＊</span>
			</div>
			<input name="insp_char"  type="text" id="insp_char" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">검사항목명</span>
			</div>
			<input name="insp_char_name"  type="text" id="insp_char_name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">정성정량</span>
			</div>
			<input name="qn_f"  type="text" id="qn_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">시료수</span>
			</div>
			<input name="sample_qty"  type="text" id="sample_qty" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">AC값</span>
			</div>
			<input name="ac"  type="text" id="ac" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">RE값</span>
			</div>
			<input name="re"  type="text" id="re" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
	
	
		<!-- <div class="input-group input-group-sm mb-1"> -->
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">USL</span>
			</div>
			<input name="usl"  type="text" id="usl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">SL</span>
			</div>
			<input name="sl"  type="text" id="sl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LSL</span>
			</div>
			<input name="lsl"  id="lsl" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">UCL</span>
			</div>
			<input name="ucl"  type="text" id="ucl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">CL</span>
			</div>
			<input name="cl"  type="text" id="cl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LCL</span>
			</div>
			<input name="lcl"  type="text" id="lcl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col-lg-2 col-6 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">단위</span>
			</div>
			<input name="unit"  type="text" id="unit" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		<!-- </div> -->
		
		<!-- <div class="input-group input-group-sm mb-5"> -->
		<div class="col-lg-8 col-12 input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">비고</span>
			</div>
			<input name="etc"  type="text" id="etc" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
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
			  <th><input type="checkbox" name="selectall" value="selectall" onclick="selectAll(this)"></th>
		      <th scope="col">#</th>
		      <!-- <th scope="col">St</th> -->
		      <th scope="col">자재코드</th>
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
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${itemInspChar}" var="insp">
		  	<c:set var="i" value="${i+1}"/>
		  	<tr>
		  		<td><input type="checkbox" name='chkbox' value='' onclick='getCheckboxValue(event)'/></td>
				<td>${i}</td>
				<!-- <td></td> -->
				<td style="width:30px">${insp.item_code}</td>
				<td style="width:30px" >${insp.insp_char}</td>
				<td style="width:110px">${insp.insp_char_name}</td>
				<td>${insp.qn_f}</td>
				<td>${insp.sample_qty}</td>
				<td>${insp.ac}</td>
				<td>${insp.re}</td>
				<td>${insp.usl}</td>
				<td>${insp.sl}</td>
				<td>${insp.lsl}</td>
				<td>${insp.ucl}</td>
				<td>${insp.cl}</td>
				<td>${insp.lcl}</td>
				<td>${insp.unit}</td>
		  	</tr>
		  </c:forEach>
		  </tbody>
		</table>
	</div>
		  
 	<!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<!--	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
	
	<!-- JQuery 검색 시작 -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- JQuery 검색 끝-->
	<script type="text/javascript" src="/resources/js/item_insp_char.js?ver=0"></script>
	
	<script>
	var csrfHeaderName = "${_csrf.headerName}"; 
	var csrfTokenValue = "${_csrf.token}";
	
	$("#item_code_btn").click(function(){item_code()});
	$("#insp_char_btn").click(function(){insp_char()});
	$("#item_code_btn2").click(function(){item_code2()});
	
	$(document).ready(function(){
		var operForm = $("#operForm");
		$("button[data-oper='register']").on("click", function(e){
			add_service();
		});
		$("button[data-oper='remove']").on("click", function(e){
			var itemCodeArr = new Array();
			var checkbox = $("input[name=chkbox]:checked");
			
			checkbox.each(function(i){
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				
				var item_code = td.eq(2).text();
				var insp_char = td.eq(3).text();
				itemCodeArr.push(item_code);
				itemCodeArr.push(insp_char);
			});
			console.log(itemCodeArr);
			
			if(itemCodeArr.length > 0){
				$.ajax({
					type : 'delete',
					url : '/item_insp_char/del',
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
			}else
				alert("삭제할 자재코드를 선택해주세요");
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
					item_code:$('input[name=item_code]').val(),
					insp_char:$('input[name=insp_char]').val()
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
					insp_char:$('input[name=insp_char]').val(),
					insp_char_name:$('input[name=insp_char_name]').val(),
					qn_f:$('input[name=qn_f]').val(),
					sample_qty:$('input[name=sample_qty]').val(),
					ac:$('input[name=ac]').val(),
					re:$('input[name=re]').val(),
					usl:$('input[name=usl]').val(),
					sl:$('input[name=sl]').val(),
					lsl:$('input[name=lsl]').val(),
					ucl:$('input[name=ucl]').val(),
					cl:$('input[name=cl]').val(),
					lcl:$('input[name=lcl]').val(),
					unit:$('input[name=unit]').val()
				}
				,
				function(result){
					alert("결과" + result);
					location.reload(true);
				}
		);
	};
	
	$("input[name=selectall]").click(function(){
		if($("input[name=selectall]").prop("checked")){
			$("input[type=checkbox]").prop("checked", true);
		}else{
			$("input[type=checkbox]").prop("checked", false);
		}
	});
	
	$("#table01 tbody tr").click(function(){     
        var str = ""
        var tdArr = new Array();    // 배열 선언
        
        // 현재 클릭된 Row(<tr>)
        var tr = $(this);
        var td = tr.children();
        
        // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
        //console.log("클릭한 Row의 모든 데이터 : "+tr.text());
        
        // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
        td.each(function(i){
            tdArr.push(td.eq(i).text());
        });
        
        $("#item_code").val(td.eq(2).text());
        $("#insp_char").val(td.eq(3).text());
        $("#insp_char_name").val(td.eq(4).text());
        $("#qn_f").val(td.eq(5).text());
        $("#sample_qty").val(td.eq(6).text());
        $("#ac").val(td.eq(7).text());
        $("#re").val(td.eq(8).text());
        $("#usl").val(td.eq(9).text());
        $("#sl").val(td.eq(10).text());
        $("#lsl").val(td.eq(11).text());
        $("#ucl").val(td.eq(12).text());
        $("#cl").val(td.eq(13).text());
        $("#lcl").val(td.eq(14).text());
        $("#unit").val(td.eq(15).text());
        
    });
	
	function item_code() {
		if($('input[id=searchBox1]').val() != ""){
			
			var itemcode = $('input[id=searchBox1]').val();
			
			$.ajax({
		    	type: 'get',
		    	url: '/item/' + itemcode,
		    	dataType: 'json',
		    	success: function(data){
		    		//console.log(data);
		    		document.getElementById('item_code').value = data.item_code;
		    	}
		    });
			document.getElementById('searchBox2').focus();
		}
	};
	
	function insp_char() {
		if($('input[id=searchBox2]').val() != ""){
			var inspchar = $('input[id=searchBox2]').val();
			
			$.ajax({
		    	type: 'get',
		    	url: '/insp_char/' + inspchar,
		    	dataType: 'json',
		    	success: function(data){
		    		document.getElementById('insp_char').value = data.insp_char;
		    		document.getElementById('insp_char_name').value = data.insp_char_name;
		    		document.getElementById('qn_f').value = data.qn_f;
		    		document.getElementById('sample_qty').value = data.sample_qty;
		    		document.getElementById('ac').value = data.ac;
		    		document.getElementById('re').value = data.re;
		    		document.getElementById('usl').value = data.usl;
		    		document.getElementById('sl').value = data.sl;
		    		document.getElementById('lsl').value = data.lsl;
		    		document.getElementById('ucl').value = data.ucl;
		    		document.getElementById('cl').value = data.cl;
		    		document.getElementById('lcl').value = data.lcl;
		    		document.getElementById('unit').value = data.unit;
		    	}
		    });
			document.getElementById('searchBox3').focus();
		}
	};
	
	function item_code2() {
		if($('input[id=searchBox3]').val() != ""){
			
			//var itemcode = $('input[id=target2]').val();
			var itemcode = document.getElementById('searchBox3').value;
			
			$.ajax({
				type: 'get',
				url: '/item/' + itemcode,
				dataType: 'json',
				success: function(data){
					//console.log(data);
					document.getElementById('item_code').value = data.item_code;
				}
			});
			document.getElementById('searchBox1').focus();
		}
	};
	
	function empty_itemCode() {
		var input = document.getElementById('searchBox1');
		input.value = null;
	};
	function empty_inspChar() {
		var input = document.getElementById('searchBox2');
		input.value = null;
	};
	function empty_itemCode2() {
		var input = document.getElementById('searchBox3');
		input.value = null;
	};
	</script>
	
	</body>
</html>