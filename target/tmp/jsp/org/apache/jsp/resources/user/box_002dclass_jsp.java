package org.apache.jsp.resources.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class box_002dclass_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<div id=\"class-box\" class=\"class-box\">\r\n");
      out.write("<!-- 左侧菜单栏 -->\r\n");
      out.write("\t\t<div class=\"sidebar-left\">\r\n");
      out.write("\t\t\t<div class=\"list-group\">\r\n");
      out.write("\t\t\t<a href=\"#\" class=\"list-group-item active\">这里是班级</a>\r\n");
      out.write("\t\t    <a id='left-my-class' href=\"\" class=\"list-group-item\">我的班级</a>\r\n");
      out.write("\t\t  \t<a id='left-join-class' href=\"\" class=\"list-group-item\">加入班级</a>\r\n");
      out.write("\t\t    <a id='left-create-class' href=\"\" class=\"list-group-item\">创建班级</a>\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("<!-- ================我的班级================ -->\r\n");
      out.write("\t\t<div id=\"my-class\" class=\"container-right\">\r\n");
      out.write("\t\t\t<div class=\"body-head\">\r\n");
      out.write("\t\t\t\t<h4 class=\"text-info\">2012软件工程</h4>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"body-content\">\r\n");
      out.write("\t\t\t\t<!-- Nav tabs -->\r\n");
      out.write("\t\t\t\t<ul class=\"nav nav-tabs\">\r\n");
      out.write("\t\t\t\t  <li><a href=\"#inform\" data-toggle=\"tab\">通知公告</a></li>\r\n");
      out.write("\t\t\t\t  <li><a id=\"class-member\" href=\"#member\" data-toggle=\"tab\">成员</a></li>\r\n");
      out.write("\t\t\t\t  <li><a href=\"#syllabus\" data-toggle=\"tab\">班级课程表</a></li>\r\n");
      out.write("\t\t\t\t  <li><a href=\"#mission\" data-toggle=\"tab\">作业任务</a></li>\r\n");
      out.write("\t\t\t\t  <li><a href=\"#file\" data-toggle=\"tab\">共享文件</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<!-- Tab panes -->\r\n");
      out.write("\t\t\t\t  <div class=\"tab-content\">\r\n");
      out.write("\t\t\t\t\t  <div class=\"tab-pane active\" id=\"inform\">inform-table</div>\r\n");
      out.write("\t\t\t\t\t  <div class=\"tab-pane\" id=\"member\">\r\n");
      out.write("\t\t\t\t\t  \t<div id=\"member-box\" class=\"member-box\">\r\n");
      out.write("\t\t\t\t\t  \t<!-- 班级成员 -->\r\n");
      out.write("\t\t\t\t\t  \t  <div class=\"table-title\">\r\n");
      out.write("<!-- \t\t\t\t\t\t\t<div class=\"title-label\">显示</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"body-select\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<select id=\"class-members-page-size\" class='form-control input-sm'>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option id='15'>15</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option id='50'>50</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<option id='100'>100</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title-label\">项结果 </div>  -->\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"title-label\">搜索：</div>\r\n");
      out.write("\t\t\t\t\t  \t\t\t<div class=\"body-search\"><input id='class-members-search' type='text' class='form-control input-sm'></div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t  </div><!-- table-title -->\r\n");
      out.write("\t\t\t\t\t\t   <table id=\"t-class-members\" class=\"table table-bordered table-condensed\">\r\n");
      out.write("\t\t\t\t              <thead>\r\n");
      out.write("\t\t\t\t              <tr><td>NO.</td><td>学号</td><td>姓名</td><td>长号</td><td>短号</td><td>QQ</td><td>宿舍</td></tr>\r\n");
      out.write("\t\t\t\t              </thead>\r\n");
      out.write("\t\t\t\t              <tbody>\r\n");
      out.write("\t\t\t\t\t\t\t  <tr><td><button id=\"delete-btn\" class=\"btn btn-danger btn-opera\">删除</button></td></tr>\r\n");
      out.write("\t\t\t\t              </tbody>\r\n");
      out.write("\t\t\t\t              <tfoot>\r\n");
      out.write("\t\t\t\t              <tr><td colspan=\"7\">\r\n");
      out.write("\t\t\t\t               <div class='class-member-pager-container'>\r\n");
      out.write("\t\t\t\t                 <ul id=\"list-class-member-pager\" class=\"page\"></ul>\r\n");
      out.write("                               </div>\r\n");
      out.write("                              </td></tr>\r\n");
      out.write("\t\t\t\t              </tfoot>\r\n");
      out.write("\t\t\t\t\t\t </table>\r\n");
      out.write("\t\t\t\t\t  \t</div>\r\n");
      out.write("\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t  <div class=\"tab-pane\" id=\"syllabus\">syllabus-table</div>\r\n");
      out.write("\t\t\t\t\t  <div class=\"tab-pane\" id=\"mission\">mission-table</div>\r\n");
      out.write("\t\t\t\t\t  <div class=\"tab-pane\" id=\"file\">file-table</div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("<!-- ================班级列表================= -->\r\n");
      out.write("\t\t<div id=\"list-class\" class=\"container-right\">\r\n");
      out.write("\t\t\t\t<div class=\"body-head\">\r\n");
      out.write("\t\t\t\t<h4 class=\"text-info\">班级列表</h4>\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t\t<div class=\"class-search\">\r\n");
      out.write("\t\t\t\t<div id =\"select-Pane\" class=\"f-width\">\r\n");
      out.write("\t\t\t\t\t<label>筛选</label>\r\n");
      out.write("\t\t\t\t\t<select id=\"f-college\" class=\"input-sm\"><option value='-1'>--全部学校--</option></select>\r\n");
      out.write("\t\t\t\t\t<select id=\"f-department\" class=\"input-sm\"><option value='-1'>--全部系--</option></select>\r\n");
      out.write("\t\t\t\t\t<select id=\"f-major\" class=\"input-sm\"><option value='-1'>--全部专业--</option></select>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t    <div class=\"search-group\">\r\n");
      out.write("\t\t\t      <input id='search-input' type=\"text\" class=\"search-input\" placeholder=\"专业/班级/班主任/班长\">\r\n");
      out.write("\t\t\t           <span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t        <button id='classroom-find' class=\"btn btn-info\" type=\"button\">查找</button>\r\n");
      out.write("\t\t\t\t      </span>\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- 班级元素 -->\r\n");
      out.write("\t\t\t<div id='class-item-container' class='class-item-container'>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class='classroom-pager-container'>\r\n");
      out.write("\t\t\t\t<ul id=\"list-classroom-pager\" class=\"page\"></ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("<!-- ================创建班级================= -->\r\n");
      out.write("\t\t<div id=\"create-class\" class=\"container-right\">\r\n");
      out.write("\t\t\t\t<div class=\"body-head\">\r\n");
      out.write("\t\t\t\t<h4 class=\"text-info\">创建班级</h4>\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t\t    \r\n");
      out.write("\t\t\t<div class=\"class-create\">\r\n");
      out.write("\t\t\t\t<div id='create-selete' class='create-selete'>\r\n");
      out.write("\t\t\t\t\t<div id =\"select-Pane\" class=\"create-width\">\r\n");
      out.write("\t\t\t\t\t\t<label id=\"two\">从属：</label>\r\n");
      out.write("\t\t\t\t\t\t<select id=\"c-college\" class=\"input-sm\"><option value='s'>--选择学校--</option></select>\r\n");
      out.write("\t\t\t\t\t\t<select id=\"c-department\" class=\"input-sm\"><option value='s'>--选择系--</option></select>\r\n");
      out.write("\t\t\t\t\t\t<select id=\"c-major\" class=\"input-sm\"><option value='s'>--选择专业--</option></select>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div id=\"college-ico\" class=\"college-ico\"></div>\r\n");
      out.write("\t\t\t\t\t<div id =\"select-Pane\" class=\"create-width\">\r\n");
      out.write("\t\t\t\t\t\t<label id=\"two\">年级：</label>\r\n");
      out.write("\t\t\t\t\t\t<select id=\"c-grade\" class=\"input-sm\">\r\n");
      out.write("\t\t\t\t\t\t<option value='s'>--选择年级--</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div id =\"select-Pane\" class=\"create-width\">\r\n");
      out.write("\t\t\t\t\t\t<label id=\"two\">班别：</label>\r\n");
      out.write("\t\t\t\t\t\t<select id=\"c-class\" class=\"input-sm\">\r\n");
      out.write("\t\t\t\t\t\t<option value='s'>--选择班--</option>\r\n");
      out.write("\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"input-container\">\r\n");
      out.write("\t\t\t\t\t\t<label id=\"three\">班主任：</label>\r\n");
      out.write("\t\t\t\t\t\t<input id='in-teacher' type=\"text\" class=\"create-input input-sm\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"validate\" id=\"v-teacher\" ></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"input-container\">\r\n");
      out.write("\t\t\t\t\t\t<label id=\"two\">班长：</label>\r\n");
      out.write("\t\t\t\t\t\t<input id='in-monitor' type=\"text\" class=\"create-input input-sm\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"validate\" id=\"v-monitor\" ></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"v-classroom\" id=\"v-classroom\" ></div>\r\n");
      out.write("\t\t\t\t<div class=\"create-foot\">\r\n");
      out.write("\t\t\t\t\t<div class=\"foot-p\">\r\n");
      out.write("\t\t\t\t\t\t<p class=\"text-muted\">如果你找不到你的专业，<a id='c-link' class=\"text-muted\">点这里添加</a></p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"create-btn\">\r\n");
      out.write("\t\t\t\t\t\t<button id='classroom-cancel' type=\"button\" class=\"btn btn-default\">清空</button>\r\n");
      out.write("\t\t\t\t\t\t<button id='classroom-pre' type=\"button\" class=\"btn btn-primary\">创建</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t     \t\t\t\t<!-- 创建预览 -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"modal fade\" id=\"modal-pre\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">>\r\n");
      out.write("\t\t\t\t\t\t  <div class=\"modal-dialog\">\r\n");
      out.write("\t\t\t\t\t\t    <div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t\t\t      <div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t\t        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t\t\t\t\t\t        <h4 class=\"modal-title\">创建预览</h4>\r\n");
      out.write("\t\t\t\t\t\t      </div>\r\n");
      out.write("\t\t\t\t\t\t      <div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div id=\"pre-container\" class=\"pre-container\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"class-number\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t    \t<p class=\"text-muted\"><span>#</span></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div id='pre-pic' class=\"pre-pic\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  <div id='preview-class' class=\"pre-desc\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t    <h4 class=\"text-primary\"><small class=\"text-success\"><span id='pre-grade'></span><span>—</span></small><span id='mc'></span></h4>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t   \t<p class=\"text-muted\">班主任:<span id='pre-teacher'></span>&nbsp;&nbsp;班长:<span id='pre-monitor'></span></p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div><!-- 预览 end -->\r\n");
      out.write("\t\t\t\t\t\t      </div>\r\n");
      out.write("\t\t\t\t\t\t      <div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t\t\t        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">取消</button>\r\n");
      out.write("\t\t\t\t\t\t        <button id ='pre-create' type=\"button\" class=\"btn btn-primary\">创建</button>\r\n");
      out.write("\t\t\t\t\t\t      </div>\r\n");
      out.write("\t\t\t\t\t\t    </div><!-- /.modal-content -->\r\n");
      out.write("\t\t\t\t\t\t  </div><!-- /.modal-dialog -->\r\n");
      out.write("\t\t\t\t\t\t</div><!-- /.modal -->\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<!-- 创建学校、系、专业 -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"modal fade\" id=\"apply-cdm-modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">>\r\n");
      out.write("\t\t\t\t\t\t  <div class=\"modal-dialog\">\r\n");
      out.write("\t\t\t\t\t\t    <div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t\t\t      <div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t\t        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t\t\t\t\t\t        <h4 class=\"modal-title\">添加专业</h4>\r\n");
      out.write("\t\t\t\t\t\t      </div>\r\n");
      out.write("\t\t\t\t\t\t      <div id=\"apply-cdm-input-container\" class=\"modal-body\">   <!-- body -->\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"input-container\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label id=\"n-college\">学校名称：</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input id=\"cdm-in-college\" type=\"text\" class=\"n-input input-sm\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"input-container\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label id=\"n-department\">系别名称：</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input id=\"cdm-in-department\" type=\"text\" class=\"n-input input-sm\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"input-container\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<label id=\"n-major\">专业名称：</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input id=\"cdm-in-major\" type=\"text\" class=\"n-input input-sm\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t      </div>\r\n");
      out.write("\t\t\t\t\t\t      <div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t\t\t        <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">取消</button>\r\n");
      out.write("\t\t\t\t\t\t        <button id=\"apply-cdm-add\" type=\"button\" class=\"btn btn-primary\">添加</button>\r\n");
      out.write("\t\t\t\t\t\t      </div>\r\n");
      out.write("\t\t\t\t\t\t    </div><!-- /.modal-content -->\r\n");
      out.write("\t\t\t\t\t\t  </div><!-- /.modal-dialog -->\r\n");
      out.write("\t\t\t\t\t\t</div><!-- /.modal -->\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</div> <!-- class-create end -->\r\n");
      out.write("\t\t</div><!-- container-right end -->\r\n");
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
