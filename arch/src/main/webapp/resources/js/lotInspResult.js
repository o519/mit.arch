$.ajax({
  type: 'get',
  url: '/getItemCode',
  dataType: 'json',
  success: function (data) {
	 for(var i=0; i<data.length; i++){
		$("#code_list").append('<option value="' + data[i] + '" />');
	 }
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
			url : '/Lot/add',
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
                columnData = columnData.toString().replace(/(\r\n|\n|\r)/gm, "");
                columnData = columnData.toString().replace(/<\/button>/g, '');
                columnData = columnData.toString().replace(/<.*>/g, '');
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