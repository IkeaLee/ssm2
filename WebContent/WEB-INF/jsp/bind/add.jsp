<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/bind/execadd">
		员工编号：<input type="text" name="empno"/><br/>
		员工姓名：<input type="text" name="ename"/><br/>
		工资：<input type="text" name="sal"/><br/>
		入职时间：<input type="text" name="hiredate"/><br/>
		部门编号：<input type="text" name="dept.deptno"/><br/>
		部门名称：<input type="text" name="dept.dname"/><br/>
		部门所在地：<input type="text" name="dept.loc"/><br/>
		<input type="submit"/>
	</form>
</body>
</html>