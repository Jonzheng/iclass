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
	        			<!-- <a id="left-teacher" href="#" class="items item">作业布置</a> -->
	        			<a id="left-course-call-roll" href="" class="items item">课堂点名</a>
	        			<a id="left-add-course" href="" class="items item">课程管理</a>
	  			  </div>
			</div>
		</div>
<!-- ================课程成员================= -->
		<div id="course-member" class="container-right">
			<div class="body-head">
				<h4 id="course-title"class="text-info"><small id="course-creator"class="text-primary">但丁</small>--<span id="course-name">高等数学</span></h4>
			</div>
			<!-- 班级元素 -->
				<div id="course-member-box" class="member-box">
				  	<!-- 班级成员 -->
				  	  <div class="table-title">
						<div class="">
							<div class="title-label">搜索：</div>
				  			<div class="body-search"><input id='course-members-search' type='text' class='form-control input-sm'></div>
				  			<div class="title-label pull-right"><a id="stu-excle" class='add-btn' href='../../courseExcel'>导出Excel</a></div>
						</div>
					  </div><!-- table-title -->
					   <table id="t-course-members" class="table table-bordered table-condensed">
			              <thead>
			              <tr><td>NO.</td><td>学号</td><td>姓名</td><td>长号</td><td>短号</td><td>QQ</td><td>宿舍</td></tr>
			              </thead>
			              <tbody>
			              </tbody>
			              <tfoot>
			              <tr><td colspan="7">
			               <div class='class-member-pager-container'>
			                 <ul id="list-course-member-pager" class="page"></ul>
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
				<h4 id="course-title"class="text-info"><small id="course-creator"class="text-primary">但丁</small>--<span id="course-name">高等数学</span></h4>
			</div>
				<!-- 编辑班级课程表-->
				<div class="modal fade" id="modal-teacher-course" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title">编辑课程</h4>
				      </div>
				      <div id="to-box"class="modal-body">
				      	<div class="input-container">
							<label id="">星&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;期：</label>
							<input id="to-day" type="text" readonly="readonly" class="n-input input-sm">
						</div>
				      	<div class="input-container">
				      		<label id="">选择课程：</label>
							<select id="tsele-course" class="course-sm">
								<option value='1'>1-2</option>
								<option value='3'>3-4</option>
								<option value='5'>5-6</option>
								<option value='7'>7-8</option>
							</select>
						</div>
			      		<div class="input-container">
							<label id="">课程名称：</label>
							<input id="to-name" type="text" class="n-input input-sm">
						</div>
						<div class="input-container">
							<label id="">任课老师：</label>
							<input id="to-teacher" type="text" class="n-input input-sm">
						</div>
						<div class="input-container">
							<label id="">上课地点：</label>
							<input id="to-place" type="text" class="n-input input-sm">
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button id ='t-course-save' type="button" class="btn btn-primary">保存</button>
				      </div>
				    </div><!-- /.modal-content -->
				  </div><!-- /.modal-dialog -->
				</div><!-- /.modal -->
				<div class="member-box">
				  <div id="teacher-course" class="syllabus-box">
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
		
	<!-- ================课堂点名================= -->
		<div id="course-call-roll" class="container-right">
			<div class="body-head">
				<h4 id="course-title"class="text-info"><small id="course-creator"class="text-primary">但丁</small>--<span id="course-name">高等数学</span></h4>
			</div>
			<!-- 班级元素 -->
				<div id="course-call-roll-box" class="member-box">
			<!-- 更新规则-->
				<div class="modal fade" id="modal-update-rule" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title">编辑规则</h4>
				      </div>
				      <div id="rule-box"class="modal-body">
			      		<div class="input-container">
							<label id="">出勤：</label>
							<input id="rule-present" type="text" class="n-input input-sm" placeholder="分数变更（可以负数）">
						</div>
						<div class="input-container">
							<label id="">迟到：</label>
							<input id="rule-late" type="text" class="n-input input-sm" placeholder="分数变更（可以负数）">
						</div>
						<div class="input-container">
							<label id="">旷课：</label>
							<input id="rule-absent" type="text" class="n-input input-sm" placeholder="分数变更（可以负数）">
						</div>
						<div class="input-container">
							<label id="">请假：</label>
							<input id="rule-dayoff" type="text" class="n-input input-sm" placeholder="分数变更（可以负数）">
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button id ='update-rule-save' type="button" class="btn btn-primary">保存</button>
				      </div>
				    </div><!-- /.modal-content -->
				  </div><!-- /.modal-dialog -->
				</div><!-- /.modal -->
				  	<!-- 班级成员 -->
				  	  <div class="table-title">
							<div class="title-label">第</div>
								<div id="call-select" class="call-select"><select id="call-section-size" class=''></select></div>
							<div class="title-label">节课 </div>
							<button id="new-call" class='btn btn-default btn-sm'>添加课节</button>
							<button id="total-call" class='btn btn-default btn-sm'>点名统计</button>
							<button id="update-rule" class='btn btn-default btn-sm'>分数计算规则</button>
					  </div><!-- table-title -->
					  <table id="t-course-call" class="table table-bordered table-condensed">
			              <thead>
			              <tr><td>NO.</td><td>学号</td><td>姓名</td><td>分数</td><td>考勤</td></tr>
			              </thead>
			              <tbody>
			              </tbody>
			              <tfoot>
			              <tr><td colspan="7">
			               <div class='class-member-pager-container'>
			                 <ul id="list-course-call-pager" class="page"></ul>
                           </div>
                             </td></tr>
			              </tfoot>
					 </table>
					 <table id="t-call-total" class="table table-bordered table-condensed">
			              <thead>
			              <tr><td>NO.</td><td>学号</td><td>姓名</td><td>出勤次数</td><td>迟到次数</td><td>旷课次数</td><td>请假次数</td><td>分数</td></tr>
			              </thead>
			              <tbody>
			              </tbody>
			              <tfoot>
			              <tr><td colspan="8">
			               <div class='class-member-pager-container'>
			                 <ul id="list-call-total-pager" class="page"></ul>
                           </div>
                             </td></tr>
			              </tfoot>
					 </table>
				  	</div>
			<div class='classroom-pager-container'>
				<ul id="list-classroom-pager" class="page"></ul>
			</div>
		</div>
		
		<div id="course-find" class="container-right">
			<div class="body-head">
				<h4 id="course-title"class="text-info"><small id="course-creator"class="text-primary">但丁</small>--<span id="course-name">高等数学</span></h4>
			</div>
			<!-- 班级元素 -->
				<div id="course-find-box" class="member-box">
				<div class="modal fade" id="modal-add-course" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">>
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				        <h4 class="modal-title">新增课程</h4>
				      </div>
				      <div id="rule-box"class="modal-body">
						<div class="input-container">
							<label id="">课程名称：</label>
							<input id="add-course-name" type="text" class="n-input input-sm" placeholder="输入课程名称">
						</div>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
				        <button id ='add-course-save' type="button" class="btn btn-primary">保存</button>
				      </div>
				    </div><!-- /.modal-content -->
				  </div><!-- /.modal-dialog -->
				</div><!-- /.modal -->

				<div id="info-course-box"class="tags info-class-box padding-left">
					<h3>所有课程</h3>
					<div id="all-course-box" class="tags clear-fix">
						<div class="tag"><span>jQuery实战</span></div>
						<div class="tag"><span>java编程思想</span></div>
						<div id="add-course-show" class="tag add-tag pointer"><span>+</span></div>
					</div>
				</div>
			</div>
		</div>
</div>