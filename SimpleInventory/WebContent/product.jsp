<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="product.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<div class="container">
		<h2 style="text-align:center">Inventory Management</h2>
		<div class="row">
		<div class="col-6">		
			<form id="addE" method="post" action="AddProduct">
				  
				  
				  <label for="id" >Id</label><br>
		          <input type="text" name="id" class="validate" id="id"/><br><br>
				  
				  <label for="name" >Name</label><br>
		          <input type="text" name="name" class="validate" id="name"/><br><br>
		         
		       	  <label for="desc">Description</label><br>
		          <input type="text" name="desc" class="validate" id="desc"/><br><br>
		          
		          <label for="price">Price</label><br>
		          <input type="number" name="price" class="validate" id="price"/><br><br>

		          <label for="quantity">Quantity</label><br>
		          <input type="number" name="quantity" class="validate" id="quantity"/><br><br>
		       	
		          <input type="submit" value="Add" name="btn"/><br><br>
		          
		          
		          <label>FIND by name</label><br>
		          <input type="text" name="idname"/>
		          <input type="submit" value="Find by Name" name="btn"/><br><br>
			</form>
			</div>
			<div class="col-6">
			<br><br>
			<table class="table" border=1px>
			<thead class="thead-dark">
			<tr>
			<th>ID</th><th>NAME</th><th>DESCRIPTION</th><th>PRICE</th><th>QUANTITY</th>
			</tr>
			</thead>
			<c:forEach var="b" items="${data}">
			<tr>
			<td>${b.id}</td>
			<td>${b.name}</td>
			<td>${b.desc}</td>
			<td>${b.price}</td>
			<td>${b.quantity}</td>
			<td><a href="delete?id11=${b.id}">Delete</a></td>
			<td><a href="update?id22=${b.name}">Update</a></td>
			</tr>
			</c:forEach>
			
			</table>
			<br><br>
			<h3>Found</h3>
			<table class="table" border=1px>
			<tr>
			<thead class="thead-dark">
			<th>ID</th><th>NAME</th><th>DESCRIPTION</th><th>PRICE</th><th>QUANTITY</th>
			</tr>
			</thead>
			<tr>
			<td>${data2.id}</td>
			<td>${data2.name}</td>
			<td>${data2.desc}</td>
			<td>${data2.price}</td>
			<td>${data2.quantity}</td>
			</tr>
			<c:forEach var="b1" items="${data1}">
			<tr>
			<td>${b1.id}</td>
			<td>${b1.name}</td>
			<td>${b1.desc}</td>
			<td>${b1.price}</td>
			<td>${b1.quantity}</td>
			</tr>
			</c:forEach>
			</table>
			</div>
			</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/additional-methods.min.js"></script>
<script src="product.js"></script></body>
</html>