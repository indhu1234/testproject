<%@page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<html>
<head>
</head>
<body>
<h2>Hello World!</h2>
<jsp:forward page="/WEB-INF/views/home.jsp"></jsp:forward>
<%-- <nav>
<a href="<c:url value='showCategory'></c:url>">Category</a>
<a href="<c:url value='showProduct'></c:url>">Product</a>

</nav>
 --%>
</body>
</html>
