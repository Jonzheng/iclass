<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="course-box" class="class-box">
<!-- 左侧菜单栏 -->
		<div class="sidebar-left">
			<div class="item-group">
			  <a data-toggle="collapse" data-parent="#accordion" href="#collapseCourse" class="items" >我的课程<span class="glyphicon glyphicon-chevron-right pull-right"></span></a>
	              <div id="collapseCourse" class="panel-collapse collapse">
	        			<a id="left-course-member" href="" class="items item">学生成员</a>
	        			<a id="left-course-syllabus" href="#" class="items item">课程表</a>
	        			<a id="left-teacher" href="#" class="items item">作业布置</a>
	        			<a id="left-teacher" href="#" class="items item">课堂点名</a>
	  			  </div>
			</div>
		</div>
<!-- ================课程成员================= -->
		<div id="course-member" class="container-right">
			<div class="body-head">
				<h4 id="course-title"class="text-info"><small class="text-primary">课程名称—</small>高等数学</h4>
			</div>
			<!-- 班级元素 -->
				  	<div id="" class="member-box">
				  	<!-- 班级成员 -->
				  	  <div class="table-title">
						<div class="">
							<div class="title-label">搜索：</div>
				  			<div class="body-search"><input id='class-members-search' type='text' class='form-control input-sm'></div>
				  			<div class="title-label pull-right"><a id="stu-excle" class='add-btn' href='../../stuExcel'>导出Excel</a></div>
						</div>
					  </div><!-- table-title -->
					   <table id="t-class-members" class="table table-bordered table-condensed">
			              <thead>
			              <tr><td>NO.</td><td>学号</td><td>姓名</td><td>长号</td><td>短号</td><td>QQ</td><td>宿舍</td></tr>
			              </thead>
			              <tbody>
						  <!-- <tr><td><button id="delete-btn" class="btn btn-danger btn-opera">删除</button></td></tr> -->
			              </tbody>
			              <tfoot>
			              <tr><td colspan="7">
			               <div class='class-member-pager-container'>
			                 <ul id="list-class-member-pager" class="page"></ul>
                              </div>
                             </td></tr>
			              </tfoot>
					 </table>
				  	</div>
			<div class='classroom-pager-container'>
				<ul id="list-classroom-pager" class="page"></ul>
			</div>
		</div>
		
		<!-- ================课程表================= -->
		<div id="course-syllabus" class="container-right">
			<div class="body-head">
				<h4 id="course-title"class="text-info"><small class="text-primary">课程名称—</small>高等数学</h4>
			</div>
				<div id="" class="member-box">
				  <div class="syllabus-box">
				    <div class="day-z">
				    	<div class="day-head">#</div><div class="day-am">上午</div><div class="day-c">1</div><div class="day-c">2</div><div class="day-c">3</div><div class="day-c">4</div>
				    	<div class="course-m"></div>
				    	<div class="day-am">下午</div><div class="day-c">5</div><div class="day-c">6</div><div class="day-c">7</div><div class="day-c">8</div>
				    	<div class="course-m"></div>
				    </div>
					<div id="day-1"class="day"><div class="day-head">周一</div>
						<div id="c-1">
						</div>
						<div id="c-3">
						</div>
						<div class="course-m"></div>
						<div id="c-5">
						</div>
						<div id="c-7">
						</div>
						<div class="course-m"></div>
					</div>
					<div id="day-2"class="day"><div class="day-head">周二</div>
						<div id="c-1">
						</div>
						<div id="c-3">
						</div>
						<div class="course-m"></div>
						<div id="c-5">
						</div>
						<div id="c-7">
						</div>
						<div class="course-m"></div>
					</div>
					<div id="day-3"class="day"><div class="day-head">周三</div>
						<div id="c-1">
						</div>
						<div id="c-3">
						</div>
						<div class="course-m"></div>
						<div id="c-5">
						</div>
						<div id="c-7">
						</div>
						<div class="course-m"></div>
					</div>
					<div id="day-4"class="day"><div class="day-head">周四</div>
						<div id="c-1">
						</div>
						<div id="c-3">
						</div>
						<div class="course-m"></div>
						<div id="c-5">
						</div>
						<div id="c-7">
						</div>
						<div class="course-m"></div>
					</div>
					<div id="day-5"class="day"><div class="day-head">周五</div>
						<div id="c-1">
						</div>
						<div id="c-3">
						</div>
						<div class="course-m"></div>
						<div id="c-5">
						</div>
						<div id="c-7">
						</div>
						<div class="course-m"></div>
					</div>
			  </div>
			 </div>
		</div>
</div>