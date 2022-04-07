$.ajax({
	type: 'get',
	url: '/getItemCode',
	dataType: 'json',
	success: function(data){

	    var searchSource = data; // 배열 생성
	    
	    $('#searchBox1').autocomplete({ // autocomplete 구현 시작부
	        source : searchSource, //source 는 자동완성의 대상
	        select : function(event, ui) { // item 선택 시 이벤트
	            //console.log(ui.item);
	        },
	        focus : function(event, ui) { // 포커스 시 이벤트
	            return false;
	        },
	        minLength : 1, // 최소 글자 수
	        autoFocus : true, // true로 설정 시 메뉴가 표시 될 때, 첫 번째 항목에 자동으로 초점이 맞춰짐
	        classes : { // 위젯 요소에 추가 할 클래스를 지정
	            'ui-autocomplete' : 'highlight'
	        },
	        delay : 100, // 입력창에 글자가 써지고 나서 autocomplete 이벤트 발생될 떄 까지 지연 시간(ms)
	        disable : false, // 해당 값 true 시, 자동완성 기능 꺼짐
	        position : { my : 'right top', at : 'right bottom'}, // 제안 메뉴의 위치를 식별
	        close : function(event) { // 자동완성 창 닫아질 때의 이벤트
	            //console.log(event);
	        }
	    });
		
	}
});

$.ajax({
	type: 'get',
	url: '/getInspChar',
	dataType: 'json',
	success: function(data){

	    var searchSource = data; // 배열 생성
	    
	    $('#searchBox2').autocomplete({ // autocomplete 구현 시작부
	        source : searchSource, //source 는 자동완성의 대상
	        select : function(event, ui) { // item 선택 시 이벤트
	            //console.log(ui.item);
	        },
	        focus : function(event, ui) { // 포커스 시 이벤트
	            return false;
	        },
	        minLength : 1, // 최소 글자 수
	        autoFocus : true, // true로 설정 시 메뉴가 표시 될 때, 첫 번째 항목에 자동으로 초점이 맞춰짐
	        classes : { // 위젯 요소에 추가 할 클래스를 지정
	            'ui-autocomplete' : 'highlight'
	        },
	        delay : 100, // 입력창에 글자가 써지고 나서 autocomplete 이벤트 발생될 떄 까지 지연 시간(ms)
	        disable : false, // 해당 값 true 시, 자동완성 기능 꺼짐
	        position : { my : 'right top', at : 'right bottom'}, // 제안 메뉴의 위치를 식별
	        close : function(event) { // 자동완성 창 닫아질 때의 이벤트
	            //console.log(event);
	        }
	    });
		
	}
});

var registerService = (function() {
	function remove(register, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/item_insp_char/' + register.item_code + '/' + register.insp_char,
			beforeSend: function(xhr) {
				xhr.setRequestHeader(csrfHeaderName, csrfTokenValue);
			},
			success : function(deleteResult, status, xhr) {
				if(callback) {
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
	function add(register, callback, error) {
		$.ajax({
	 		type : 'post',
			url : '/item_insp_char/add',
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
		});
	}
 	return {
 		add:add,
 		remove:remove
	};
 })();
 
function exportTableToCsv(tableId, filename) {
    if (filename == null || typeof filename == undefined)
        filename = tableId;
    filename += ".csv";

    var BOM = "\uFEFF";

    var table = document.getElementById(tableId);
    var csvString = BOM;
    for (var rowCnt = 0; rowCnt < table.rows.length; rowCnt++) {
        var rowData = table.rows[rowCnt].cells;
        for (var colCnt = 1; colCnt < rowData.length; colCnt++) {
            var columnData = rowData[colCnt].innerHTML;
            if (columnData == null || columnData.length == 0) {
                columnData = "".replace(/"/g, '""');
            }
            else {
                columnData = columnData.toString().replace(/"/g, '""'); // escape double quotes
            }
            csvString = csvString + '"' + columnData + '",';
        }
        csvString = csvString.substring(0, csvString.length - 1);
        csvString = csvString + "\r\n";
    }
    csvString = csvString.substring(0, csvString.length - 1);

    // IE 10, 11, Edge Run
    if (window.navigator && window.navigator.msSaveOrOpenBlob) {

        var blob = new Blob([decodeURIComponent(csvString)], {
            type: 'text/csv;charset=utf8'
        });

        window.navigator.msSaveOrOpenBlob(blob, filename);

    } else if (window.Blob && window.URL) {
        // HTML5 Blob
        var blob = new Blob([csvString], { type: 'text/csv;charset=utf8' });
        var csvUrl = URL.createObjectURL(blob);
        var a = document.createElement('a');
        a.setAttribute('style', 'display:none');
        a.setAttribute('href', csvUrl);
        a.setAttribute('download', filename);
        document.body.appendChild(a);

        a.click()
        a.remove();
    } else {
        // Data URI
        var csvData = 'data:application/csv;charset=utf-8,' + encodeURIComponent(csvString);
        var blob = new Blob([csvString], { type: 'text/csv;charset=utf8' });
        var csvUrl = URL.createObjectURL(blob);
        var a = document.createElement('a');
        a.setAttribute('style', 'display:none');
        a.setAttribute('target', '_blank');
        a.setAttribute('href', csvData);
        a.setAttribute('download', filename);
        document.body.appendChild(a);
        a.click()
        a.remove();
    }
};