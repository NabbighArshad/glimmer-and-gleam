<?php
include('connection.php');

session_start();
if(isset($_SESSION['is_logged_in']) && $_SESSION['is_logged_in'] === true ){
    // header('Location: add_to_cart.php'); 
// echo "<script type='text/javascript'>alert('You are logged in');</script>";
echo '<span style="color:green;font-size:25px; animation: blinker 1s linear infinite;">You are logged in</span>';
echo '<style>
@keyframes blinker {
  50% { opacity: 0; }
}
</style>';
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>glimmer and gleam</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        *{
            padding: 0;
            margin: 0;
            text-decoration: none;
            scroll-behavior: smooth;
            font-size:20px;

        }
        .maindiv {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: black;
            padding: 10px 20px;
        }

        .nav {
            color: white;
            text-decoration: none;
            padding: 14px 20px;
            display: inline-block;
            
        }

        .nav:hover {
            background-color: #ddd;
            color: black;
        }

        .maindiv a, .maindiv button {
           color: white;
           text-decoration: none;
           background: none;
           border: none;
           cursor: pointer;
           padding: 14px 20px;
           font-size: 16px;
        }

        .maindiv button:hover a, .maindiv button:hover {
           background-color: #ddd;
           color: black;
        }

        .fa-shopping-cart {
           margin-right: 10px;
        }

        .maindiv .left, .maindiv .right {
            display: flex;
            align-items: center;
        }

        .left a {
            margin-right: 20px;
        }

        .right button {
           margin-left: 20px;
        }

        
     
        #footer{
            background-color: black;
            height: 300px;
            color: beige;
            text-align: center;
            text-decoration: none;
            font-size:20px;
        }
        #first-block{
           background-color:#CB997E;
           height:800px;
           align-content:center;
           font-size:70px;
           color:white;
           /* background-image:url(coverpic4.jpg); */
           background-size: cover;
           image-rendering: pixelated;


        }
        .container{
           justify-content: center;
           position: relative;
           align-items: center;
           /* flex-wrap: wrap;  */
           margin:29px;
           /* padding:15px; */

        } 
        .jewelry{
            padding:20px;
            margin: 25px;
            font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-size: 15px;
            border: 2px solid white;
            box-shadow:  8px 8px 8px rgba(0, 0, 0, 0.2),5px 5px 5px 5px rgba(0, 0, 0, 0.19);
            display:inline flex;

        }
        .jewelry:hover{
            border: 4px solid maroon;
        }
        img{
            image-rendering: pixelated;
        }
        
    /* #sort{
        width:500px;
        margin-right:50px;
        margin-left:none;
        height:45px;
        border:3px solid black;
        border-radius:8px;
        font-size:20px;

        

    }
    #sort:hover{
        cursor:pointer;
        box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;  
     } */
    
     #searchdiv{

        display:flex;
        /* justify-content:space-evenly; */
        padding:20px 0px 0px 0px;
        text-decoration:none;

     }
     #sort{
        border:3px double black;
        border-radius:5px;
        width: fit-content;
        height:45px;
        margin-left:150px;
     }
     #sort:hover{
        cursor:pointer;
        box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;  
     } 
    
     #searchbar{
        border:3px double black;
        border-radius:5px;
        width: 500px;
        height:45px;
        margin-left:90px;

     }
     #searchbar:hover{
        cursor:pointer;
        box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px; 
     }
     #searchbutton{
        margin-left:0px;
        background-color:green;
        color:white;
        width:100px;
        height:45px;
        border:3px double black;
        border-radius:5px;
     }
     #searchbutton:hover{
        cursor:pointer;
        box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px; 
     }

     #addproduct{
        margin-left:250px;
        background-color:maroon;
                width:100px;
                border:3px double black;
                border-radius:5px;

     }
     #addproduct:hover{
        cursor:pointer;
        box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px; 
     }

    </style>
    
</head>
<body>
<nav>
    <div class="maindiv">
        <div class="left">
            <a class="nav" id="home" href="glimmer-and-gleam.php">Home</a>
            <a class="nav" id="about" href="#footer">About</a>
            <a class="nav" id="contact" href="#footer">Contact</a>
        </div>
        <div class="right">
            <i class="fa fa-shopping-cart" style="font-size:48px;color:red;margin-bottom:5px;">
                <a class="nav" style="color:red;font-size:30px;" href="add_to_cart.php">mycart</a>
            </i>
            <?php
            if(!isset($_SESSION['email'])):?>
            <button class="nav" id="signup">
                <a href="signup.php">Sign in</a>
            </button>
            
            <button class="nav" id="signup">
                <a href="login.php">Login</a>
            </button>
            
            <?php else:?>
            <button class="nav" id="login">
                <a href="logout.php" onclick="return logout()">Logout</a>
            </button>
            <?php endif;?>
            <script>
                function logout(){
                    return confirm("do you want to logout?");
                }
            </script>

        </div>
    </div>
</nav>


<form method="GET" action="searchbar.php">
<div id="searchdiv">
    <!-- <div class="search-container"> -->
        
<select name="sort" id="sort">
    <option value="">Sort by </option>
    <option value="price_asc">Price: Low to High </option>
    <option value="price_desc">Price: High to Low </option>
    <option value="date_asc">Date: Old to New </option>
    <option value="date_desc">Date: New to Old </option>
    <option value="name_asc">Name: A to Z</option>
    <option value="name_desc">Name: Z to A </option>
</select>

    <input style="color:black;" id="searchbar" type="search" name="search" placeholder="What are you looking for?">
    <button id="searchbutton" type="submit" name="submit">Search</button>

    <button id="addproduct">

        <a style="color:white;" href="productupload.php">
            Add Product
        </a>
    </button>

    
<!-- </div> -->
</div>
</form>


<br>


<img style="image-rendering: pixelated;" width="1445" height="700" src="GLIMMER & GLEAM 4.png" alt="not responding">

<h1 style="text-align:center; font-size:90px; margin-top:20px;">Top Sales</h1>


<div class="container">

<div class="jewelry">
    <a href="earrings.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/3-463361_1445x.png?v=1719061136" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;">Ear rings</h3>
    </a>
</div>

<div class="jewelry">
    <a href="necklace.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/25-286781_1445x.png?v=1715760935" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;">Necklace</h3>
    </a>
</div>

<div class="jewelry">
    <a href="partynecklace.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/9-946934_1445x.png?v=1719061199" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;"> Party wear Necklace</h3>
    </a>
</div>

<div class="jewelry">
    <a href="bangles.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/4_4f1daaca-d873-4bb3-b9d1-a19248d55968-455853_1445x.png?v=1715761212" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;"> Bangles</h3>
    </a>
</div>

<div class="jewelry">
    <a href="headwear.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/5-100102_1445x.png?v=1715761003" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;"> Headwear</h3>
    </a>
</div>

<div class="jewelry">
    <a href="anklets.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/4-428413_1445x.png?v=1715761040" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;">Anklets</h3>
    </a>
</div>

<div class="jewelry">
    <a href="bridalsets.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/1_d3b9c308-70c2-442e-a6e4-0f9491277e00-456230_1445x.png?v=1715761081" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;">Bridal Sets</h3>
    </a>
</div>

<div class="jewelry">
    <a href="rings.php">
        <img height="270" width="240" src="https://alita.pk/cdn/shop/collections/8-202900_1445x.png?v=1715761112" alt="not responding">
        <h3 style="background-color:brown; color:white; height:40px; text-align:center;">Rings</h3>
    </a>
</div>


</div>



    <div id="footer">
<footer>
    <pre>
        
    
    made with love &#9829 

    <a style="color: antiquewhite; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;" href=""> Conditions of Use         Privacy Notice          Your Ads Privacy Choices

        &#169 1996 - till now, Glimmer and Gleam.com, Inc. or its affiliates

            contact us at : nabbigharshad@gmail.com

            mobile number : 0301-5678708
    </a>
    </pre>
</footer>
</div>
</body>
</html>


