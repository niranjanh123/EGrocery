<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ecommerce Dynamic Web Template</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link type="text/css" rel="stylesheet" href="cardstyle.css" />
</head>
<body>
  <script>
        function validation()
        {
            var pressed;
            if(pressed = true){
            swal("Thank you!", "Transaction Successfull!", "success");
            }
            else{
                swal("failed", "Process failed", "error");
            }
        }
        </script>
    <div id = "colorstrip"/>
    <header>
      <div class="top_header">
        <div id = "colorstrip"/>
        <img src = "images/commerce.png" alt = "Grocery image" class = "logo" height="100px width=100px"/>
        <h1 class="title_header">EGrocery</h1>
      </div>
    </header>
    <div class="clear">
    </div>
    <hr>
    
<section class="container">
 <section class="one">
  <div class="logo">
    <img src="images/list_one_amul.png" height="180px" width="180px">
  </div>
  <h2 class="heading">
    Amul Butter - Pasteurised
  </h2>
  <h2 class="heading_prize">Rs. 250</h2>

   <form method ="post" action="booking">
     <p> 
    <strong>QUANTITY :</strong> 
    <select name="Choose">
        <option value="1">0</option>
        <option value="2">1</option>
        <option value="3">2</option>
        <option value="4">3</option>
        <option value="5">4</option>
        <option value="6">5</option>
        <option value="7">6</option>
    </select>
    <input type ="hidden" name="a">
  </p>
    <button class="btn" role="button" name="button" value="amul" onclick="validation()">
        BUY NOW !
    </button>
   
       
  </form>
  </section>
 
</section>


<section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_two_nestle.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
      Nescafé Classic Coffee
     </h2>
     <h2 class="heading_prize">Rs. 254</h2>

     <form method ="post" action="booking">
         <p> <strong>QUANTITY :</strong> 
         <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
         </select>
     </p>
       <button class="btn" role="button" name="button" value="nestle" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>



   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_three_dabur.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Dabur honey
     </h2>
     <h2 class="heading_prize">Rs. 371</h2>
    <form method ="post" action="booking">
		 <p> <strong>QUANTITY :</strong> 
        <select name="Choose">
           <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="dabur" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>

   </section>



   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_four_haldiram.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Haldiram mixture
     </h2>
     <h2 class="heading_prize">Rs. 20</h2>
     <form method ="post" action="booking">
        <p> <strong>QUALITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button"name="button" value="haldiram" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_five_britania.png" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Marie Gold
     </h2>
     <h2 class="heading_prize">Rs. 5</h2>
     <form method ="post" action="booking">
    	<p> <strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="britania" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
     
   </section> 
   
   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_six_lays.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Lays 
     </h2>
     <h2 class="heading_prize">Rs. 10</h2>
    <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
       <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="lays" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>


   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_seven_rusk.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
      Rusk
     </h2>
     <h2 class="heading_prize">Rs. 170</h2>
     <form method ="post" action="booking">
       <p> <strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="rusk" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
  
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_two_toor.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
     Toor dal
     </h2>
     <h2 class="heading_prize">Rs. 125</h2>
     <form method ="post" action="booking">
       <p> <strong>QUANTITY :</strong> 
        <select name="Choose">
           <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="toordal" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
   
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/list_eight_soda.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Soda water drink
     </h2>
     <h2 class="heading_prize">Rs. 40</h2>
     
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
           <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="soda" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>
   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_four_noodles.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
      Noodles
     </h2>
     <h2 class="heading_prize">Rs. 12</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="noodles" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_three_cumin.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Cumin seeds
     </h2>
     <h2 class="heading_prize">Rs. 170</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="cuminseeds" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_six_urad.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Urad dal
     </h2>
     <h2 class="heading_prize">Rs. 158</h2>
     
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="uraddal" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_eight_oreo.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Oreo buiscit
     </h2>
     <h2 class="heading_prize">Rs. 70</h2>
    
     <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="oreo" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_one_salt.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Tata salt
     </h2>
     <h2 class="heading_prize">Rs. 18</h2>
     
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="tatasalt" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_five_dark.png" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Dark fantacy
     </h2>
     <h2 class="heading_prize">Rs. 24</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="darkfantacy" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
     
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/item_seven_chana.jpeg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Chana dal
     </h2>
     <h2 class="heading_prize">Rs. 50</h2>
     <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="chanadal" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/jams.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Jam
     </h2>
     <h2 class="heading_prize">Rs. 130</h2>
     <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="jam" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/oats.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Oats
     </h2>
     <h2 class="heading_prize">Rs. 278</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="oats" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>

   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/nuts.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Nuts and bar
     </h2>
     <h2 class="heading_prize">Rs. 248</h2>
    <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="nuts" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/pasta.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Pasta
     </h2>
     <h2 class="heading_prize">Rs. 25</h2>
     <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="pasta" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/choco.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Choco fills
     </h2>
     <h2 class="heading_prize">Rs. 98</h2>
     <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="chocofills" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
  
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/corn_flakes.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Corn flakes
     </h2>
     <h2 class="heading_prize">Rs. 307</h2>
     
    <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="cornflakes" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/red_label.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Red label
     </h2>
     <h2 class="heading_prize">Rs. 215</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="redlabel" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/oil.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Cornlite oil
     </h2>
     <h2 class="heading_prize">Rs. 375</h2>
    <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="oil" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
 
   </section>


   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/almonds.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Almonds
     </h2>
     <h2 class="heading_prize">Rs. 470</h2>
    <form method ="post" action="booking">
        <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="almonds" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/pickle.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Pickle
     </h2>
     <h2 class="heading_prize">Rs. 70</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="pickle" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
  
   </section>

   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/basmati.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Basmati rice
     </h2>
     <h2 class="heading_prize">Rs. 789</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="basmatirice" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/moong.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Green moong
     </h2>
     <h2 class="heading_prize">Rs. 76</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="greenmoong" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>

   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/good_life.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       Good life
     </h2>
     <h2 class="heading_prize">Rs. 53</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="goodlife" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
    
   </section>


   
   <section class="container">
    <section class="one">
     <div class="logo">
       <img src="images/atta.jpg" height="180px" width="180px">
     </div>
     <h2 class="heading">
       AAshirvaad Atta
     </h2>
     <h2 class="heading_prize">Rs. 391</h2>
     <form method ="post" action="booking">
       <p><strong>QUANTITY :</strong> 
        <select name="Choose">
            <option value="1">0</option>
        	<option value="2">1</option>
      	  	<option value="3">2</option>
      	  	<option value="4">3</option>
        	<option value="5">4</option>
        	<option value="6">5</option>
        	<option value="7">6</option>
        </select>
     </p>
       <button class="btn" role="button" name="button" value="atta" onclick="validation()">
        BUY NOW !
       </button>
     </form>
     </section>
  
</body>
</html>