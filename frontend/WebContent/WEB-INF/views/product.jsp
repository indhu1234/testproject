<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@include file="header.jsp"%>
 <!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
 <!DOCTYPE html>
 <html>
<head>


 <c:url value="/addproduct" var="url"></c:url>
<form:form action="${url }" modelAttribute="product" method="post" enctype="multipart/form-data">
<table>
			<tr>
		
				<!-- user need not give value for id, auto generation -->
				<td><form:hidden path="id"></form:hidden></td>
			</tr>
			<tr>
				<td>Enter Product Name
				</td>
				<td><form:input path="productname" placeholder="enters data"></form:input></td>
				<%--  <td><form:errors path="productname" cssStyle="color:red"></form:errors>
				</td> --%>
				
				
			</tr>
			<tr>
			<td>Enter Product Description</td>
			<td><form:textarea path="productdesc"></form:textarea></td>
			<%-- <td><form:errors path="productdesc" cssStyle="color:red"> </form:errors>
			</td> --%>
			
			<tr>
			</tr>
			<td>Enter Price</td>
			<td><form:input path="price" type="number"></form:input></td>
			<%-- <td><form:errors path="price" cssStyle="color:red"></form:errors>
			</td> --%>
			</tr>
			<tr><td>Enter Quantity</td>
			<td><form:input path="quantity" type="number"></form:input></td>
			<%-- <td><form:errors path="quantity" cssStyle="color:red"></form:errors>
			</td> --%>
			</tr>
			<tr>
			<td>Select the Category</td>
			
			<td><form:select path="category.categoryId"><!-- FK column value -->
			<!-- value is to set the value for the path category.id -->
		    <c:forEach items="${categories }" var="c">
		    <form:option value="${c.categoryId }">${c.categoryName }</form:option>
		    </c:forEach>
			</form:select></td>
			</tr>
			
			<tr>
			<td>Select the Supplier</td>
			<td><form:select path="supplier.supplierId"><!-- FK column value -->
			<!-- value is to set the value for the path supplier.id -->
		    <c:forEach items="${suppliers }" var="s">
		    <form:option value="${s.supplierId }">${s.supplierName }</form:option>
		    </c:forEach>
			</form:select></td>
			</tr>
			
			 <tr><td>Upload image</td>
			<td><form:input path="image" type="file"/>
			</td></tr>
			
			
 		            <tr>
			<td><input type="submit" value="Add Product"></td>
			</tr>

		</table>

</form:form>

           <c:out value="${product.id}"></c:out>
           <c:out value="${product.productname }"></c:out>
				<c:out value="WELL"></c:out>

<table border="1" >
<tr>
<td>Product ID</td>
<td>Product Image</td>
<td>Product Name</td>
<td>Product Description</td>
<td>Price</td>
<td>Stock</td>
<td>Category ID</td>
<td>Supplier ID</td>
<td>Operations</td>
</tr>

<c:forEach items="${productList}" var="product">
<tr>
                          <td>${product.id}</td>
                          <td>${product.productname}</td>
                          <td>${product.productdesc}</td>
                          <td>${product.price}</td>
                          <td>${product.quantity}</td>
                          <td>${product.category.categoryId}</td>
                          <td>${product.supplier.supplierId}</td>
    <td>
    <a href="<c:url value="/editProduct/${product.id}"/>"class="btn btn-success">Edit</a>
    <a href="<c:url value="/deleteProduct/${product.id}"/>"class="btn btn-danger">Delete</a>
    </td>
 </tr>
 </c:forEach>   
    
</table>



</body>
</html>

 