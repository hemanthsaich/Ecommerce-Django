<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,com.app.ecommerce.product.Cart,com.app.ecommerce.product.Product"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your cart</title>
<link rel="stylesheet" type="text/css" href="cartstyle.css">
</head>
<body>
	<header>
		<div class="cart-heading">
		<h1>Your Cart</h1>
		</div>
	</header>
	<main>
	<%
		Cart cart = (Cart) session.getAttribute("cart");
		List<Product> cart_items = cart.getItems();
		for(int i=0;i<cart_items.size();i++)
		{
			Product prod = (Product) cart_items.get(i);
	
	%>
	<section class="product">
		<h4>Product ID:<%= prod.getPid() %></h4>
		<h4>Product Name:<%= prod.getPname() %></h4>
		<h4>Product Price:<%= prod.getPprice() %></h4>
	</section>
	
	<% } %> 
	<footer>
	<div class="cart-total">
	<h1>Cart total: <%= cart.getTotal() %></h1>
	</div>
	</footer>
	
	
	</main>
	
	
	
	
</body>
</html>