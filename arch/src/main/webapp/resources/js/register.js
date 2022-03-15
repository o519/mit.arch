console.log("테스트");

function checkSelectAll()  {
  // 전체 체크박스
  const checkboxes 
    = document.querySelectorAll('input[name="check"]');
  // 선택된 체크박스
  const checked 
    = document.querySelectorAll('input[name="check"]:checked');
  // select all 체크박스
  const selectAll 
    = document.querySelector('input[name="selectall"]');
  
  if(checkboxes.length === checked.length)  {
    selectAll.checked = true;
  }else {
    selectAll.checked = false;
  }

}

function getCheckboxValue(event)  {
  let result = '';
  if(event.target.checked)  {
    result = event.target.value;
  }else {
    result = '';
  }
  
  document.getElementById('result').innerText
    = result;
}

function selectAll(selectAll)  {
  const checkboxes 
     = document.getElementsByName('check');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked
  })
}

var registerService = (function() {
	function remove(register, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/' + register.item_code,
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

	function update(register, callback, error) {
		console.log("등록"+JSON.stringify(register));
		$.ajax({
			type : 'put',
			url : '/' + register.item_code,
			data : JSON.stringify(register),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
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
			url : '/new',
			data : JSON.stringify(register),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		});
	}
 	return {
 		add:add,
 		update:update,
 		remove:remove,
	};
 })();