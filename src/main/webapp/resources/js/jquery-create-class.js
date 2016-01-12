(function($){
	
	initCreateClass = function(e){
		
		$("#menu-class").on("click",function(e){
			e.preventDefault();
			$("#user-box").hide();
			$("#index-box").hide();
			$("#class-box").show();
		})
		
		//点进页面初始化第一个选项框
		$("#left-create-class").on("click",function(e){
			e.preventDefault();
			$("#my-class").hide();
			$("#list-class").hide();
			$("#create-class").show();
			cleanCreate();
			collegeService.listCollege(function(colleges){
				$.each(colleges,function(n,value){
					$("#c-college").append("<option value='"+value.id+"'>"+value.name+"</option>");
				})
			});
		})
		//选项框事件
		$("#c-college").on("change",function(e){
			$("#college-ico").hide(100);
			$("#c-department").find("option").not(":first-child").remove();
			$("#c-major").find("option").not(":first-child").remove();
			var cid = $(this).val();
			if(!isNaN(cid)){
				//加载校徽
				collegeService.loadCollege(cid,function(c){
					$("#c-college").data("imgName",c.imgName);
					var img = "../collegeIco/"+c.imgName;
					$("#college-ico").css("background-image","url("+img+")");
					$("#pre-pic").css("background-image","url("+img+")");
					$("#college-ico").show(200);
				});
				collegeService.listDepartmentByCid(cid,function(departments){
					$.each(departments,function(n,value){
						$("#c-department").append("<option value='"+value.id+"'>"+value.name+"</option>");
					})
				})
			}
		})
		$("#c-department").on("change",function(e){
			$("#c-major").find("option").not(":first-child").remove();
			collegeService.listMajorByDid($(this).val(),function(majors){
				$.each(majors,function(n,value){
					$("#c-major").append("<option value='"+value.id+"'>"+value.name+"</option>");
				})
			})
		})

	
		$("#c-link").on("click",function(e){
			$("#apply-cdm-modal").modal('show');
		})
		
		
		$("#in-teacher").on("focusout",function(){
 	    	var str = $(this).val();
 	    	isShort(str,18,"#v-teacher");
 	    })
 	    $("#in-monitor").on("focusout",function(){
 	    	 var str = $(this).val();
 	    	 isShort(str,18,"#v-monitor");
 	    })
  		$("#classroom-cancel").on("click",function(e){
  			$("#left-create-class").trigger("click");
  		})
  		$("#classroom-pre").on("click",function(e){
  			$("#create-selete").find("input").focusout();
  			$("#v-classroom").fadeOut(100);
  			if($("#c-college").val()=="s"||$("#c-department").val()=="s"||$("#c-major").val()=="s"||$("#c-class").val()=="s"||$("#c-grade").val()=="s"){
  				$("#v-classroom").fadeIn(100);
  				$("#v-classroom").html("*请确认从属、年级、班别都已选择");
  			}
  			if($("#c-college").val()!="s"&&$("#c-department").val()!="s"&&$("#c-major").val()!="s"&&$("#c-class").val()!="s"&&$("#c-grade").val()!="s"){
  				$("#v-classroom").fadeIn();
  				$("#v-classroom").html("");
  			}
  			if(isValidate("#create-selete")&&$("#v-classroom").html()=="") {
	  			$("#modal-pre").modal('show');
	  			var major = $("#c-major").find("option[value="+$("#c-major").val()+"]").text();
	  			$("#preview-class").find("#mc").html(major+$("#c-class").val());
	  			$("#preview-class").find("#pre-grade").html($("#c-grade").val());
	  			$("#preview-class").find("#pre-teacher").html($("#in-teacher").val());
	  			$("#preview-class").find("#pre-monitor").html($("#in-monitor").val());
  			}
  		})
  		$("#pre-create").on("click",function(e){
  			var co = $("#c-college").find("option[value="+$("#c-college").val()+"]").text();
  			var de = $("#c-department").find("option[value="+$("#c-department").val()+"]").text();
  			var ma = $("#c-major").find("option[value="+$("#c-major").val()+"]").text();
  			var gr = $("#c-grade").val();
  			var cno = $("#c-class").val();
  			var te = $("#in-teacher").val().trim();
  			var mo = $("#in-monitor").val().trim();
  			var img = $("#c-college").data("imgName");
  			var cna = ma+cno;
  			var cr = {'college':co,'department':de,'major':ma,'grade':gr,'classNo':cno,'className':cna,'teacher':te,'monitor':mo,'imgName':img};
  			classroomService.addClassroom(cr,function(e){
  				$("#modal-pre").modal('hide');
  			});
  		})
  		
   		$("#apply-cdm-add").on("click",function(e){
  	    	$("#apply-cdm-container").find("input").focusout();
  	    	if(isValidate("#apply-cdm-container")) {
  	    		//执行添加
  	    		var cname = $("#cdm-in-college").val();
  	    		var dname = $("#cdm-in-department").val();
  	    		var mname = $("#cdm-in-major").val();
    			var cdm = {"collegeName":cname,"departmentName":dname,"majorName":mname};
    			if(cname.trim()==""||dname.trim()==""||mname.trim()=="") {
    				$("#apply-cdm-modal").modal('hide');
    				return;
    			}
 	    		collegeService.addApplyCdm(cdm);
    			$("#apply-cdm-modal").modal('hide');
  	    	}
  		})
	}
	/*---------------------------*/
	cleanCreate = function(e){
		$("#college-ico").hide(100);
		$("#c-major").find("option").not(":first-child").remove();
		$("#c-department").find("option").not(":first-child").remove();
		$("#c-college").find("option").not(":first-child").remove();
		$("#c-grade").find("option").not(":first-child").remove();
		$("#c-class").find("option").not(":first-child").remove();
		appendGrade();
		appendClass();
		$("#in-teacher").val("");
		$("#in-monitor").val("");
		$("#v-classroom").html("");
		$("#v-teacher").html("");
		$("#v-monitor").html("");
	}
	appendGrade = function(e){
		$("#c-grade").append("<option>2008级</option><option>2009级</option><option>2010级</option><option>2011级</option><option>2012级</option><option>2013级</option><option>2014级</option><option>2015级</option><option>2016级</option><option>2017级</option><option>2018级</option><option>2019级</option>");
	}
	appendClass = function(e){
		$("#c-class").append("<option>1班</option><option>2班</option><option>3班</option><option>4班</option><option>5班</option>");
	}
	
	/*---------------------------*/
})(jQuery);