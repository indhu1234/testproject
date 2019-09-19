<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2 algin="center">Product Page</h2>
	
	<form action="<c:url value ='/UpdateProduct'/>"  method="post">
		<table align="center">
			<tr>
				<td colspan="2">Product Info</td>
			</tr>
			<tr>
				<td>Product ID</td>
				<td><input type="text" name="Pid"
					value="${product.prodid}" /></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="PName"
					value="${product.pname}" /></td>
			</tr>
			<tr>
				<td>Quantity </td>
				<td><input type="text" name="PQty"
					value="${product.qty}" /></td>
			</tr>
			
			<tr>
				<td>Price </td>
				<td><input type="text" name="Price"
					value="${product.price}" /></td>
			</tr>
				
				<tr>
				<td> Select Category</td>
				<td>
				
				<select name="cat">
				<c:forEach items="${categ}" var="ca">
				
			     	<%-- <option value="${ca.categoryName }"></option> --%>
			     	<option><c:out value="${ca.categoryName}"></c:out></option>
                 </c:forEach>
				</select>
				</td>
				</tr>
				<tr>
					<td colspan="2"></br><center>
							<input type="submit" value="Update Product"> 
						</center>
						</td>
				</tr>
				  </table>
				  </center>
				</form>
		


</body>
</html>