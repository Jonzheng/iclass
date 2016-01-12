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
	$.studentTable = function(pager){
		$("#t-class-members").find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$("#t-class-members").find("tbody").append("<tr><td>"+(pager.offset+n+1)+"</td><td>"+value.studentId+"</td><td>"+value.name+
					"</td><td>"+value.mobile+"</td><td>"+value.shortMobile+"</td><td>"+
					value.qqNum+"</td><td>"+value.doorplate+
					"</td></tr>");
		});
		if(us.length<pager.size);
		var ex = pager.size-us.length;
		for(var i=0;i<ex;i++) {
			$("#t-class-members").find("tbody").append("<tr><td class='no-td filling'>#</td><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
		}
		//更改表格样式
		$("#t-class-members").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
	$.stuTable = function(pager){
		$("#t-class-members").find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$("#t-class-members").find("tbody").append("<tr><td>"+(pager.offset+n+1)+"</td><td>"+value.studentId+"</td><td>"+value.name+
					"</td><td>"+value.mobile+"</td><td>"+value.shortMobile+"</td><td>"+
					value.qqNum+"</td><td>"+value.doorplate+
					"</td></tr>");
		});
		//更改表格样式
		$("#t-class-members").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
})(jQuery);