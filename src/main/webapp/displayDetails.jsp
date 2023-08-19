<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Displaying Details</title>
<style type="text/css">
table {
	border: 2px solid red;
}
tr, th, td {
	border: 0.15px solid red;
}
</style>
</head>
<body>

	<jsp:useBean id="product" class="jspActions.Product">
		<jsp:setProperty name="product" property="*"/>
	</jsp:useBean>

	<h1>Product details are : </h1>

	<table>
		<tr>
			<td>ID</td>
			<td><jsp:getProperty property="id" name="product" /></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><jsp:getProperty property="name" name="product" /></td>
		</tr>
		<tr>
			<td>Description</td>
			<td><jsp:getProperty property="description" name="product" /></td>
		</tr>
		<tr>
			<td>Price</td>
			<td><jsp:getProperty property="price" name="product" /></td>
		</tr>
	</table>

</body>
</html>