<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 3*3테이블 만들기 -->
	<h1>For</h1>
	<h3>JSP</h3>
	<table border="1">
		<%for (int row=0;row<3;row++) {%>
		<tr>
			<% for(int col=0;col<3;col++){%>
			<td>
			cell(<%=row %>,<%=col %>)
			</td>
			<%} %>
		</tr>
		<%} %>
	</table>

	<h3>JSTL</h3>
	<table border="1">
		<c:forEach begin="0" end="2" step="1" var="row">
		<tr>
			<c:forEach begin="0" end="2" step="1" var="col">
			<td>cell(${row },${col })
			</c:forEach>
		</tr>
		</c:forEach>
	</table>


</body>
</html>