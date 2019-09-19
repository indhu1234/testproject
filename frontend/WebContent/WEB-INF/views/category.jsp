<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="header.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center">Category Page</h2>

	<form action="<c:url value ='/InsertCategory'/>"  method="post">
	

			<table align="center">
				<tr>
					<td colspan="2">Category Info</td>
				</tr>
				<tr>
					<td>Category Name</td>
					<td><input type="text" name="catName" /></td>
				</tr>
				<tr>
					<td>Category Desc</td>
					<td><input type="text" name="catDesc" /></td>
				</tr>
				
				<tr>
					<td colspan="2"><br>
			
					<input type="submit" value="Save Category" />
				</td>
				</tr>

			</table>
			</form>
			<br><br>
			<table align="center" border="2">
				<tr>
					<td>Category ID</td>
					<td>Category Name</td>
					<td>Category Desc</td>
					<td>Operation</td>
				</tr>
				<c:forEach items="${categoryList}" var="category">
				 
					<tr>
						<td><c:out value="${category.categoryId}"/></td>
						<td><c:out value="${category.categoryName}"/></td>
						<td><c:out value="${category.categoryDesc}"/></td>
						<td>
						<a href="<c:url value='/editCategory/${category.categoryId}'/>">Edit</a>
							<a href="<c:url value='/deleteCategory/${category.categoryId}'/>">Delete</a>
					</tr>
				</c:forEach>

			</table>

</body>
</html>