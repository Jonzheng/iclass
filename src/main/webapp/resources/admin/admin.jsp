<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/uploadify/jquery.uploadify.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-pager.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-user.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-cdm.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/jquery-validate.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/dwr/engine.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/userService.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/dwr/interface/collegeService.js"></script>
	<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/uploadify/uploadify.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/back-style.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/pager.css" rel="stylesheet">
	<script type="text/javascript">
		$(function(){
			$("#search").on("focusin",function(){
				$(".add-btn").fadeOut(0);
				$(this).animate({width:158},300);
			})
			$("#search").on("focusout",function(){
				$(this).animate({width:92},300,function(){
					$(".add-btn").fadeIn(0);
				});
			})
/* 			$("#left-user").on("click",function(event){
				event.preventDefault();
				userService.findUser(1,5,function(pager){
					//填充表格
					$.userTable(pager);
	 				//初始化页码
	 				$.createPager(pager,{callback:function(){
	 					var curPage = $(".page").data("curPage");
	 					userService.findUser(curPage,5,function(pager){
	 						$.userTable(pager);
	 					});
	 					}
	 				});
				});
			})
			//绑定change事件
  			$("#page-size").on("change",function(){
 				var pageSize = $(this).val();
 				//init(1,3);
 				//查找数据
 				userService.findUser(1,pageSize,function(pager){
 					//填充表格
 					$.userTable(pager);
	 				//初始化页码
	 				$.createPager(pager,{callback:function(){
	 					var curPage = $(".page").data("curPage");
	 					userService.findUser(curPage,pageSize,function(pager){
	 						$.userTable(pager);
	 					});
	 					}
	 				});
 				});
			});*/
  	      $('.panel-collapse').on('show.bs.collapse hide.bs.collapse', function () {
  	      	$(this).prev().find("span").toggleClass("glyphicon-chevron-down");
  	      })
  	      
  	      //测试modal框
 		 $(".add-btn").on("click",function(event){
 			event.preventDefault();
 			cleanModal();
			$('#add-modal').modal('show')
		 });
  	     //测试验证
  	     $("#in-email").on("focusout",function(){
  	    	 var str = $(this).val();
  	    	 isNull(str,"#v-email");
  	    	 isEmail(str,"#v-email");
  	     })
  	     $("#in-phone").on("focusout",function(){
  	    	 var str = $(this).val();
  	    	 isNull(str,"#v-phone");
  	    	 isPhone(str,"#v-phone");
  	     })
  	     $("#in-nickname").on("focusout",function(){
  	    	 var str = $(this).val();
  	    	 isNull(str,"#v-nickname");
  	     })
  	     $("#in-password").on("focusout",function(){
  	    	 var str = $(this).val();
  	    	 isNull(str,"#v-password");
  	    	 isLegal(str,3,"#v-password");
  	     })
  	     $("#in-rePassword").on("focusout",function(){
  	    	 var str = $(this).val();
  	    	 var password = $("#in-password").val();
  	    	 isNull(str,"#v-rePassword");
  	    	 equalTo(str,password,"#v-rePassword");
  	     })
  	     
  	     $("#modal-add").click(function(){
  	    	$("form").find("input").focusout();
  	    	if(isValidate("form")) {
  	    		//执行添加
  	    		var email = $("#in-email").val();
  	    		var nickname = $("#in-nickname").val();
  	    		var phone = $("#in-phone").val();
  	    		var password = $("#in-password").val();
	    		var type = $("label[class$='active']").find("input").val();
	    		if(type=="admin") {
	    			var u = {"email":email,"nickname":nickname,"password":password,"phone":phone,"type":type}
  	    			userService.add(u,type);
	    			$('#add-modal').modal('hide')
	    		}
  	    	}
  	     })

		});
	</script>
<title>Back</title>
</head>
<body>
<!-- Modal -->
<div class="modal fade" id="add-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">添加用户</h4>
      </div>
      <div class="modal-body">
      	<form class="form-horizontal" role="form">
		  <div class="form-group">
		    <label for="in-email" class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-6">
		      <input type="email" class="form-control" id="in-email" placeholder="Email">
		    </div>
		    <div class="validate" id="v-email" ></div>
		  </div>
		  <div class="form-group">
		    <label for="in-phone" class="col-sm-2 control-label">电话</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="in-phone" placeholder="Phone">
		    </div>
		    <div class="validate" id="v-phone" ></div>
		  </div>
		  <div class="form-group">
		    <label for="in-nickname" class="col-sm-2 control-label">昵称</label>
		    <div class="col-sm-6">
		      <input type="text" class="form-control" id="in-nickname" placeholder="Nickname">
		    </div>
		    <div class="validate" id="v-nickname" ></div>
		  </div>
		  <div class="form-group">
		    <label for="in-password" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-6">
		      <input type="password" class="form-control" id="in-password" placeholder="Password">
		    </div>
		    <div class="validate" id="v-password" ></div>
		  </div>
		 <div class="form-group">
		    <label for="in-rePassword" class="col-sm-2 control-label">确认密码</label>
		    <div class="col-sm-6">
		      <input type="password" class="form-control" id="in-rePassword" placeholder="RePassword">
		    </div>
		    <div class="validate" id="v-rePassword" ></div>
		  </div>
		  <div class="form-group">
		    <label for="type" class="col-sm-2 control-label">类型</label>
			<div class="btn-group modal-radio" data-toggle="buttons">
			  <label class="btn btn-default active">
			    <input type="radio" name="student" id="in-radio" value="student">学生
			  </label>
			  <label class="btn btn-default">
			    <input type="radio" name="teacher" id="in-radio" value="teacher" >教师
			  </label>
			  <label class="btn btn-default">
			    <input type="radio" name="admin" id="in-radio" value="admin" >管理员
			  </label>
			</div>
		  </div>
		  </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" id="modal-add">添加</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

  <div class="container-top">
  	<div class="top1">
  		<p>top1</p>
  	</div>
  	<div class="top2">
  	<div class="container">
		<ul class="nav nav-pills">
		  <li class="active"><a href="../user/home.jsp">Home</a></li>
		  <li><a href="#">Profile</a></li>
		  <li class="pull-right"><a href="#">Messages</a></li>
		</ul>
  	</div>
  	</div>
  </div> <!-- container-top-end -->
  <div class="content-container">
		<div class="sidebar-left">
			<div class="item-group">
			  <a data-toggle="collapse" data-parent="#accordion" href="#collapseCourse" class="items">课程<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
	              <div id="collapseCourse" class="panel-collapse collapse">
	        			<a id="left-user" href="#" class="items item">用户</a>
	        			<a id="left-student" href="#" class="items item">学生</a>
	        			<a id="left-teacher" href="#" class="items item">教师</a>
	  			  </div>
			  <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="items">申请管理 <span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
			  	  <div id="collapseTwo" class="panel-collapse collapse">
	        			<a id='left-cdm' href="#" class="items item">学校-系-专业</a>
	        			<a href="#" class="items item">班级申请</a>
	        			<a href="#" class="items item">cat</a>
	        			<a href="#" class="items item">dead</a>
	  			  </div>
			  <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="items">BBB <span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
			  	  <div id="collapseThree" class="panel-collapse collapse">
	        			<a href="#" class="items item">apple</a>
	        			<a href="#" class="items item">boy</a>
	        			<a href="#" class="items item">cat</a>
	        			<a href="#" class="items item">dead</a>
	  			  </div>
			  <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="items">DDD <span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
			</div>
		</div>
		<!-- =================右侧内容区==================== -->
		<div class="container-right">
		<!-- ======================标题过滤条件=================== -->
			<div class="table-title">
				<div class="title-label">显示</div>
					<div class="body-select">
					<select id="page-size" class='form-control input-sm'>
						<option>15</option>
						<option>25</option>
						<option>30</option>
						<option>50</option>
						<option>100</option>
					</select>
					</div>
				<div class="title-label">项结果 </div>
				<div class="search-contain">
					<div class="title-label">搜索：</div>
		  			<div class="body-search"><input id='search' type='text' class='form-control input-sm'></div>
					<div class="title-label"><a class='add-btn' href=''>添加</a></div>
				</div>
			</div>
			
			<div class="body-content">
<!-- user用户管理 -->
	 			<table id='listUser' class="table table-bordered table-hover table-condensed">
		              <thead>
		              </thead>
		              <tbody>
		              </tbody>
		              <tfoot>
		              <tr><td colspan="7">
				        <ul class="page">
						</ul>
		              </td></tr>
		              </tfoot>
				</table>
				
<!-- 学校-系-专业-表格 -->	
				<div class="modal fade" id="cdm-show-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title"></h4>
				      </div>
				      <div class="modal-body">
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button id="confirm-btn" type="button" class="btn btn-primary">确认</button>
				      </div>
				    </div><!-- /.modal-content -->
				  </div><!-- /.modal-dialog -->
				</div><!-- /.modal -->

			<div id="cdm-title" class="cdm-title" style="display:none">
				<span>学校-系-专业</span>
			</div>
				<!-- Nav tabs -->
				<ul id="cdm-nav" class="nav nav-tabs" style="display:none">
				  <li><a id="menu-ap" href="#cdm-apply" data-toggle="tab">申请</a></li>
				  <li><a id="menu-li" href="#cdm-list" data-toggle="tab">所有</a></li>
				</ul>
				<!-- Tab panes -->
				  <div id="tab-content" class="tab-content" style="display:none">
					  <div class="tab-pane active" id="cdm-apply">
						  <table id="t-apply-cdm" class="table table-bordered table-condensed">
				              <thead>
				              <tr><td class="no-td">#</td><td>学校</td><td>系别</td><td>专业</td><td>选择操作</td></tr>
				              </thead>
				              <tbody>
				              </tbody>
				              <tfoot>
				              <tr><td class="no-td">#</td><td>学校</td><td>系别</td><td>专业</td></tr>
				              <tr><td colspan="7"><ul id="apply-cdm-pager" class="page"></ul></td></tr>
				              </tfoot>
						</table>
					  </div>
					  <div class="tab-pane" id="cdm-list">
				  			<div id="college-ico" class="college-ico">
				  				<input type="hidden" id="ctx" value="<%=request.getContextPath()%>"/>
								<input id="uf" type="file" value="">
							</div>
						<table id="t-list-cdm" class="table table-condensed">
				              <thead>
				              <tr class="t-select"><td colspan='5'>
				              <div id ="select-Pane" class="create-width">
								<label id="two">筛选：</label>
								<select id="cdm-college" class="input-sm"><option>--选择学校--</option></select>
								<select id="cdm-department" class="input-sm"><option>--选择系--</option></select>
								<select id="cdm-major" class="input-sm"><option>--选择专业--</option></select>
							  </div>
							  </td></tr>
				              <tr><td class="no-td">#</td><td>学校</td><td>系别</td><td>专业</td><td>选择操作</td>
				              </thead>
				              <tbody>
				              </tbody>
				              <tfoot>
				              <tr><td class="no-td">#</td><td>学校</td><td>系别</td><td>专业</td><td></td></tr>
				              <tr><td colspan="7"><ul id="list-cdm-pager" class="page"></ul></td></tr>
				              </tfoot>
						</table>
					  </div>
				  </div>
				
			</div><!-- body-content   end -->
		</div> <!-- container-right  end -->
	</div>
  </body>
  <script type="text/javascript">
  	$(function(){
  		initCdm();
  	})
  </script>
</html>