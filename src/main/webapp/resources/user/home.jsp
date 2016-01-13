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
	<link href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/main-style.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/pager.css" rel="stylesheet">
	<link href="<%=request.getContextPath()%>/resources/css/blue.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/resources/css/index-style.css" rel="stylesheet">
	<script type="text/javascript">
    $(function(){
		$('input').iCheck({
		    checkboxClass: 'icheckbox_flat-blue',
		    radioClass: 'iradio_flat-blue',
		    increaseArea: '50%'
		});
		//处理是否登录时导航栏
		var loginUser = $.cookie('loginUser');
		if(loginUser==undefined||loginUser==""){
			console.log("loginUser-->"+"undefinded");
			$("#menu-u-login").clone().appendTo("#top-nav").show();
		} 
		if(loginUser!=undefined&&loginUser!=""){
			console.log("loginUser-->"+loginUser)
			initLogined();
		}
		
		//---------jquery-class-myClass----------------------
		$("#class-member").on("click",function(){
			studentService.findStudent(1,15,function(pager){
				$.studentTable(pager);
				$.createPager(pager,"#list-class-member-pager",{callback:function(){
					var curPage = $("#list-class-member-pager").data("curPage");
					studentService.findStudent(curPage,15,function(pager){
						$.studentTable(pager);
					})
					}
				})
			})
		})
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
			studentService.findByString(str,1,15,function(pager){
				$.studentTable(pager);
				$.createPager(pager,"#list-class-member-pager",{callback:function(){
					var curPage = $("#list-class-member-pager").data("curPage");
					studentService.findByString(str,curPage,15,function(pager){
						$.studentTable(pager);
					})
					}
				})
			})
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