/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.39
 * Generated at: 2018-03-29 13:33:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../tiles/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../tiles/topbar1.jsp", out, false);
      out.write("\r\n");
      out.write("  <div class=\"main-content\">\r\n");
      out.write("  \t<div class=\"container\">\r\n");
      out.write("  \t\t<div class=\"mag-inner\">\r\n");
      out.write("  \t\t<div class=\"col-md-8 mag-innert-left\">\r\n");
      out.write("  \t\t<div class=\"col-md-6 account-left\">\r\n");
      out.write("\t\t\t\t\t<form id=\"contact-form\" action=\"javascript:fnSubmit();\">\r\n");
      out.write("\t\t\t\t\t<div class=\"account-top heading\">\r\n");
      out.write("\t\t\t\t\t\t<h3>NEW REGISTRATION</h3>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t<span>First Name</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"name\" name=\"fname\" required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t<span>Last Name</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"lname\" required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t<span>Contact No</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" name=\"phoneno\"  id=\"phone\"  required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t<span>UserName</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" id=\"username\" name=\"username\" required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t<span>Password</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" name=\"userpass\" required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address\">\r\n");
      out.write("\t\t\t\t\t\t<span>Re-enter Password</span>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"password\" name=\"cuserpass\"  required=\"required\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"address new\">\r\n");
      out.write("\t\t\t\t\t\t<input value=\"Register\" type=\"submit\">\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("  \t\t</div>\r\n");
      out.write("  \r\n");
      out.write("  \t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../tiles/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<script>\r\n");
      out.write("function fnSubmit(){\r\n");
      out.write("\t\r\n");
      out.write("\tif($('#userpass').val()!=$('#cuserpass').val()){\r\n");
      out.write("\t\talert('Password and confirm password do not match!');\r\n");
      out.write("\t\treturn;\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t var str = $( \"#contact-form\" ).serialize();\r\n");
      out.write("\t$.post(\"");
      out.print(request.getContextPath());
      out.write("/tiles/ajax.jsp?methodId=registerNewUser\",\r\n");
      out.write("\t\t\tstr,\r\n");
      out.write("\t\t\tfunction(data) {\r\n");
      out.write("data=$.trim(data);  \r\n");
      out.write("if(data.indexOf('Successfully')!=-1){\r\n");
      out.write("\talert(data);\r\n");
      out.write("\t$('#contact-form')[0].reset();\r\n");
      out.write("\twindow.location.href='");
      out.print(request.getContextPath());
      out.write("/pages/login.jsp';\r\n");
      out.write("}else{\r\n");
      out.write("\talert(data);\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
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
