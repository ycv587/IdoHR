/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-07 13:39:59 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.other;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contract_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta charset=\"utf-8\" />\r\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\t\t<title>合同管理 - IDOHR</title>\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/assets/css/bootstrap.min.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/assets/css/bootstrap-table.min.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/assets/css/bootstrap-dialog.min.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/assets/css/toastr.min.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/assets/css/bootstrap-multiselect.css\">\r\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"/assets/css/contract.css\">\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\t<body>\r\n");
      out.write("\r\n");
      out.write("\t\t<div style=\"height: 20px\"></div>\r\n");
      out.write("\t\t<div class=\"col-lg-12 col-sm-12 col-md-12\">\r\n");
      out.write("\t\t\t<div class=\"form\">\r\n");
      out.write("\t\t\t\t<div class=\"form-horizontal\">\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-2 col-sm-2 col-lg-2 col-xs-2\">\r\n");
      out.write("\t\t\t\t\t\t\t<form enctype=\"multipart/form-data\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"file\" name=\"file\" id=\"fie\" style=\"display: none\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"submit\" id=\"ud\" value=\"上传\" style=\"display: none\">\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t<button id=\"file-upload\" type=\"button\" class=\"btn btn-primary\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"glyphicon glyphicon-upload\"></i> 添加合同\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col-md-2 col-sm-2 col-lg-2 col-xs-2\" style=\"margin-left: -60px;\">\r\n");
      out.write("\t\t\t\t\t\t\t<form action=\"/contract/down\" method=\"get\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"submit\" value=\"下载\" id=\"sm\" style=\"display: none\">\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t<button id=\"file-download\" type=\"button\" class=\"btn btn-primary\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"glyphicon glyphicon-download\"></i> 下载\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"form-group\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- 内容区 -->\r\n");
      out.write("\t\t\t\t\t<div id=\"con\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/bootstrap-table.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/bootstrap-table-zh-CN.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/bootstrap-dialog.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/toastr.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/sha1.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/bootstrap-multiselect.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/common.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"/assets/js/contract.js\"></script>\r\n");
      out.write("\t</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
