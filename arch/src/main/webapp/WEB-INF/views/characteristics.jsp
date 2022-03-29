<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="./includes/header.jsp" %>
<script type="text/javascript" src="/resources/js/characteristics.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
	  <input name="ac"  type="text" id="ac" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">RE값</span>
	  </div>
	  <input name="re"  type="text" id="re" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	</div>
	<div class="input-group input-group-sm mb-1">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">USL</span>
	  </div>
	  <input name="usl"  type="text" id="usl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">SL</span>
	  </div>
	  <input name="sl"  type="text" id="sl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LSL</span>
	  </div>
	  <input name="lsl"  id="lsl" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">UCL</span>
	  </div>
	  <input name="ucl"  type="text" id="ucl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">CL</span>
	  </div>
	  <input name="cl"  type="text" id="cl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
	  <div class="input-group-prepend">
	    <span class="input-group-text" id="inputGroup-sizing-sm" style="width: 100px; display: inline-block; text-align: center;">LCL</span>
	  </div>
	  <input name="lcl"  type="text" id="lcl" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
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
		  <c:forEach items="${characteristics}" var="insp">
		  	<c:set var="i" value="${i+1}"/>
			<tr>
				<td><input type="checkbox" name='chkbox' value='' onclick='getCheckboxValue(event)'/></td>
				<td>${i}</td>
				<td></td>
				<td>${insp.insp_char}</td>
				<td>${insp.insp_char_name}</td>
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
				<td>${insp.create_user}</td>
				<td>${insp.create_date}</td>
				<td>${insp.update_user}</td>
				<td>${insp.update_date}</td>
				<td>${insp.delete_user}</td>
				<td>${insp.delete_date}</td>
				<td>${insp.deletion_f}</td>
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
	$(document).ready(function(){
		$('#qn_f').change(function() {
			var result = $('#qn_f option:selected').val();
			if (result == '정성') {
				$('#ac').attr("disabled",true).attr("readonly",false).val('');
				$('#re').attr("disabled",true).attr("readonly",false).val('');
				$('#usl').attr("disabled",false).attr("readonly",false);
				$('#sl').attr("disabled",false).attr("readonly",false);
				$('#lsl').attr("disabled",false).attr("readonly",false);
			} else {
				$('#usl').attr("disabled",true).attr("readonly",false).val('');
				$('#sl').attr("disabled",true).attr("readonly",false).val('');
				$('#lsl').attr("disabled",true).attr("readonly",false).val('');
				$("#ac").attr("disabled",false).attr("readonly",false); //입력가능
				$("#re").attr("disabled",false).attr("readonly",false); //입력가능
			}
		});
		var operForm = $("#operForm");
		$("button[data-oper='remove']").on("click", function(e){
			var checkRows = $("[name='chkbox']:checked");
			for(var i=checkRows.length-1; i>-1; i--){
				checkRows.eq(i).closest('tr').remove();
			}
		});
		$("button[data-oper='register']").on("click", function(e){
			registerService.add(
					{
						insp_char:$('input[name=insp_char]').val(),
						insp_char_name:$('input[name=insp_char_name]').val(),
						qn_f:$('select[name=qn_f]').val(),
						sample_qty:$('input[name=sample_qty]').val(),
						ac:$('input[name=ac]').val(),
						re:$('input[name=re]').val(),
						usl:$('input[name=usl]').val(),
						sl:$('input[name=sl]').val(),
						lsl:$('input[name=lsl]').val(),
						ucl:$('input[name=ucl]').val(),
						cl:$('input[name=cl]').val(),
						lcl:$('input[name=lcl]').val(),
						unit:$('select[name=unit]').val(),
						create_date:$('input[name=create_date]').val(),
						update_date:$('input[name=update_date]').val(),
						delete_date:$('input[name=delete_date]').val(),
						deletion_f:$('select[name=deletion_f]').val()
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
						insp_char:$('input[name=insp_char]').val(),
						insp_char_name:$('input[name=insp_char_name]').val(),
						qn_f:$('select[name=qn_f]').val(),
						sample_qty:$('input[name=sample_qty]').val(),
						ac:$('input[name=ac]').val(),
						re:$('input[name=re]').val(),
						usl:$('input[name=usl]').val(),
						sl:$('input[name=sl]').val(),
						lsl:$('input[name=lsl]').val(),
						ucl:$('input[name=ucl]').val(),
						cl:$('input[name=cl]').val(),
						lcl:$('input[name=lcl]').val(),
						unit:$('select[name=unit]').val(),
						create_date:$('input[name=create_date]').val(),
						update_date:$('input[name=update_date]').val(),
						delete_date:$('input[name=delete_date]').val(),
						deletion_f:$('select[name=deletion_f]').val()
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
	    	
	    	var con_remove = confirm("삭제하시겠습니까?");
	    	if(con_remove == true){
	    		registerService.remove(
	    				{
	    					insp_char:$('input[name=insp_char]').val(),
	    				},
	    				function(result){
	    					location.reload(true);
	    				}
	    		);
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
        $("#create_date").val(td.eq(17).text());
        $("#update_date").val(td.eq(19).text());
        $("#delete_date").val(td.eq(21).text());
        $("#deletion_f").val(td.eq(22).text());
        
		var result = $('#qn_f option:selected').val();
		if (result == '정성') {
			$('#ac').attr("disabled",true).attr("readonly",false).val('');
			$('#re').attr("disabled",true).attr("readonly",false).val('');
			$('#usl').attr("disabled",false).attr("readonly",false);
			$('#sl').attr("disabled",false).attr("readonly",false);
			$('#lsl').attr("disabled",false).attr("readonly",false);
		} else {
			$('#usl').attr("disabled",true).attr("readonly",false).val('');
			$('#sl').attr("disabled",true).attr("readonly",false).val('');
			$('#lsl').attr("disabled",true).attr("readonly",false).val('');
			$("#ac").attr("disabled",false).attr("readonly",false); //입력가능
			$("#re").attr("disabled",false).attr("readonly",false); //입력가능
		}
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