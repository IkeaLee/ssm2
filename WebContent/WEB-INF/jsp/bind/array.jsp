<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/bind/multidel">
		<table border="1">
			<tr>
				<th>&nbsp;</th>
				<th>
					编号
				</th>
				<th>
					姓名
				</th>
				<th>
					工资
				</th>
				<th>
					入职时间
				</th>
			</tr>
			<c:forEach items="${list }" var="item" >
				<tr>
					<td><input type="checkbox" name="delarray" value="${item.empno} "/></td>
					<td>${item.empno }</td>
					<td>${item.ename }</td>
					<td>${item.sal }</td>
					<td><fmt:formatDate value="${item.hiredate}" pattern="yyyy-MM-dd"/></td>
				</tr>
			</c:forEach>
			<tr><td colspan="5" align="center"><input type="submit" value="Delete Selected"/></td></tr>
		</table>
	</form>
</body>
</html>