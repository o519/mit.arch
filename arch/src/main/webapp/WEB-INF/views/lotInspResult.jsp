<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./includes/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

<div class="row align-items-center" style="margin:0 0 2px 0;">
	<div class="col" style="padding:0">
		<b>Lot 등록</b>
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
	<form id="operForm" >
	<div class="row mb-3 row-cols-1 row-cols-sm-2 row-cols-lg-4" style="clear: both; margin: 0;"> 
	
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_itemCode()" style="width: 100px; display: inline-block; text-align: center;">LOT_NO</span>
			</div>
			<input id="lot_no" name="lot_no" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_inspChar()" style="width: 100px; display: inline-block; text-align: center;">자재코드</span>
			</div>
			<input id="item_code" list="code_list" name="item_code" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autofocus="autofocus" autoComplete="off" />
			<datalist id ="code_list"></datalist>
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_itemCode2()" style="width: 100px; display: inline-block; text-align: center;">LOT_SIZE</span>
			</div>
			<input id="lot_size" name="lot_size" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autoComplete="off" />
		</div>
		
		<div class="col input-group input-group-sm" style="padding:0">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroup-sizing-sm" onclick="empty_itemCode2()" style="width: 100px; display: inline-block; text-align: center;">합불여부</span>
			</div>
			<!-- <input id="yn_f" name="yn_f" type="button" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autoComplete="off" /> -->
			<select name="yn_f" id="yn_f" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
			     <option selected></option>
			     <option>합격</option>
			     <option>불합격</option>
			   </select>
			<button type="button" data-oper="lot_register" class="btn btn-outline-primary btn-sm">등록</button>
		</div>
		
	</div>
	<!-- autocomplete="off" -->
	
	<div class="row align-items-center" style="margin:0 0 2px 0;">
	<div class="col" style="padding:0">
		<b>Lot별 검사결과등록</b>
	</div>
	<div class="col-right" style="padding:0">
		<button type="button" data-oper="lookup" class="btn btn-outline-primary btn-sm" data-toggle="modal" data-target="#exampleModal">조회</button>
		<button type="button" data-oper="register" class="btn btn-outline-primary btn-sm">추가</button>
		<!-- <button type="button" data-oper="modify" class="btn btn-outline-primary btn-sm">수정</button> -->
			<button type="button" data-oper="remove" class="btn btn-outline-primary btn-sm">삭제</button>
		</div>
	</div>
	
	<div class="row row-cols-1 row-cols-sm-2 row-cols-lg-4 mb-3" style="margin:0;"> <!-- padding: top right bottom left -->
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LOT_NO</span>
		</div>
		<input name="lot_noR" type="text" id="lot_noR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LOT_SIZE</span>
		</div>
		<input name="lot_sizeR"  type="text" id="lot_sizeR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autocomplete="off" />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재코드</span>
		</div>
		<input name="item_codeR"  type="text" id="item_codeR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autocomplete="off" />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">자재명</span>
		</div>
		<input name="item_nameR"  type="text" id="item_nameR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autocomplete="off" readonly />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">합불여부</span>
		</div>
		<input name="yn_fR"  type="text" id="yn_fR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" readonly autocomplete="off" />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">생성자</span>
		</div>
		<input name="create_userR"  type="text" id="create_userR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autocomplete="off" readonly />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">생성일자</span>
		</div>
		<input name="create_dateR"  type="date" id="create_dateR" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autocomplete="off" readonly />
	</div>
	
	<div class="col input-group input-group-sm" style="padding:0">
		<div class="input-group-prepend">
			<span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">비고</span>
			</div>
			<input name="etc"  type="text" id="etc" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" autocomplete="off" />
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
		      <th scope="col">LOT_NO</th>
		      <th scope="col">LOT_SIZE</th>
		      <th scope="col">자재코드</th>
		      <th scope="col">자재명</th>
		      <!-- <th scope="col">시료수</th> -->
		      <th scope="col">합불여부</th>
		      <th scope="col">생성자</th>
		      <th scope="col">생성일자</th>
		      <th scope="col">비고</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach items="${lotList}" var="lot">
		  	<c:set var="i" value="${i+1}"/>
		  	<tr>
		  		<td style="width:1px;"><input type="checkbox" name='chkbox' value='' onclick='getCheckboxValue(event)'/></td>
				<td style="width:50px;">${i}</td>
				<td id="modal_lot_no">${lot.lot_no}</td>
				<td>${lot.lot_size}</td>
				<td>${lot.item_code}</td>
				<td>${lot.item_name}</td>
				<%-- <td>${insp.sample_qty}</td --%>
				<!-- 합격: class="btn btn-success" // 미달: class="btn btn-danger // 검사 class="btn btn-warning" " -->
				
				<td><button type="button" class="
					<c:if test='${lot.yn_f eq "합격"}'>btn btn-success btn-sm</c:if> 
					<c:if test='${lot.yn_f eq "불합격"}'>btn btn-danger btn-sm</c:if>
					<c:if test='${empty lot.yn_f}'>btn btn-warning btn-sm</c:if>
				" data-toggle="modal" data-target="#exampleModal" value="${lot.lot_no}">${empty lot.yn_f ? '검사대기' : lot.yn_f}</button></td>
				
				<%-- <td><input type="button" class="
					<c:if test='${lot.yn_f eq "합격"}'>btn btn-success btn-sm</c:if> 
					<c:if test='${lot.yn_f eq "불합격"}'>btn btn-danger btn-sm</c:if>
					<c:if test='${empty lot.yn_f}'>btn btn-warning btn-sm</c:if>
				" data-toggle="modal" data-target="#exampleModal" value="${empty lot.yn_f ? '검사대기' : lot.yn_f}"></td> --%>
				
				<td>${lot.create_user}</td>
				<td><fmt:formatDate pattern='yyyy-MM-dd hh:mm' value = '${lot.create_date}' /></td>
				<td></td>
		  	</tr>
		  </c:forEach>
		  </tbody>
		</table>
	</div>
	
	
	<%-- <div class="align-items-center" style="height:31px">
		<b class="align-middle">검사항목</b>
	</div>
	<div class="table-responsive" style="white-space: nowrap; text-align: center; height: 300px;">
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
		      <th scope="col">AC</th>
		      <th scope="col">RE</th>
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
	</div> --%>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="white-space: nowrap; text-align: center;">
	  <div class="modal-dialog modal-dialog-scrollable modal-xl">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Lot 등록내역</h5>
	        <div>
	        	<button type="button" id="btn_save" class="btn btn-secondary" data-dismiss="modal">저장</button>
	        	<button type="button" class="btn btn-secondary" data-dismiss="modal">삭제</button>
	        </div>
	        <button type="button" id="modal_close" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
		      <table id="lotTable" class="table table-striped">
			  <thead>
			    <tr>
				  <th><input type="checkbox" name="selectall" value="selectall" onclick="selectAll(this)"></th>
			      <th scope="col">#</th>
			      <th scope="col">LOT_NO</th>
			      <th scope="col">자재코드</th>
			      <th scope="col">검사항목</th>
			      <th scope="col">검사항목명</th>
			      <th scope="col">시료번호</th>
			      <th scope="col">검사결과값</th>
			      <th scope="col">합격여부</th>
			    </tr>
			  </thead>
			  <tbody id="tbody">

			  </tbody>
			</table>
	      </div>
	     <!--  <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div> -->
	    </div>
	  </div>
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
	<script type="text/javascript" src="/resources/js/lotInspResult.js?ver=0"></script>

	<script>
	var csrfHeaderName = "${_csrf.headerName}"; 
	var csrfTokenValue = "${_csrf.token}";
	
	$(document).ready(function(){
		var operForm = $("#operForm");
		
		$("button[data-oper='lot_register']").on("click", function(e){
			lotAdd();
		});
		
	});
	
	function lotAdd(){
		registerService.add(
				{
					lot_no:$('#lot_no').val(),
					//create_user:$('input[name=create_user]').val(),
					//create_date:$('input[name=create_date]').val(),
					lot_size:$('#lot_size').val(),
					yn_f:$('#yn_f').val(),
					item_code:$('#item_code').val()
				}
				,
				function(result){
					alert(result);
					location.reload(true);
				}
		);
	};
	
	$("#lotTable tbody tr").click(function(){     
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
        //console.log(td.eq(7).text().substring(0,10));
        $("#lot_noR").val(td.eq(2).text());
        $("#lot_sizeR").val(td.eq(3).text());
        $("#item_codeR").val(td.eq(4).text());
        //$("#yn_fR").val(td.eq(5).text());
        //$("#create_userR").val(td.eq(6).text());
        //$("#create_dateR").val(td.eq(7).text().substring(0,10));
        
        //모달창 닫기
        document.getElementById("modal_close").click();
    });
	
	$("#btn_save").click(function(){
		console.log("저장");
		
		/* var trGroup = Array.from(document.querySelectorAll('#lotTable tr'));

		var textGroup = trGroup.map(tr => {
			return Array.from(tr).map(input => input.value);
		}); */
		
		//var dataArrayToSend1 = [];
		var dataArray = [];
		var dataArray3 = ["lot_no",""];
		
		$("#lotTable tr").each(function() {
			var len = $(this).find("td").length;
			for(var i=2; i< len; i++){
				if(i==6){
					dataArray.push(($(this).find("td").eq(i).text()).replace(/\/.*/g,''));
					continue;
				}else if(i==7){
					continue;
				}
				//dataArrayToSend1.push($(this).find("tr").eq(i).text());
				//dataArray.push($(this).find("td").eq(i).text());
				dataArray.push($(this).find("td").eq(i).text());
			}
			dataArray.push(dataArray3);
		});
		//console.log(dataArrayToSend1);
		console.log(dataArray);
		//console.log(dataArray3);
		//console.log(textGroup);
		/* $.ajax({
	 		type : 'post',
			url : '/lotInspResult/add',
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			data : JSON.stringify(register),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				console.log("등록에러");
				alert("에러");
				if (error) {
					error(er);
				}
			}
		}); */
	});
	
	$("#table01 button").click(function(){
		
		//console.log(this.value);
		
		$.ajax({
			type : 'get',
			url : '/lotInspResult/' + this.value + ".json",
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			//dataType: 'json',
			success : function(result, status, xhr) {
			//console.log("성공");
			//console.log(result);
			//console.log(status);
			//console.log(xhr);
			//$("#lotTable").html(result) ;
			
			var table = result;
			var str = '<TR>';
			var cnt = 1;
			$.each(table, function(i){
				
				
				for(j=0; j<table[i].sample_qty; j++) {
					str += '<TD><input type="checkbox" name="chkbox" value="" onclick="getCheckboxValue(event)"/></TD><TD>'
					+ cnt + '</TD><TD>'
					+ table[i].lot_no + '</TD><TD>'
					+ table[i].item_code + '</TD><TD>' 
					+ table[i].insp_char + '</TD><TD>' 
					+ table[i].insp_char_name + '</TD><TD>' 
					+ parseInt(j+1) + '/' + table[i].sample_qty + '</TD><TD>'
					+ '<input type="text" autoComplete="off" /></TD><TD>'
					+ '<select name="result"><option value=""></option><option value="합격">합격</option><option value="불합격">불합격</option></TD>';
					str += '</TR>';
					cnt ++;
				}
			});
			
			$("#tbody").empty();
			$("#tbody").append(str);
			
			/* $.each(result, function(index, item) { // 데이터 =item
				$("#lotTable").append(index + " "); // index가 끝날때까지 
				$("#lotTable").append(item.lot_no + " ");
				$("#lotTable").append(item.item_code + " ");
				$("#lotTable").append(item.insp_char + " ");
				$("#lotTable").append(item.lot_no + "<br>");
			}); */
		
			},
			error : function(xhr, status, er) {
				console.log("실패");
				console.log(xhr);
				console.log(status);
				console.log(er);
			}
		
		});
		
	});
	
	</script>
</body>
</html>