(function($){
	$.cdmApTable = function(pager){
		$("#t-apply-cdm").find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$("#t-apply-cdm").find("tbody").append("<tr><td  class='no-td'>"+value.id+"</td><td>"+
					value.collegeName+"</td><td>"+value.departmentName+"</td><td>"+value.majorName+
					"</td><td><button id='pass-btn' class='btn btn-info btn-opera'>通过</button><button id='update-btn' class='btn btn-primary btn-opera'>编辑</button><button id='delete-btn' class='btn btn-danger btn-opera'>删除</button></td></tr>")
			$("#t-apply-cdm").find("tr:last-child").data("id",value.id);
		});
		if(us.length<pager.size);
		var ex = pager.size-us.length;
		for(var i=0;i<ex;i++) {
			$("#t-apply-cdm").find("tbody").append("<tr><td class='no-td filling'>#</td><td></td><td></td><td></td><td></td></tr>");
		}
		//更改表格样式
		$("#t-apply-cdm").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
	
	$.cdmLiTable = function(pager){
		$("#t-list-cdm").find("tbody").find("tr").remove();
		
		var us = pager.datas;
		$.each(us,function(n,value){
			$("#t-list-cdm").find("tbody").append("<tr><td class='no-td'>"+value.id+
					"</td><td id='"+value.name+"'>"+value.name+"</td><td></td><td></td><td></td></tr>");
			$("#t-list-cdm").find("tr:last-child").data("cid",value.id);
		});
		if(us.length<pager.size);
		var ex = pager.size-us.length;
		for(var i=0;i<ex;i++) {
			$("#t-list-cdm").find("tbody").append("<tr><td class='no-td filling'>#</td><td></td><td></td><td></td><td></td></tr>");
		}
		//更改表格样式
		$("#t-list-cdm").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
	}
	
	/*------------------*/

	showDelApplyCdm = function(event) {
			var btn = event.target;
			var apcdm = $(btn).closest("tr").find("td:gt(0):lt(3)").clone();
			$("#cdm-show-modal").find("h4").html("确认删除这条记录?");
			$("#cdm-show-modal").find(".modal-body").append("<table class='table table-bordered table-comf'><tbody></tbody></table>");
			$("#cdm-show-modal").find("tbody").append(apcdm);
			$("#cdm-show-modal").modal("show");
			$("#cdm-show-modal").find("#confirm-btn").on("click",function(e){
				var id = $(btn).closest("tr").data("id");
		 		collegeService.deleteApplyCdm(id,function(){
		 			$("#cdm-show-modal").modal("hide");
					$(btn).closest("tr").remove();
				}); 
			})
	}
	showUpdApplyCdm = function(event) {
		var btn = event.target;
		var id = $(btn).closest("tr").data("id");
		var college = $(btn).closest("tr").find("td:eq(1)").html();
		var department = $(btn).closest("tr").find("td:eq(2)").html();
		var major = $(btn).closest("tr").find("td:eq(3)").html();
		$("#cdm-show-modal").find("h4").html("更新记录");
		$("#cdm-show-modal").find(".modal-body").append("<table class='table table-comf'><thead><tr><td>学校</td><td>系别</td><td>专业</td></tr></thead><tbody><tr><td><input id='u-college' type='text' class='form-control input-sm'></td><td><input id='u-department' type='text' class='form-control input-sm'></td><td><input id='u-major' type='text' class='form-control input-sm'></td></tr></tbody></table>");
		$("#u-college").val(college);$("#u-department").val(department);$("#u-major").val(major);
		$("#cdm-show-modal").modal("show");
		$("#cdm-show-modal").find("#confirm-btn").on("click",function(e){
			var c = $("#u-college").val();
			var d = $("#u-department").val();
			var m = $("#u-major").val();
			var applyCdm = {"id":id,"collegeName":c,"departmentName":d,"majorName":m};
			collegeService.updateApplyCdm(applyCdm,function(e){
				$("#cdm-show-modal").modal("hide");
				$(btn).closest("tr").find("td:eq(1)").html(c);
				$(btn).closest("tr").find("td:eq(2)").html(d);
				$(btn).closest("tr").find("td:eq(3)").html(m);
			});
		})
	}
	initSelect = function () {
		$("#cdm-college").find("option").not(":first-child").remove();
		$("#cdm-department").find("option").not(":first-child").remove();
		$("#cdm-major").find("option").not(":first-child").remove();
		collegeService.listCollege(function(colleges){
			$.each(colleges,function(n,value){
				$("#cdm-college").append("<option value='"+value.id+"'>"+value.name+"</option>");
			})
		});
	}
	showDelCdm = function (event) {
		var c = $("#cdm-college").find("option[value="+$("#cdm-college").val()+"]").text();
		var d = $("#cdm-department").find("option[value="+$("#cdm-department").val()+"]").text();
		var m = $("#cdm-major").find("option[value="+$("#cdm-major").val()+"]").text();
		$("#cdm-show-modal").find("h4").html("确认删除此专业?");
		$("#cdm-show-modal").find(".modal-body").append("<table class='table table-bordered table-comf'><tbody><tr><td>"+
				c+"</td><td>"+
				d+"</td><td>"+
				m+"</td></tr></tbody></table>");
		$("#cdm-show-modal").modal("show");
		var cid = $("#cdm-college").val();
		var did = $("#cdm-department").val();
		var mid = $("#cdm-major").val();
		$("#cdm-show-modal").find("#confirm-btn").on("click",function(e){
			collegeService.deleteCdm(cid,did,mid,function(e){
				$("#cdm-show-modal").modal("hide");
				$("#cdm-department").trigger("change");
			}); 
		})
	}
	showUpdCdm = function (event) {
		var cid = $("#cdm-college").val();
		var did = $("#cdm-department").val();
		var mid = $("#cdm-major").val();
		var ct = $("#cdm-college").find("option[value="+cid+"]").text();
		var dt = $("#cdm-department").find("option[value="+did+"]").text();
		var mt = $("#cdm-major").find("option[value="+mid+"]").text();
		$("#cdm-show-modal").find("h4").html("更新名称");
		$("#cdm-show-modal").find(".modal-body").append("<table class='table table-comf'><thead><tr><td>学校</td><td>系别</td><td>专业</td></tr></thead><tbody><tr><td><input id='u-college' type='text' class='form-control input-sm'></td><td><input id='u-department' type='text' class='form-control input-sm'></td><td><input id='u-major' type='text' class='form-control input-sm'></td></tr></tbody></table>");
		$("#u-college").val(ct);$("#u-department").val(dt);$("#u-major").val(mt);
		$("#cdm-show-modal").modal("show");
		$("#cdm-show-modal").find("#confirm-btn").on("click",function(e){
			var cn = $("#u-college").val();
			var dn = $("#u-department").val();
			var mn = $("#u-major").val();
			if(cn.trim()==""||dn.trim()==""||mn.trim()=="") {
				$("#cdm-show-modal").modal("hide");
				return;}
			var c = {"id":cid,"name":cn};
			var d = {"id":did,"name":dn};
			var m = {"id":mid,"name":mn};
			collegeService.updateCdm(c,d,m,function(e){
				$("#cdm-show-modal").modal("hide");
				$("#cdm-college").find("option[value="+cid+"]").html(cn);
				$("#cdm-department").find("option[value="+did+"]").html(dn);
				$("#cdm-major").find("option[value="+mid+"]").html(mn);
				$("#t-list-cdm").find("tbody tr td[class='c-target']").html(cn);
				$("#t-list-cdm").find("tbody tr td[class='d-target']").html(dn);
				$("#t-list-cdm").find("tbody tr td[class='m-target']").html(mn);
			})
			
		});
	}
	
	initCdm = function(e){
		
  		$("#left-cdm").on("click",function(e){
			e.preventDefault();
			//------------
			$("#cdm-title").show(100);
			$("#cdm-nav").show(100);
			$("#tab-content").show(100);
			$("#menu-ap").trigger("click");
		})
		
		$("#menu-ap").one("click",function(e){
			collegeService.findApplyCdm(1,15,function(pager){
				$.cdmApTable(pager);
				//初始化页码
				$.createPager(pager,"#apply-cdm-pager",{callback:function(){
					var curPage = $("#apply-cdm-pager").data("curPage");
					collegeService.findApplyCdm(curPage,15,function(pager){
						$.cdmApTable(pager);
					});
					}
				});
			})
		});
		//绑定表格中的按钮事件
		$("#t-apply-cdm").on("click","#delete-btn",showDelApplyCdm);
		$("#t-apply-cdm").on("click","#update-btn",showUpdApplyCdm);
		$("#t-apply-cdm").on("click","#pass-btn",function(e){
			var btn = e.target;
			var id = $(this).closest("tr").data("id");
			var c = $(this).closest("tr").find("td:eq(1)").html();
			var d = $(this).closest("tr").find("td:eq(2)").html();
			var m = $(this).closest("tr").find("td:eq(3)").html();
			collegeService.addCdm(c,d,m,function(e){
				collegeService.deleteApplyCdm(id,function(e){
  				$(btn).closest("tr").remove();
				})
				
			})
		});
		$("#cdm-show-modal").on("hidden.bs.modal",function(e){
			$("#cdm-show-modal").find("#confirm-btn").off("click");
		$("#cdm-show-modal").find(".modal-body").find("table").remove();
		})
  		/* ------------- */
  		$("#menu-li").on("click",function(e){
			$("#cdm-college").find("option").not(":first-child").remove();
			$("#college-ico").fadeOut(100);
			initSelect();
  			collegeService.findCollege(1,20,function(pager){
  				$.cdmLiTable(pager);
  				//初始化页码
 				$.createPager(pager,"#list-cdm-pager",{callback:function(){
 					initSelect();
 					var curPage = $("#list-cdm-pager").data("curPage");
 					collegeService.findCollege(curPage,20,function(pager){
 						$.cdmLiTable(pager);
 					});
 					}
 				});
  			})
  		});
  		//图片上传
		$("#uf").uploadify({
			'height':71,
			'width':71,
			'queueSizeLimit' : 1,
			'buttonText' : '',
			'buttonClass' : 'ico-class',
			'fileTypeExts' : ' *.jpg; *.png',
			'swf':$("#ctx").val()+"/resources/uploadify/uploadify.swf",
			'uploader':"../../uploadCollege",
			'onUploadStart' : function(file) {
				$(".uploadify-queue-item").hide();
				var cid = $("#cdm-college").val();
				$("#uf").uploadify("settings", "formData", {'cid':cid});
			},
	       'onUploadSuccess' : function(file, data, response) {
	    	   $("#college-ico").css("background-image","url(../collegeIco/"+$("#cdm-college").val()+file.name+")");
	    	   $("#college-ico").fadeIn(200);
	        }
		});
		//过滤框事件
		$("#cdm-college").on("change",function(e){
			$("#college-ico").fadeOut(100);
			var pageSize = $("#list-cdm-pager").data("pageSize");
			cid = $(this).val();
			var curCollege = $(this).find("option[value="+cid+"]").text();
			$("#cdm-department").find("option").not(":first-child").remove();
			$("#cdm-major").find("option").not(":first-child").remove();
			$("#t-list-cdm").find("tbody tr td[class='m-target']").next("td").find("button").remove();
			$("#t-list-cdm").find("tbody tr").find("td:eq(2)").attr("id","");
			$("#t-list-cdm").find("tbody tr").find("td:eq(3)").attr("id","");
			$("#t-list-cdm").find("tbody tr").find("td:eq(2)").html("");
			$("#t-list-cdm").find("tbody tr").find("td:eq(3)").html("");
			$("#t-list-cdm").find("tbody tr td[class='c-target']").removeClass("c-target");
			$("#t-list-cdm").find("tbody tr td[class='d-target']").removeClass("d-target");
			$("#t-list-cdm").find("tbody tr td[class='m-target']").removeClass("m-target");
			$("#t-list-cdm").find("tbody tr td[id='"+curCollege+"']").addClass("c-target");
			if(!isNaN(cid)){
				//加载校徽
				collegeService.loadCollege(cid,function(c){
					$("#college-ico").css("background-image","url(../collegeIco/"+c.imgName+")");
					$("#college-ico").fadeIn(200);
				});
				collegeService.listDepartmentByCid(cid,function(ds){
					$("#t-list-cdm").find("tbody tr:gt("+(pageSize-1)+")").remove();
					for(var i=0;i<ds.length;i++) {
						var tar = $("#t-list-cdm").find("tbody tr").eq(i);
						if(tar.html()==undefined) {
							$("#t-list-cdm").find("tbody").append("<tr><td class='no-td filling'>#</td><td></td><td></td><td></td><td></td></tr>");
							$("#t-list-cdm").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
							tar = $("#t-list-cdm").find("tbody tr").eq(i);
						}
						tar.find("td:eq(2)").attr("id",ds[i].name).html(ds[i].name);
					}
					$.each(ds,function(n,value){
						$("#cdm-department").append("<option value='"+value.id+"'>"+value.name+"</option>");
						$("#t-list-cdm").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
					})
					var colSize = $("#t-list-cdm").find("tbody tr").size();
					$("#list-cdm-pager").data("colSize",colSize);
				})
			}
		})
		$("#cdm-department").on("change",function(e){
			var colSize = $("#list-cdm-pager").data("colSize");
			$("#cdm-major").find("option").not(":first-child").remove();
			did = $(this).val();
			var curDep = $(this).find("option[value="+did+"]").text();
			$("#t-list-cdm").find("tbody tr").find("td:eq(3)").html("");
			$("#t-list-cdm").find("tbody tr").find("td:eq(3)").attr("id","");
			$("#t-list-cdm").find("tbody tr td[class='m-target']").next("td").find("button").remove();
			$("#t-list-cdm").find("tbody tr td[class='d-target']").removeClass("d-target");
			$("#t-list-cdm").find("tbody tr td[class='m-target']").removeClass("m-target");
			$("#t-list-cdm").find("tbody tr td[id='"+curDep+"']").addClass("d-target");
			if(!isNaN(did)){
				collegeService.listMajorByDid(did,function(ms){
					$("#t-list-cdm").find("tbody tr:gt("+(colSize-1)+")").remove();
					for(var i=0;i<ms.length;i++) {
						var tar = $("#t-list-cdm").find("tbody tr").eq(i);
						if(tar.html()==undefined) {
							$("#t-list-cdm").find("tbody").append("<tr><td class='no-td filling'>#</td><td></td><td></td><td></td><td></td></tr>");
							$("#t-list-cdm").find("tbody").find("tr:odd").addClass("info").end().find("tr:even").addClass("warning");
							tar = $("#t-list-cdm").find("tbody tr").eq(i);
						}
						tar.find("td:eq(3)").attr("id",ms[i].name).html(ms[i].name);
					}
					$.each(ms,function(n,value){
						$("#cdm-major").append("<option value='"+value.id+"'>"+value.name+"</option>");
					})
				})
			}
		})
		$("#cdm-major").on("change",function(e){
			mid = $(this).val();
			var curMajor = $(this).find("option[value="+mid+"]").text();
			$("#t-list-cdm").find("tbody tr td[class='m-target']").next("td").find("button").remove();
			$("#t-list-cdm").find("tbody tr td[class='m-target']").removeClass("m-target");

			$("#t-list-cdm").find("tbody tr td[id='"+curMajor+"']").addClass("m-target");
			$("#t-list-cdm").find("tbody tr td[class='m-target']").next("td").append("<button id='cdm-update-btn' class='btn btn-primary btn-opera'>编辑</button><button id='cdm-delete-btn' class='btn btn-danger btn-opera'>删除</button>");
		})
		//按钮事件
		$("#t-list-cdm").on("click","#cdm-delete-btn",showDelCdm);
		$("#t-list-cdm").on("click","#cdm-update-btn",showUpdCdm);
	}
	
})(jQuery);