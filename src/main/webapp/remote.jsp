<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
String callback = request.getParameter("callback");

response.setContentType("application/javascript;charset=UTF-8");
response.setHeader("pragma","no-cache");
response.setHeader("cache-control","no-cache");

response.getWriter().write(callback+"({"+"\"username\":\""+username+"\",\"password\":\""+password+"\"})");

/* out对象的类型是JspWriter。JspWriter继承了java.io.Writer类。 JspWriter out = pageContext.getOut();  PrintWriter pw = response.getWriter();*/
/* out.print(""); 重载的print方法可将各种类型的数据转换成字符串的形式输出，
					【如果字符串对象的值为null时，print方法将输出内容为“null”的字符串】
    out.write(""); 重载的write方法只能输出字符、字符数组和字符串等与字符相关的数据，
    				【而write方法则是抛出NullPointerException异常]
 */
%>