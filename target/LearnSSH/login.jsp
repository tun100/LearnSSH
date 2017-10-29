<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<s:head theme="ajax" />
</head>
<body>
	<h1>Welcome to login</h1>
	<s:form action="Login.action" method="POST">
		<s:textfield label="用户" name="username" />
		<s:textfield label="密码" name="password" />
		<s:datetimepicker name="date" toggleType="explode"
			displayFormat="yyyy-MM-dd" id="date" value="today" label="时间"></s:datetimepicker>
		<s:submit value="提交" />
	</s:form>
	<s:text name="当前登陆次数">
	</s:text>
	${sessionScope.loginTimes}

	<h1>Welcome to convert value</h1>
	<s:form action="Convert.action" method="POST">
		<s:text name="notice">输入值以.号分开</s:text>
		<s:textfield label="用户名" name="splitUsername"></s:textfield>
		<s:textarea label="密码" name="splitPassword"></s:textarea>
		<s:submit value="提交"></s:submit>
	</s:form>

	<h1>Watch POST Detail</h1>
	<form action="/WatchDetail.jsp" method="POST"
		enctype="multipart/form-data">
		<input type="text" value="detailName" name="详情名" /> <input
			type="text" value="detailPass" name="详情密码" /> 
			<input type="file" name="文件"/>
			<input type="submit" 
			value="提交" />
	</form>
</body>
</html>