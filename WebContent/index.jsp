<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4><a href="${pageContext.request.contextPath }/bind/base?age=15&ismale=true&sal=3200.00">基本数据类型参数绑定</a></h4>
<hr/>
<h4><a href="${pageContext.request.contextPath }/bind/anno?age=15&ismale=true&sal=3200.00">RequestParam注解</a></h4>
<h4><a href="${pageContext.request.contextPath }/bind/anno?ismale=true&sal=3200.00">RequestParam注解(测试DefaultValue)</a></h4>
<hr/>
<h4>对象绑定参考hello工程</h4>
<hr/>
<h4><a href="${pageContext.request.contextPath }/bind/add">复杂对象参数绑定</a></h4>
<hr/>
<h4><a href="${pageContext.request.contextPath }/bind/list">Array对象参数绑定</a></h4>
<hr/>
<h4><a href="${pageContext.request.contextPath }/bind/listitem">List对象参数绑定</a></h4>
</body>
</html>