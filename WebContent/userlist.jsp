<%@page import="java.util.Iterator"%>
<%@page import="aplplicationTest.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

Object o=application.getAttribute("humans");
if(o!=null){
	
	List<User>  list=(List<User>)o;
	Iterator<User> it=list.iterator();
	while(it.hasNext()){
		
		
		
	User u=it.next();






%>
<p>Id:<%=u.getId() %>-----Name:<%=u.getName() %></p>


<%


}

}

%>
<a href="javascript:history.go(-1)"></a>
</body>
</html>