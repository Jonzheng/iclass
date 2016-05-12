(function($){
	initListClass = function(e) {
		$("#left-my-class").on("click",function(e){
			e.preventDefault();
			$("#create-class").hide();
			$("#list-class").hide();
			$("#select-course").hide();
			studentService.loadByUserId($.cookie("userId"),function(stu){
				if(stu.classId == "0") {
					alert("未加入任何班级");
					return;
				} else{
					$("#my-class").show();
					$.cookie('classId',stu.classId);
				}
			});
		});
		$("#left-join-class").on("click",function(e){
			e.preventDefault();
			$("#my-class").hide();
			$("#create-class").hide();
			$("#select-course").hide();
			$("#list-class").show();
			//初始化筛选
			cleanFilter();
			collegeService.listCollege(function(colleges){
				$.each(colleges,function(n,value){
					$("#f-college").append("<option value='"+value.id+"'>"+value.name+"</option>");
				})
			});
			$.findAllClassroom();
		});
		
		$("#left-join-course").on("click",function(e){
			e.preventDefault();
			$("#create-class").hide();
			$("#list-class").hide();
			$("#my-class").hide();
			courseService.findCourse(function(pager){
				var cs = pager.datas;
				$("#select-course-box").find("div").remove();
				$.each(cs,function(n,value){
					$("#select-course-box").append('<div class="tag"><span>'+value.name+'-'+value.teacher+'</span></div>');
				})
				$("#select-course").show();
			});
		});
		
		//选项框事件
		$("#f-college").on("change",function(e){
			$("#f-department").find("option").not(":first-child").remove();
			$("#f-major").find("option").not(":first-child").remove();
			if($(this).val()==-1) {
				$.findAllClassroom();
			} else {
				//学校过滤
				var cn = $("#f-college").find("option:selected").text();
				classroomService.findByCollege(cn,1,6,function(pager){
					var result = pager.datas;
					fillClass(pager);
					var ds = new Array();
					$.each(result,function(n,value){
						//记录系别到数组
						ds.push(value.department);
						$.listClassroom(pager);
						$.createPager(pager,"#list-classroom-pager",{callback:function(){
							var curPage = $("#list-classroom-pager").data("curPage");
							classroomService.findByCollege(cn,curPage,6,function(pager){
		 						$.listClassroom(pager);
							})
							}
						})
					});
					//初始化系别
					ds.sort();
					$.unique(ds);
					$.each(ds,function(n,v){
						$("#f-department").append("<option >"+v+"</option>");
					});
				});
			}
		})
		$("#f-department").on("change",function(e){
			$("#f-major").find("option").not(":first-child").remove();
			var cn = $("#f-college").find("option:selected").text();
			if(!isNaN($(this).val())) {
				classroomService.findByCollege(cn,1,6,function(pager){
					var result = pager.datas;
					fillClass(pager);
					$.each(result,function(n,value){
						$.listClassroom(pager);
						$.createPager(pager,"#list-classroom-pager",{callback:function(){
							var curPage = $("#list-classroom-pager").data("curPage");
							classroomService.findByCollege(cn,curPage,6,function(pager){
		 						$.listClassroom(pager);
							})
							}
						})
					});
				});
			} else {
				//系别过滤
				var dn = $(this).find("option:selected").text();
				classroomService.findByCD(cn,dn,1,6,function(pager){
					var result = pager.datas;
					fillClass(pager);
					var ms = new Array();
					$.each(result,function(n,value){
						//记录专业到数组
						ms.push(value.major);
						$.listClassroom(pager);
						$.createPager(pager,"#list-classroom-pager",{callback:function(){
							var curPage = $("#list-classroom-pager").data("curPage");
							classroomService.findByCD(cn,dn,curPage,6,function(pager){
		 						$.listClassroom(pager);
							})
							}
						})
					});
					//初始化专业
					ms.sort();
					$.unique(ms);
					$.each(ms,function(n,v){
						$("#f-major").append("<option >"+v+"</option>");
					})
				});
			}
		})
		$("#f-major").on("change",function(e){
			var cn = $("#f-college").find("option:selected").text();
			var dn = $("#f-department").find("option:selected").text();
			if(!isNaN($(this).val())) {
				classroomService.findByCD(cn,dn,1,6,function(pager){
					var result = pager.datas;
					fillClass(pager);
					$.each(result,function(n,value){
						$.listClassroom(pager);
						$.createPager(pager,"#list-classroom-pager",{callback:function(){
							var curPage = $("#list-classroom-pager").data("curPage");
							classroomService.findByCD(cn,dn,curPage,6,function(pager){
		 						$.listClassroom(pager);
							})
							}
						})
					});
				});
			} else {
				//专业过滤
				var mn = $(this).find("option:selected").text();
				classroomService.findByCDM(cn,dn,mn,1,6,function(pager){
					var result = pager.datas;
					fillClass(pager);
					$.each(result,function(n,value){
						$.listClassroom(pager);
						$.createPager(pager,"#list-classroom-pager",{callback:function(){
							var curPage = $("#list-classroom-pager").data("curPage");
							classroomService.findByCDM(cn,dn,mn,curPage,6,function(pager){
		 						$.listClassroom(pager);
							})
							}
						})
					})
				})
			}
		})
		
		//搜索过滤---keyup
		$("#search-input").on("keyup",function(e){
			doSearch();
		})
		//搜索过滤---按钮点击
		$("#classroom-find").on("click",function(e){
			doSearch();
		})
		$("#search-input").on("focusin",function(e){
			$(this).select();
		})
	}
	
	toClass = function(classId){
		studentService.loadByUserId($.cookie("userId"),function(stu){
			if(stu.name == "" || stu.name == null || stu.studentId == "" || stu.studentId == null){
				alert("请先填写个人信息");
				return;
			}
			studentService.toClass(stu.id,classId,function(){
				alert("已申请加入班级，请等待审批");
			})
		})
	}
	
	$.listClassroom = function(pager) {
		var cs = pager.datas;
		$("#class-item-container").find(".class-container").remove();
		$.each(cs,function(n,value){
			$('#class-item-container').append("<div id='class-item' class='class-container'><div class='class-number'><p class='text-muted'><span>"+
	    	value.id+"</span></p></div><div id='class-pic' class='class-pic'></div><div class='class-desc'><h4 class='text-primary'><small class='text-primary'><span id='l-grade'>"+value.grade
	    	+"</span><span>—</span></small><span id='l-cna'>"+value.className
	    	+"</span></h4><p class='text-muted'>班主任:<span id='l-teacher'>"+value.teacher
	    	+"</span>&nbsp;&nbsp;班长:<span id='l-monitor'>"+value.monitor
	    	+"</span></p></div><div class='btn-div'><a class='class-btn' href='javascript:toClass("+value.id+")'>申请加入</a></div></div>");
			//图片载入
			var img = "../collegeIco/"+value.imgName;
			$("#class-item-container").find("#class-item:last-child #class-pic").css("background-image","url("+img+")");
		});
		//空补齐
		if(cs.length<pager.size);
		var ex = pager.size-cs.length;
		for(var i=0;i<ex;i++) {
			$('#class-item-container').append("<div id='class-item' class='class-container'></div>");
		}
	}
	$.findAllClassroom = function(e) {
		classroomService.findClassroom(1,6,function(pager){
			$.listClassroom(pager);
			$.createPager(pager,"#list-classroom-pager",{callback:function(){
				var curPage = $("#list-classroom-pager").data("curPage");
					classroomService.findClassroom(curPage,6,function(pager){
						$.listClassroom(pager);
				})
				}
			})
		})
	}
	cleanFilter = function(e) {
		$("#f-major").find("option").not(":first-child").remove();
		$("#f-department").find("option").not(":first-child").remove();
		$("#f-college").find("option").not(":first-child").remove();
	}
	reflashFilter = function(e) {
		$("#f-major").find("option").not(":first-child").remove();
		$("#f-department").find("option").not(":first-child").remove();
		$("#f-college").find("option")[0].selected = true;
	}
	fillClass = function(pager) {
		var result = pager.datas;
		if(result.length==0) {
			$("#class-item-container").find(".class-container").remove();
			for(var i=0;i<pager.size;i++) {
				$('#class-item-container').append("<div id='class-item' class='class-container'></div>");
			}
		}
	}
	doSearch = function(e) {
		reflashFilter();
		var str = $("#search-input").val().trim();
		classroomService.findByString(str,1,6,function(pager){
			var result = pager.datas;
			fillClass(pager);
			$.each(result,function(n,value){
				$.listClassroom(pager);
				$.createPager(pager,"#list-classroom-pager",{callback:function(){
					var curPage = $("#list-classroom-pager").data("curPage");
					classroomService.findByString(str,curPage,6,function(pager){
 						$.listClassroom(pager);
					})
					}
				})
			})
		})
	}
	
})(jQuery);