<%@page import="java.util.ArrayList"%>
<%@page import="aplplicationTest.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");

String id=request.getParameter("id");
String name=request.getParameter("name");

//处理application
//1取出application
Object o=application.getAttribute("humans");
List<User> list=null;
//2判断取出的对象是否为空,确认application中是否有这个建
if(o==null){//说明没有这个建,我们就要创建一个ArrayList,以他存入application
	 list=new ArrayList<User>();
	
	list.add(new User(id,name));
	
	
}else{
	
 list=(List<User>)o;
	list.add(new User(id,name));
	
	
	
}
application.getAttribute("humans",list);

response.sendRedirect("userlist.jsp");


%>
</body>
</html>