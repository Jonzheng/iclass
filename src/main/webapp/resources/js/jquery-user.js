(function($){
	$.userTable = function(pager){
		$("thead").find("tr").remove();
		$("tbody").find("tr").remove();
		$("thead").append("<tr><td><a href='#'>No.<span class='caret'></span></a></td><td>邮箱</td><td>昵称</td><td>类型</td><td>电话</td><td>状态</td><td>操作</td></tr>");
		$("tbody").append("<tr><td>No.</td><td>邮箱</td><td>昵称</td><td>类型</td><td>电话</td><td>状态</td><td>操作</td></tr>");
		var us = pager.datas;
		$.each(us,function(n,value){
			$("tbody").find("tr:last-child").before("<tr><td>"+value.id+"</td><td>"+value.email+
					"</td><td>"+value.nickname+"</td><td>"+value.type+"</td><td>"+
					value.phone+"</td><td>"+value.status+
					"</td><td><a class='edit-btn' href=''>编辑</a><a class='edit-btn' href=''>删除</a></td></tr>");
		});
		//更改表格样式
		$("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
		$("select").val(pager.size);
	}
	//-----------------studentTable---------------------------
	$.studentTable = function(pager,tableId){
		$(tableId).find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$(tableId).find("tbody").append("<tr><td>"+(pager.offset+n+1)+"</td><td>"+value.studentId+"</td><td>"+value.name+
					"</td><td>"+value.mobile+"</td><td>"+value.shortMobile+"</td><td>"+
					value.qqNum+"</td><td>"+value.doorplate+
					"</td></tr>");
		});
		if(us.length<pager.size);
		var ex = pager.size-us.length;
		for(var i=0;i<ex;i++) {
			$(tableId).find("tbody").append("<tr><td class='td-filling'>#</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
		}
		//更改表格样式
		$(tableId).find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
	$.stuTable = function(pager){
		$(tableId).find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$(tableId).find("tbody").append("<tr><td>"+(pager.offset+n+1)+"</td><td>"+value.studentId+"</td><td>"+value.name+
					"</td><td>"+value.mobile+"</td><td>"+value.shortMobile+"</td><td>"+
					value.qqNum+"</td><td>"+value.doorplate+
					"</td></tr>");
		});
		//更改表格样式
		$(tableId).find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
	//-----------------callrollTable---------------------------
	$.callRollTable = function(pager,tableId,rule){
		$(tableId).find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			var stateId = "state"+(pager.offset+n+1);
			$(tableId).find("tbody").append("<tr><td>"+(pager.offset+n+1)+"</td><td>"+value.studentId+"</td><td>"+value.name+
					"</td><td>"+value.point+
					'</td><td><div id='+stateId+' class="btn-group modal-radio" data-toggle="buttons">'+
					'<label class="btn btn-xs btn-default"><input type="radio" name="ca" id="in-radio" value="1">出勤</label>'+
					'<label class="btn btn-xs btn-default"><input type="radio" name="ca" id="in-radio" value="2">迟到</label>'+
					'<label class="btn btn-xs btn-default"><input type="radio" name="ca" id="in-radio" value="3">旷课</label>'+
					'<label class="btn btn-xs btn-default"><input type="radio" name="ca" id="in-radio" value="4">请假</label>'+
					'</div></td></tr>');
			var oldPoint = 0;
				switch(value.state){
				case 0: {
					oldPoint = value.point;
					break;
				}
				case 1: {
					$("#"+stateId).find('label').eq(0).addClass("active");
					oldPoint = value.point - rule.present;
					break;
				}
				case 2: {
					$("#"+stateId).find('label').eq(1).addClass("active");
					oldPoint = value.point - rule.late;
					break;
				}
				case 3: {
					$("#"+stateId).find('label').eq(2).addClass("active");
					oldPoint = value.point - rule.absent;
					break;
				}
				case 4: {
					$("#"+stateId).find('label').eq(3).addClass("active");
					oldPoint = value.point - rule.dayoff;
					break;
				}
				default:{
					console.log("default");
					oldPoint = value.point;
					break;
				}
			}
			//console.log("="+oldPoint)
			var oldState = value.state;
			$("#"+stateId).find('input:radio[name="ca"]').on("change",function(){
				var newPoint = 0;
				var state = 0;
				var v = $(this).val();
				callTotalService.loadByCouraseId(1,function(rule){
					switch(v){
						case "1": {
							newPoint = oldPoint + rule.present;
							state = 1;
							break;
						}
						case "2": {
							newPoint = oldPoint + rule.late;
							state = 2;
							break;
						}
						case "3": {
							newPoint = oldPoint + rule.absent;
							state = 3;
							break;
						}
						case "4": {
							newPoint = oldPoint + rule.dayoff;
							state = 4;
							break;
						}
						default:console.log("default")
					}
					value.point = newPoint;
					value.state = state;
					switch(state){
						case 1:value.present+=1;break;
						case 2:value.late+=1;break;
						case 3:value.absent+=1;break;
						case 4:value.dayoff+=1;break;
					}
					switch(oldState){
						case 1:value.present-=1;break;
						case 2:value.late-=1;break;
						case 3:value.absent-=1;break;
						case 4:value.dayoff-=1;break;
					}
					callRollService.updateCallRoll(value,function(){
						oldState = value.state;
						$("#"+stateId).closest("tr").removeClass();
						$("#"+stateId).closest("tr").find("td").eq(3).text(value.point);
					})
				})
			})
		});
		if(us.length<pager.size);
		var ex = pager.size-us.length;
		for(var i=0;i<ex;i++) {
			$(tableId).find("tbody").append("<tr><td class='td-filling'>#</td><td></td><td></td><td></td><td></td></tr>");
		}
		//更改表格样式
		$(tableId).find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
	
	$.callTotalTable = function(pager,tableId){
		$(tableId).find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$(tableId).find("tbody").append("<tr><td>"+(pager.offset+n+1)+"</td><td>"+value.studentId+"</td><td>"+value.name+
					"</td><td>"+value.present+"</td><td>"+value.late+"</td><td>"+
					value.absent+"</td><td>"+value.dayoff+"</td><td>"+value.point+
					"</td></tr>");
		});
		if(us.length<pager.size);
		var ex = pager.size-us.length;
		for(var i=0;i<ex;i++) {
			$(tableId).find("tbody").append("<tr><td class='td-filling'>#</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
		}
		//更改表格样式
		$(tableId).find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
})(jQuery);