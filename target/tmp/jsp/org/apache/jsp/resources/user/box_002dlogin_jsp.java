package org.apache.jsp.resources.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class box_002dlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<div class=\"modal fade\" id=\"modal-login\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">>\r\n");
      out.write("\t  <div class=\"modal-dialog\">\r\n");
      out.write("\t    <div class=\"modal-content\">\r\n");
      out.write("\t      <div class=\"modal-header\">\r\n");
      out.write("\t        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
      out.write("\t        <h4 class=\"modal-title\">登录/注册</h4>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t      <div class=\"modal-body\">\r\n");
      out.write("\t\t\t<div class=\"login-box\" id=\"login-box\">\r\n");
      out.write("\t\t\t\t<div id=\"login\" class=\"login\">\r\n");
      out.write("\t\t\t\t<h1 class=\"login-title\">登录iClass</h1>\r\n");
      out.write("\t\t\t\t\t<div class=\"login-body\">\r\n");
      out.write("\t\t\t\t\t\t<input id='login-email' type=\"text\" class=\"register-input input-he\"  placeholder=\"用户名/邮箱--test \">\r\n");
      out.write("\t\t\t\t\t\t<input id='login-password' type=\"password\" class=\"register-input input-he\"  placeholder=\"密码--112233\">\r\n");
      out.write("\t\t\t\t\t\t<div id=\"err-container\" class=\"err-container\">\r\n");
      out.write("\t\t\t\t\t\t\t<div id=\"login-err\" class=\"login-err\">请输入正确的帐号或密码</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<input id=\"login-remember\" type=\"checkbox\"/><span class=\"remember-me\">记住我</span>\r\n");
      out.write("\t\t\t\t\t\t<button id='login-btn' type=\"button\" class=\"btn btn-primary login-btn\">登录</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"mod-footer\">\r\n");
      out.write("\t\t\t\t\t<button type=\"button\" class=\"btn btn-link underline\">忘记密码?</button>\r\n");
      out.write("\t\t\t\t\t<span class=\"text-muted\">还没有账号?</span>\r\n");
      out.write("\t\t\t\t\t<button id=\"to-reg\" type=\"button\" class=\"btn btn-link underline\">立即注册</button>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t   <div class=\"register-box\" id=\"register-box\">\r\n");
      out.write("\t\t\t\t\t<h1 class=\"reg-title\">注册新用户</h1>\r\n");
      out.write("\t\t\t\t\t<div class=\"register-body\">\r\n");
      out.write("\t\t\t\t\t\t<input id='reg-email' type=\"text\" class=\"register-input input-he\" placeholder=\"邮箱\" value=\"952981465@qq.com\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-tips\">请输入你常用的电子邮箱,作为你的账号</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-err\">邮箱格式不正确</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"reg-exist\" class=\"reg-err\">该邮箱已经被注册了</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"reg-ac\" class=\"reg-tips\">已发激活邮件至该邮箱,快去激活吧</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"reg-red\" class=\"reg-tips\" style=\"color:red\">被禁用的邮箱账号!!请联系管理员!!!</div>\r\n");
      out.write("\t\t\t\t\t\t<input id='reg-username' type=\"text\" class=\"register-input input-he\" placeholder=\"用户名\" value=\"test\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-tips\">请输入一个1-14字符的用户名,可用于登录</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-err\">用户名不符合规则</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"user-exist\" class=\"reg-err\">该用户名已经被注册了</div>\r\n");
      out.write("\t\t\t\t\t\t<input id='reg-phone' type=\"text\" class=\"register-input input-he\"  placeholder=\"电话\" value=\"12345678901\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-tips\">请输入你的电话号码,或者短号</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-err\">电话格式不正确</div>\r\n");
      out.write("\t\t\t\t\t\t<input id='reg-pwd' type=\"password\" class=\"register-input input-he\"  placeholder=\"密码\" value=\"112233\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-tips\">请输入6-16个字符,区分大小写</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-err\">密码不符合规则</div>\r\n");
      out.write("\t\t\t\t\t\t<input id='reg-re-pwd' type=\"password\" class=\"register-input input-he\"  placeholder=\"确认密码\" value=\"112233\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-tips\">请再次输入密码，记住你的密码哦</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-err\">两次密码不一致</div>\r\n");
      out.write("\t\t\t\t\t\t<button id='reg-btn' type=\"button\" class=\"btn btn-primary reg-btn\">注册</button>\r\n");
      out.write("\t\t\t\t\t\t<button id=\"to-login\" type=\"button\" class=\"btn btn-link underline\">已有账号></button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-footer\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"sended-box none\" id=\"sended-box\">\r\n");
      out.write("\t\t\t\t\t<h1 class=\"reg-title\">激活邮件已发送</h1>\r\n");
      out.write("\t\t\t\t\t<div class=\"register-body\">\r\n");
      out.write("\t\t\t\t\t\t<p>激活邮件已发送到&nbsp;<strong id=\"to-email\" class=\"text-primary\"></strong>&nbsp;请前往邮箱激活账号<br>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"reg-footer\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"text-muted\">已经激活?</span>\r\n");
      out.write("\t\t\t\t\t\t<button id=\"go-login\" type=\"button\" class=\"btn btn-link underline\">登录iClass></button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t      </div>\r\n");
      out.write("\t     </div>\r\n");
      out.write("\t   </div>\r\n");
      out.write("\t</div>\r\n");
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
