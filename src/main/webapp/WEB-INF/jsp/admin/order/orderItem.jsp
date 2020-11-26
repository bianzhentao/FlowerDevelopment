<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<table width="100%">
	<c:forEach items="${list}" var="l">
	
	<tr>
		<td><img width="40" height="45" src="${ pageContext.request.contextPath }/${l.product.image }"></td>
		<td>${l.product.pname }</td>
		<td>${l.count }束</td>
		<td>${l.subtotal }元</td>
	</tr>
	
	</c:forEach>
</table>