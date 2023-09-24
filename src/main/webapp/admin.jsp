<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List,com.app.ecommerce.dbHandler.DataFetcher"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
<link rel="stylesheet" type="text/css" href="styleforadmin.css">
<script>
	function displayContent(event, contentId)
	{
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for(i=0;i<tabcontent.length;i++){
			tabcontent[i].style.display="none";
		}
		
		tablinks = document.getElementsByClassName("tablinks");
		for(i=0;i<tablinks.length; i++){
			tablinks[i].className = tablinks[i].className.replace("active","");
		}
		
		document.getElementById(contentId).style.display = "block";
		event.currentTarget.className+="active"; 
		
	}


</script>
</head>
<body>
	<%
		List userList = DataFetcher.fetchUsersInfo();
	%>
	
		<div class="panel">
			<div class="button-container">
				<button class="tablinks active"  onclick="displayContent(event, 'tab1')">View customers info </button>
				<button class="tablinks"  onclick="displayContent(event, 'tab2')">View products info</button>
				<button class="tablinks"  onclick="displayContent(event, 'tab3')">Add new product</button>
			</div>
			<div class="content-container">
				<div class="tabcontent" id="tab1">
				<table border class="view-customer-table">
					<thead>
						<tr>
							<th>Username</th>
							<th>Email</th>
							<th>Gender</th>
							<th>Address</th>
						</tr>
					</thead>
					<tbody>
						<%
							for(int i=0;i<userList.size();i++)
							{
								String[] custArr = ((String)userList.get(i)).split(":");
							
						%>
						<tr>
							<td><%= custArr[0] %></td>
							<td><%= custArr[1] %></td>
							<td><%= custArr[2] %></td>
							<td><%= custArr[3] %></td>
						</tr>
						<%
							}
						%>
						<tr>
						
						</tr>
					</tbody>
				</table>
				</div>
				
				
				<%
					List prodList = DataFetcher.fetchProductsInfo();
				%>
				<div class="tabcontent" id="tab2">
					<table border class="view-products-table">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Image</th>
							</tr>
						</thead>
						<tbody>
							<% for(int i=0;i<prodList.size();i++)
							{
								String[] prodArr = ((String)prodList.get(i)).split(":");
								
							%>
							<tr>
								<td><%= prodArr[0] %></td>
								<td><%= prodArr[1] %></td>
								<td><%= prodArr[2] %></td>
								<td><%= prodArr[3] %></td>
								<td><img src="prodImg/<%= prodArr[4] %>" alt = "Product 1" class="td-image"></td>
							</tr>
							<%
								}
							%>
							<tr>
							
							</tr>	
						</tbody>
					</table>
				</div>
		
		<div class="tabcontent" id="tab3">
			<form action="addP" method="post">
				<div class="form-group" >
					<label for="product-id">Product ID:</label>
					<input type="text" id="product-id" name="product-id">
				</div>
				<br><br>
				<div class="form-group">
					<label for="product-name">Product Name:</label>
					<input type="text" id="product-name" name="product-name">
				</div>
				<br><br>
				<div class="form-group">
					<label for="product-description">Product Description:</label>
					<input type="text" id="product-description" name="product-description">
				</div>
				<br><br>
				<div class="form-group">
					<label for="product-price">Product Price:</label>
					<input type="text" id="product-price" name="product-price">
				</div>
				<br><br>
				<div class="form-group">
					<label for="product-image">Product Image:</label>
					<input type="text" id="product-image" name="product-image">
				</div>
				<br><br>
				<button type="submit">Submit</button>
			</form>
		</div>
	</div>
	</div>


</body>
</html>