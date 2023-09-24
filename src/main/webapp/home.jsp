<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.List,com.app.ecommerce.dbHandler.DataFetcher"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<title>Home page</title>
	<link rel="stylesheet" type="text/css" href="styleforhome.css">
</head>
<body>
	<%
		List prodList = DataFetcher.fetchProductsInfo();
	%>
	
	<header>
	<div class="heading-and-cart-btn">
		<div class="heading">
			<h1>Ecommerce store</h1>
		</div>
		<!-- <nav>
			<ul>
				<li>
				<a href="#" class="view-cart">
					<i class="fas fa-shopping-cart"></i>
					<span>
						<a href="cart.jsp">
							<button class="add-to-cart">View Cart</button>
						</a>
					</span>
				</a>
			</ul>
		</nav> -->
		<div class="cart-button">
			<a href="cart.jsp">
				<button class="add-to-cart">View Cart</button>
			</a>
		</div>
		</div>
	</header>
	
	<main>
		<%
			String[] prodArr2 = null;
			for(int i=0;i<prodList.size();i++)
			{
				String[] prodArr = ((String)prodList.get(i)).split(":");
				prodArr2 = prodArr;
			
		%>
		<section class="product">
			<img src="prodImg/<%=prodArr[4]%>" alt="Product 1">
			<h2><%= prodArr[1] %></h2>
			<p><%= prodArr[2] %></p>
			<span class="price"><%= prodArr[3] %></span>
			<form method="post" action="add-to-cart">
				<input type="hidden" name="productId" value="<%=
				Integer.parseInt(prodArr[0])
				%>">
				<input type="submit" id="cart-btn" value="Add-to-cart">
			</form>
		</section>
		<%
			}
		%>
	</main>
</body>
</html>