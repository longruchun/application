<%@page import="com.jspsmart.upload.File"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>



<%
	SmartUpload su = new SmartUpload();
	su.initialize(pageContext);
	su.upload();

	//获取单个上传文件
	File file = su.getFiles().getFile(0);
	//设置文件在服务器的保存位置
	String filepath = "upload\\";
	filepath += file.getFileName();
	//文件另存为   
	file.saveAs(filepath, SmartUpload.SAVE_VIRTUAL);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>上传数据</h1>
</body>
</html>