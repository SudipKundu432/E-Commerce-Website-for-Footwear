
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ecommerce</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/admindashboard.css">
    
</head>
<body>

    <!-- Dashboard section starts here -->
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fa fa-user-plus" aria-hidden="true"></i></span>
                        <span class="title"><h2>Dashboard</h2></span>
                    </a> 
                </li>
                <li>
                    <a href="viewitem">
                        <span class="icon"><i class="fa fa-home" aria-hidden="true"></i></span>
                        <span class="title">Home</span>
                    </a>
                </li>
                
                <li>
                    <a href="addform">    
                        <span class="icon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        <span class="title">Add Product</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                        <span class="title">View User</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><i class="fa fa-cogs" aria-hidden="true"></i></span>
                        <span class="title">View Order</span>
                    </a>
                </li>
                
                <li>
                    <a href="#">
                        <span class="icon"><i class="fa fa-cogs" aria-hidden="true"></i></span>
                        <span class="title">View Feedback</span>
                    </a>
                </li>
                
                <li>
                    <a href="/logout">
                        <span class="icon"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
                        <span class="title">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
    <!-- Dashboard section ends here -->

        <div class="main">
            <div class="topbar">
                <div class="toggle"></div> 
                <div class="search">
                <label for="html">
                    <input type="text" placeholder="Search Here">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </label>
                </div>
                <div class="user">
                    <img src="./img/dashboard logo.png" style="height:80px;">
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
                    <div class="cardheader">
                    <h4>${msg}</h4>
                        
                    </div>
                    <div>
  <form action="additem"  method="post" enctype= "multipart/form-data" >
    <label for="fname">Product Id</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text"  name="prodid" placeholder="Product Id.."><br><br>

    <label for="lname">ProductName</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text"  name="prodname" placeholder="Product name.."><br><br>

<label for="lname">Brand</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
	<select id="lname" name="prodbrand">
		<option value="Adidas">Adidas</option>
		<option value="Bata">Bata</option>
		<option value="Campus">Campus</option>
		<option value="Khadims">Khadims</option>
		<option value="Nike">Nike</option>
		<option value="Paragon">Paragon</option>
		<option value="Puma">Puma</option>
		<option value="Reebok">Reebok</option>
		<option value="Woodland">Woodland</option>
	</select><br><br>
	
    <label for="country">Category</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <select id="country" name="category">
      <option value="mcollection">Men's Collection</option>
      <option value="wcollection">Women's Collection</option>
      <option value="bcollection">Boy's Collection</option>
      <option value="gcollection">Girl's Collection</option>
<!--       <option value="shoes">Shoes</option> -->
    </select><br><br>
  <label for="lname">Quantity</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text"  name="qty" placeholder="Quantity.."><br><br>
    
    <label for="lname">Price</label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="text"  name="price" placeholder="Price.."><br><br>
    Select File:<input type="file" name="file" accept="image/*,video/*"/><br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Clear">
  </form>
</div>
 
                </div>
                
        </div>
     
    </div>
</body>
</html>