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
	<form action="${pageContext.request.contextPath }/bind/update">
		<table border="1">
			<tr>
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
			<c:forEach items="${list }" var="item" varStatus="status" >
				<tr>
					<td><input type="text" name="emplist[${status.index }].empno" value="${item.empno }"/></td>
					<td><input type="text" name="emplist[${status.index }].ename" value="${item.ename }"/></td>
					<td><input type="text" name="emplist[${status.index }].sal" value="${item.sal }"/></td>
					<td><input type="text" name="emplist[${status.index }].hiredate" value="<fmt:formatDate value='${item.hiredate}' pattern='yyyy-MM-dd HH:mm:ss'/>"/></td>
				</tr>
			</c:forEach>
			<tr><td colspan="5" align="center"><input type="submit"/></td></tr>
		</table>
	</form>
</body>
</html>