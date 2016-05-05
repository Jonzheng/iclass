<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery.cookie.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/icheck.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-pager.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-user.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-login.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-list-class.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-create-class.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/userService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/collegeService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/classroomService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/studentService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/classCourseService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/teacherCourseService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/shareFileService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/callRollService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/callTotalService.js"></script>
	<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/main-style.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/pager.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/blue.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/index-style.css" rel="stylesheet">
	<script type="text/javascript">
    $(function(){
 		$('input:radio[name="ca"]').on("change",function(){
 			console.log(11)
 		})
    	
		$('.panel-collapse').on('show.bs.collapse hide.bs.collapse', function () {
  	      	$(this).prev().find("span").toggleClass("glyphicon-chevron-down");
  	     })
    	$("#collapseCourse").collapse("show");
		$("#left-course-member").on("click",function(e){
			e.preventDefault();
			$("#course-syllabus").hide();
			$("#course-call-roll").hide();
			$("#course-member").show();
		});
		$("#left-course-syllabus").on("click",function(e){
			e.preventDefault();
			$("#course-member").hide();
			$("#course-call-roll").hide();
			$("#course-syllabus").show();
		});
		$("#left-course-call-roll").on("click",function(e){
			e.preventDefault();
			$("#course-member").hide();
			$("#course-syllabus").hide();
			$("#course-call-roll").show();
		});
		
		$("#menu-index").on("click",function(e){
			e.preventDefault();
			$("#user-box").hide();
			$("#class-box").hide();
			$("#course-box").hide();
			$("#index-box").show();
		})
		$("#menu-class").on("click",function(e){
			e.preventDefault();
			$("#user-box").hide();
			$("#index-box").hide();
			$("#course-box").hide();
			$("#class-box").show();
		})
		$("#menu-course").on("click",function(e){
			e.preventDefault();
			$("#user-box").hide();
			$("#class-box").hide();
			$("#index-box").hide();
			$("#course-box").show();
		})
		$('input').iCheck({
		    checkboxClass: 'icheckbox_flat-blue',
		    radioClass: 'iradio_flat-blue',
		    increaseArea: '50%'
		});
		//处理是否登录时导航栏
		var loginUser = $.cookie('loginUser');
		if(loginUser==undefined||loginUser==""){
			//console.log("loginUser-->"+"undefinded");
			$("#menu-u-login").clone().appendTo("#top-nav").show();
		} 
		if(loginUser!=undefined&&loginUser!=""){
			//console.log("loginUser-->"+loginUser)
			initLogined();
		}
		//---------jquery-class-myCourse----------------------
 		$("#left-course-member").on("click",function(){
 			var classId = $("#menu-u-avatar").data("classId");
			studentService.findStudentByCourseId(classId,1,15,function(pager){
				$.studentTable(pager,"#t-course-members");
				$.createPager(pager,"#list-course-member-pager",{callback:function(){
					var curPage = $("#list-course-member-pager").data("curPage");
					studentService.findStudentByCourseId(classId,curPage,15,function(pager){
						$.studentTable(pager,"#t-course-members");
					})
					}
				})
			})
		});
 		$("#left-course-call-roll").on("click",function(){
 			$("#t-call-total").hide();
 			$("#t-course-call").show();
 			callTotalService.loadByCouraseId(1,function(callTotal){
 				var courseId = callTotal.courseId;
 				var section = callTotal.section;
 				$("#course-call-roll-box").data("courseId",courseId);
 				$("#course-call-roll-box").data("section",section);
 				$("#call-section-size").find("option").remove();
 				for(var i=0;i<callTotal.section;i++){
 					$("#call-section-size").append('<option>'+(i+1)+'</option>');
 				}
 				$("#call-section-size").find("option").last().attr("selected",true)
 				callRollService.findByCourseIdAndSectionId(courseId,section,1,65,function(pager){
					$.callRollTable(pager,"#t-course-call",callTotal);
					$.createPager(pager,"#list-course-call-pager",{callback:function(){
						var curPage = $("#list-course-call-pager").data("curPage");
						studentService.findStudentByCourseId(courseId,curPage,90,function(pager){
							$.callRollTable(pager,"#t-course-call");
						})
						}
					})
 				});
 			});
		});
 		$("#update-rule").on("click",function(){
			callTotalService.loadByCouraseId(1,function(callTotal){
				//console.log(callTotal)
				$("#course-call-roll-box").data("courseId",callTotal.courseId);
				$("#course-call-roll-box").data("id",callTotal.id);
				$("#course-call-roll-box").data("section",callTotal.section);
	 			$("#rule-present").val(callTotal.present);
	 			$("#rule-absent").val(callTotal.absent);
	 			$("#rule-late").val(callTotal.late);
	 			$("#rule-dayoff").val(callTotal.dayoff);
			});
 			$("#modal-update-rule").modal("show");
 		})
 		$("#update-rule-save").on("click",function(){
 			var present = $("#rule-present").val();
 			var absent = $("#rule-absent").val();
 			var late = $("#rule-late").val();
 			var dayoff = $("#rule-dayoff").val();
 			var courseId = $("#course-call-roll-box").data("courseId");
 			var id = $("#course-call-roll-box").data("id");
 			var section = $("#course-call-roll-box").data("section");
 			var callRule = {"id":id,"section":section,"courseId":courseId,"present":present,"absent":absent,"late":late,"dayoff":dayoff};
 			callTotalService.updateCallTotal(callRule,function(){
	 			$("#modal-update-rule").modal("hide");
 			})
 		})
 		//TODO
 		$("#new-call").on("click",function(){
 			var courseId = $("#course-call-roll-box").data("courseId");
 			var section = $("#course-call-roll-box").data("section");
			callRollService.newCallRoll(courseId,section,function(){
				$("#left-course-call-roll").trigger("click");
 			})
 		});
 		$("#call-section-size").on("change",function(){
 			$("#t-call-total").hide();
 			$("#t-course-call").show();
 			var courseId = $("#course-call-roll-box").data("courseId");
 			var section = $(this).find("option:selected").text();
			callRollService.findByCourseIdAndSectionId(courseId,section,1,65,function(pager){
				callTotalService.loadByCouraseId(courseId,function(rule){
					$.callRollTable(pager,"#t-course-call",rule);
					$.createPager(pager,"#list-course-call-pager",{callback:function(){
						var curPage = $("#list-course-call-pager").data("curPage");
						callRollService.findByCourseIdAndSectionId(courseId,section,curPage,65,function(pager){
							$.callRollTable(pager,"#t-course-call",rule);
						})
						}
					})
				})
			});
 		});
 		$("#total-call").on("click",function(){
 			$("#t-course-call").hide();
 			$("#t-call-total").show();
 			callTotalService.loadByCouraseId(1,function(callTotal){
 				var courseId = callTotal.courseId;
 				var section = callTotal.section;
 				$("#course-call-roll-box").data("courseId",courseId);
 				$("#course-call-roll-box").data("section",section);
 				$("#call-section-size").find("option").remove();
 				for(var i=0;i<callTotal.section;i++){
 					$("#call-section-size").append('<option>'+(i+1)+'</option>');
 				}
 				$("#call-section-size").find("option").last().attr("selected",true)
 				callRollService.findByCourseIdAndSectionId(courseId,section,1,15,function(pager){
 					
 					$.callTotalTable(pager,"#t-call-total");
					$.createPager(pager,"#list-call-total-pager",{callback:function(){
						var curPage = $("#list-call-total-pager").data("curPage");
						callRollService.findByCourseIdAndSectionId(courseId,section,curPage,15,function(pager){
							$.callTotalTable(pager,"#t-call-total");
						})
						}
					})
 				});
 			});
 		})
		//成员搜索
		$("#course-members-search").on("focusin",function(){
			$(this).select();
			$(this).animate({width:182},300);
		})
		$("#course-members-search").on("focusout",function(){
			$(this).animate({width:92},300);
		})
		$("#course-members-search").on("keyup",function(){
			var str = $("#course-members-search").val().trim();
			studentService.findByStringAndCourseId(1,str,1,15,function(pager){
				$.studentTable(pager,"#t-course-members");
				$.createPager(pager,"#list-course-member-pager",{callback:function(){
					var curPage = $("#list-course-member-pager").data("curPage");
					studentService.findByStringAndCourseId(1,str,curPage,15,function(pager){
						$.studentTable(pager,"#t-course-members");
					})
					}
				})
			})
		});
		$("#left-course-syllabus").on("click",function(){
			teacherCourseService.listByTeacherId(1,function(courses){
				$.each(courses,function(n,value){
					switch(value.day)
					{
						case 1:{  //周一
							var day = "#day-1";
							switchDay(value,day,"#teacher-course");
							break;
						}
						case 2:{  //周二
							var day = "#day-2";
							switchDay(value,day,"#teacher-course");
							break;
						}
						case 3:{  //周三
							var day = "#day-3";
							switchDay(value,day,"#teacher-course");
							break;
						}
						case 4:{  //周四
							var day = "#day-4";
							switchDay(value,day,"#teacher-course");
							break;
						}
						case 5:{  //周五
							var day = "#day-5";
							switchDay(value,day,"#teacher-course");
							break;
						}
						default:{
							console.log(value);
							console.log("----error----");
							break;
						}
					}
				})
			})
		});
		$("#teacher-course").find(".day").on("click",function(){
			//console.log($(this).data("id"))
			var day = $(this).data("id");
			var dayId = "#day-"+day;
			var box = "#teacher-course";
			var name = $(box).find(dayId).find("#c-1").find(".course-b:first").find("#course-name").text();
			var teacher = $(box).find(dayId).find("#c-1").find(".course-b:first").find("#course-teacher").text();
			var place = $(box).find(dayId).find("#c-1").find(".course-b:first").find("#course-place").text();
			if(name=="") name = $("#course-name").text();
			if(teacher=="") teacher = $("#course-creator").text();
			//初始编辑框
			$("#to-day").val(day);
			$("#to-name").val(name);
			$("#to-teacher").val(teacher);
			$("#to-place").val(place);
			$("#tsele-course").val(1);
			$("#to-box").data("dayId",dayId);
			$("#to-box").data("cId","#c-1");
			$("#modal-teacher-course").modal("show");
		});
		$("#tsele-course").on("change",function(){
			var day = $("#to-day").val();
			var dayId = "#day-"+day;
			var cId = "#c-"+$(this).val();
			var box = "#teacher-course";
			var name = $(box).find(dayId).find(cId).find(".course-b:first").find("#course-name").text();
			var teacher = $(box).find(dayId).find(cId).find(".course-b:first").find("#course-teacher").text();
			var place = $(box).find(dayId).find(cId).find(".course-b:first").find("#course-place").text();
			if(name=="") name = $("#course-name").text();
			if(teacher=="") teacher = $("#course-creator").text();
			$("#to-name").val(name);
			$("#to-teacher").val(teacher);
			$("#to-place").val(place);
			$("#to-box").data("dayId",dayId);
			$("#to-box").data("cId",cId);
		});
		$("#t-course-save").on("click",function(){
			var dayId = $("#to-box").data("dayId");
			var cId = $("#to-box").data("cId");
			var box = "#teacher-course";
			var id = $(box).find(dayId).find(cId).data("id");
			var teacherId = $(box).find(dayId).find(cId).data("teacherId");
			var start = $(box).find(dayId).find(cId).data("start");
			var last = $(box).find(dayId).find(cId).data("last");
			var day = $("#to-day").val();
			var name = $("#to-name").val();
			var teacher = $("#to-teacher").val();
			var place = $("#to-place").val();
			var course = {"id":id,"teacherId":teacherId,"start":start,"last":last,"day":day,"courseName":name,"courseTeacher":teacher,"coursePlace":place};
			//console.log(course);
			teacherCourseService.updateTeacherCourse(course,function(){
				$("#modal-teacher-course").modal("hide");
				setCourse(cId,dayId,course,"#teacher-course");
			})
		});
		
		//---------jquery-class-myClass----------------------
		$("#class-member").on("click",function(){
			var classId = parseInt($.cookie('classId'));
			studentService.findStudentByClassId(classId,1,15,function(pager){
				$.studentTable(pager,"#t-class-members");
				$.createPager(pager,"#list-class-member-pager",{callback:function(){
					var curPage = $("#list-class-member-pager").data("curPage");
					studentService.findStudentByClassId(classId,curPage,15,function(pager){
						$.studentTable(pager,"#t-class-members");
					})
					}
				})
			})
		});
		//成员搜索
		$("#class-members-search").on("focusin",function(){
			$(this).select();
			$(this).animate({width:182},300);
		})
		$("#class-members-search").on("focusout",function(){
			$(this).animate({width:92},300);
		})
		$("#class-members-search").on("keyup",function(){
			var str = $("#class-members-search").val().trim();
			studentService.findByStringAndClassId(0,str,1,15,function(pager){
				$.studentTable(pager,"#t-class-members");
				$.createPager(pager,"#list-class-member-pager",{callback:function(){
					var curPage = $("#list-class-member-pager").data("curPage");
					studentService.findByStringAndClassId(0,str,curPage,15,function(pager){
						$.studentTable(pager,"#t-class-members");
					})
					}
				})
			})
		})
		
		//课程表
		$(".day").on("mouseenter",function(){
			$(this).find("#day-course-edit").show();
			$(this).addClass("day-se");
		})
		$(".day").on("mouseleave",function(){
			$(this).find("#day-course-edit").hide();
			$(this).removeClass("day-se");
		})
		$("#sele-course").on("change",function(){
			var day = $("#co-day").val();
			var dayId = "#day-"+day;
			var cId = "#c-"+$(this).val();
			var name = $(dayId).find(cId).find(".course-b:first").find("#course-name").text();
			var teacher = $(dayId).find(cId).find(".course-b:first").find("#course-teacher").text();
			var place = $(dayId).find(cId).find(".course-b:first").find("#course-place").text();
			$("#co-name").val(name);
			$("#co-teacher").val(teacher);
			$("#co-place").val(place);
			$("#co-box").data("dayId",dayId);
			$("#co-box").data("cId",cId);
		})
		$("#class-course").find(".day").on("click",function(){
			//console.log($(this).data("id"))
			var day = $(this).data("id");
			var dayId = "#day-"+day;
			var box = "#class-course";
			var name = $(box).find(dayId).find("#c-1").find(".course-b:first").find("#course-name").text();
			var teacher = $(box).find(dayId).find("#c-1").find(".course-b:first").find("#course-teacher").text();
			var place = $(box).find(dayId).find("#c-1").find(".course-b:first").find("#course-place").text();
			//初始编辑框
			$("#co-day").val(day);
			$("#co-name").val(name);
			$("#co-teacher").val(teacher);
			$("#co-place").val(place);
			$("#sele-course").val(1);
			$("#co-box").data("dayId",dayId);
			$("#co-box").data("cId","#c-1");
			$("#modal-class-course").modal("show");
		});
		$("#course-save").on("click",function(){
			var dayId = $("#co-box").data("dayId");
			var cId = $("#co-box").data("cId");

			var id = $(dayId).find(cId).data("id");
			var classId = $(dayId).find(cId).data("classId");
			var start = $(dayId).find(cId).data("start");
			var last = $(dayId).find(cId).data("last");
			var day = $("#co-day").val();
			var name = $("#co-name").val();
			var teacher = $("#co-teacher").val();
			var place = $("#co-place").val();
			var course = {"id":id,"classId":classId,"start":start,"last":last,"day":day,"courseName":name,"courseTeacher":teacher,"coursePlace":place};
			classCourseService.updateClassCourse(course,function(){
				$("#modal-class-course").modal("hide");
				setCourse(cId,dayId,course,"#class-course");
			})
		});
		function setCourse(c,day,value,box) {
			//保存不显示数据
			$(box).find(day).find(c).data("classId",value.classId);
			$(box).find(day).find(c).data("teacherId",value.teacherId);
			$(box).find(day).find(c).data("id",value.id);
			$(box).find(day).find(c).data("start",value.start);
			$(box).find(day).find(c).data("last",value.last);
			name = value.courseName;
			teacher = value.courseTeacher;
			place = value.coursePlace;
			$(box).find(day).find(c).find("div").remove();
			$(box).find(day).find(c).append('<div class="course-c"></div><div class="course-c"></div>');
			if(name==""||teacher==""||place=="") {
				return;
			}
			if(name==null||teacher==null||place==null) {
				return;
			}
			$(box).find(day).find(c).find("div").remove();
			$(box).find(day).find(c).append('<div class="course-b"><span id="course-name">-</span><br><span id="course-teacher"class="text-info">-</span><br><span id="course-place" class="text-danger">-</span></div>');
			$(box).find(day).find(c).find("#course-name").text(name);
			$(box).find(day).find(c).find("#course-teacher").text(teacher);
			$(box).find(day).find(c).find("#course-place").text(place);
		}
		function switchDay(value,day,box) {
			$(box).find(day).data("id",value.day);
			switch(value.start)  //第几节课
			{
				case 1:{
					var c  = "#c-1";
					setCourse(c,day,value,box);
					break;
				}
				case 3:{
					var c  = "#c-3";
					setCourse(c,day,value,box);
					break;
				}
				case 5:{
					var c  = "#c-5";
					setCourse(c,day,value,box);
					break;
				}
				case 7:{
					var c  = "#c-7";
					setCourse(c,day,value,box);
					break;
				}
			}
		}
		$("#class-syllabus").on("click",function(){
			classCourseService.listByClassId(1,function(courses){
				$.each(courses,function(n,value){
					switch(value.day)
					{
						case 1:{  //周一
							var day = "#day-1";
							switchDay(value,day,"#class-course");
							break;
						}
						case 2:{  //周二
							var day = "#day-2";
							switchDay(value,day,"#class-course");
							break;
						}
						case 3:{  //周三
							var day = "#day-3";
							switchDay(value,day,"#class-course");
							break;
						}
						case 4:{  //周四
							var day = "#day-4";
							switchDay(value,day,"#class-course");
							break;
						}
						case 5:{  //周五
							var day = "#day-5";
							switchDay(value,day,"#class-course");
							break;
						}
						default:{
							console.log(value);
							console.log("----error----");
							break;
						}
					}
				})
			})
		})
		//共享文件上传
		$("#class-share").uploadify({
			'width' : 90,
			'queueSizeLimit' : 3,
			'buttonText' : '上传文件',
			'buttonClass' : 'btn-class-share',
			'fileTypeExts' : ' *.xlsx; *.docx; *.doc; *.rar; *.zip',
			'swf' : "../uploadify/uploadify.swf",
			'uploader':"../../uploadShare",
			'onUploadStart' : function(file) {
				if(file.size>50000000) {
					alert("上传文件不能大于50M");
					return;
				}
			},
	       'onUploadSuccess' : function(file, data, response) {
	    	   $("#share-file").trigger("click");
	        }
		});
		$("#share-file").on("click",function(){
			$("#file").find("hr").find("div").remove();
			shareFileService.listFile(function(files){
				$.each(files,function(n,value){
					var path = value.path;
					var date = value.date;
					var time = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
					$("#file").find("hr").append('<div class="class-container"><div class="class-desc"><h4 class="text-primary"><span id="file-na">'+value.name+'</span></h4><p class="text-muted">上传者:<span id="file-up">'+value.uploader+'</span>&nbsp;&nbsp;时间:<span id="file-ti">'+time+'</span></p></div><div class="btn-div"><a class="class-btn" href="/iclass/downloadShare?id='+value.id+'">下载</a></div></div>');
				})
			});
		})
/* 		$("#class-members-page-size").on("change",function(e){
			var size = parseInt($("#class-members-page-size").find("option:selected").text());
			studentService.findStudent(1,size,function(pager){
				var stus = pager.datas;
				$.stuTable(pager);
				$.createPager(pager,"#list-class-member-pager",{callback:function(){
					var curPage = $("#list-class-member-pager").data("curPage");
					studentService.findStudent(curPage,size,function(pager){
						$.studentTable(pager);
					})
				}
				})
			})
		}) */
    })
	</script>
<title>Home</title>
</head>
<body>
  <div class="container-top">
  	<div class="top-top"></div>
  	<div class="top-picture">
  	</div>
  	<div class="container-navbar">
  	<div class="nav-container">
	  	<ul id="top-nav" class="nav top-nav">
		  	<li><a id="menu-index"href=""><span class="glyphicon glyphicon-home"></span>&nbsp;首页</a></li>
		    <li><a id="menu-class"href="">班级</a></li>
		    <li><a id="menu-course"href="#">课程</a></li>
		    <li><a href="#">About</a></li>
		    <li><a href="../admin/admin.jsp">后台</a></li>
		    <!-- 登录 -->
		    
	    </ul>
  	</div>
  	<ul id="logined-item" class="none">
  			<li id="menu-u-login"><button data-toggle="popover" 
  										data-content="密码修改成功,请重新登录!"
  										data-placement="left"
  										id="menu-login" class="pull-right btn btn-info menu-login-btn" href="">登录/注册</button></li>
  			<li id="menu-u-syllabus"><div class="menu-in">课程表</div></li>
		    <li id="menu-u-info"><div id="u-info"class="menu-in">消息&nbsp;<span class="badge">1</span></div></li>
	    	<li id="menu-u-avatar"><div id="u-avatar" class="menu-avatar"></div></li>
  	</ul>
  	</div>
  </div> <!-- container-top-end -->
  
<!-- 首页 -->
  	<div id="index-box" class="index-box">
  	 <div id="index-content" class="index-content">
<!-- 轮播  -->
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
		    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
		  </ol>
		  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
			    <div class="item active">
			      <img src="../img/slide-01.png" alt="...">
			      <div class="carousel-caption">
			        <h3>First slide label</h3>
			    	<p>800*500.Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
			      </div>
			    </div>
			    <div class="item">
			      <img src="../img/slide-02.png" alt="...">
			      <div class="carousel-caption">
			        <h3>Second slide label</h3>
			    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.img-size:800*500</p>
			      </div>
			    </div>
			     <div class="item">
			      <img src="../img/slide-03.png" alt="...">
			      <div class="carousel-caption">
			        <h3>Third slide label</h3>
			    	<p>img-size:800*500.Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
			      </div>
			    </div>
			  </div>
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		    <span class="glyphicon glyphicon-chevron-left"></span>
		  </a>
		  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		    <span class="glyphicon glyphicon-chevron-right"></span>
		  </a>
		</div>
<!-- 右边空区  -->
			<div class="right-box" id="right-box">
			</div>
  	 </div><!-- index-content end -->
  	</div>
  	
<!-- 登录/注册 -->
	<jsp:include page="box-login.jsp" flush="true"/>
<!-- 个人信息 -->
	<jsp:include page="box-info.jsp" flush="true"/>
<!-- 班级 -->
	<jsp:include page="box-class.jsp" flush="true"/>
<!-- 课程 -->
	<jsp:include page="box-course.jsp" flush="true"/>
<!-- 底部 -->
	<div class="footer border-y">
		<span class="text-muted">zhengzran@gmail.com</span><br>
		<span class="text-muted">Copyright © 2015-2016 Jonzheng. All rights reserved.</span>
	</div>
  </body>
  <script type="text/javascript">
  	$(function(){
  		initLogin();
  		initCreateClass();
  		initListClass();
  	})
  </script>
</html>