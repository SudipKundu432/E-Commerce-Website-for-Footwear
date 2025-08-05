<%@page import="java.util.*"%>
<%@page import="com.example.Ecomp.model.Product"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ecommerce</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admindashboard.css">

</head>
<body>

	<!-- Dashboard section starts here -->
	<div class="container">
		<div class="navigation">
			<ul>
				<li><a href="#"> <span class="icon"><i
							class="fa fa-user-plus" aria-hidden="true"></i></span> <span
						class="title"><h2>Dashboard</h2></span>
				</a></li>
				<li><a href="${pageContext.request.contextPath}/viewitem">
						<span class="icon"><i class="fa fa-home" aria-hidden="true"></i></span>
						<span class="title">Home</span>
				</a></li>

				<li><a href="${pageContext.request.contextPath}/addform"> <span
						class="icon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
						<span class="title">Add Product</span>
				</a></li>
				<li><a href="#"> <span class="icon"><i
							class="fa fa-user" aria-hidden="true"></i></span> <span class="title">View
							User</span>
				</a></li>
				<li><a href="#"> <span class="icon"><i
							class="fa fa-cogs" aria-hidden="true"></i></span> <span class="title">View
							Order</span>
				</a></li>

				<li><a href="#"> <span class="icon"><i
							class="fa fa-cogs" aria-hidden="true"></i></span> <span class="title">View
							Feedback</span>
				</a></li>

				<li><a href="/logout"> <span class="icon"><i
							class="fa fa-sign-out" aria-hidden="true"></i></span> <span
						class="title">Log out</span>
				</a></li>
			</ul>
		</div>
		<!-- Dashboard section ends here -->

		<div class="main">
			<div class="topbar">
				<div class="toggle"></div>
				<div class="search">
					<label for="html"> <input type="text"
						placeholder="Search Here"> <i class="fa fa-search"
						aria-hidden="true"></i>
					</label>
				</div>
				<div class="user">
					<img src="./img/dashboard logo.png" style="height: 80px;">
				</div>
			</div>


			<div class="cardbox">
				<div class="card">
					<div>
						<div class="numbers">0</div>
						<div class="cardname">Active Users</div>
						<div class="numbers"></div>
					</div>
					<div class="iconbox">
						<i class="fa fa-users" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card">
					<div>
						<div class="numbers">0</div>
						<div class="cardname">Sales</div>
						<div class="numbers"></div>
					</div>
					<div class="iconbox">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
				</div>


			</div>


			<div class="details">
				<div class="recentorders">
					<div class="cardheader"></div>
					<div>
						<%
						Product product = (Product) request.getAttribute("data");
						if (product != null) {
						%>
						<form action="/update" method="post" enctype= "multipart/form-data" >
							<label for="fname">Product Id</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="text" name="prodid" value="<%=product.getId()%>"
								readonly><br>
							<br> <label for="lname">ProductName</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="text" name="prodname"
								value="<%=product.getName()%>"><br>
							<br> <label for="lname">Brand</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="text" name="prodbrand"
								value="<%=product.getBrand()%>" readonly><br>
							<br> <label for="fname">Category</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="text" name="category"
								value="<%=product.getCatagory()%>" readonly><br>
							<br> <label for="lname">Quantity</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="text" name="qty" value="<%=product.getQuantity()%>"><br>
							<br> <label for="lname">Price</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<input type="text" name="price" value="<%=product.getPrice()%>"><br>
							<br>
							<div style="display: flex; align-items: center;">
								<label for="fileInput" style="margin-right: 2.9rem;">Select
									File:</label> <input type="file" name="file" accept="image/*"
									id="fileInput" onchange="updateFileName()" /> <label
									for="fileName" style="margin-right: 0.6rem;">Current
									File:</label>
								<!-- Display current file name here -->
								<input type="text" id="fileName"
									value="<%=product.getFilePath() != null && !product.getFilePath().isEmpty() ? product.getFileName() : "No file chosen"%>"
									readonly class="form-control ml-2" style="width: 200px;" />
							</div>

							<!-- Hidden field to retain old file path -->
							<input type="hidden" name="existingFilePath"
								value="<%=product.getFilePath()%>" />

							<script>
								function updateFileName() {
									const fileInput = document
											.getElementById("fileInput");
									const fileNameField = document
											.getElementById("fileName");

									if (fileInput.files.length > 0) {
										fileNameField.value = fileInput.files[0].name;
									} else {
										fileNameField.value = "";
									}
								}
							</script>
							<br>
							<br> <input type="submit" value="Submit"> <input
								type="reset" value="Clear">
						</form>
						<%
						}
						%>
					</div>

				</div>

			</div>

		</div>
</body>
</html>