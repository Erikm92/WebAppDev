﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="images.aspx.cs" Inherits="project.images" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conqueror Hook and Ladder Company</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
	<meta charset="utf-8" />
	<link href="https://fonts.googleapis.com/css?family=Amethysta|Playfair+Display+SC" rel="stylesheet"/>
    <style type="text/css">
		html,body{
	font-family: 'Amethysta', serif;
	height:100%;
	position:relative;
	background-color:#1E0000;
	}
	.sidenav a {
    display:block;
    text-decoration:none;
    font-size:20px;
    padding: 8px 8px 8px 8px;
    color:white;
    }
    .sidenav a:hover {
        color:black;
        background-color:white;
        border:thin;
        border-style:solid;
        border-color:white;
        }
	.imagehome{
  
   width:100%;
	position: relative;	
  
}

.imagehome h1{
   
	
    position:absolute;
    text-align:center;
    width:100%;
	margin-top: 5%;
	font-weight: bolder;	
}
.imagehome h1 span{
	background-color:rgba(50,50,50,.7);
	border-radius: 25px;
    color:white;
    letter-spacing:-1px;
    font-size:45px;
    
    padding:10px;
}
    header {
        height: 250px;
        }
	
	.centercol{

	color: #1f2833;
	background-color: #004080;
	border-radius: 25px;
	}
 
   #wrapper {
		
        margin: 0 auto;
        width: 95%;
        text-align: center;
		overflow:hidden;
		display:block;
		position:relative;
		min-height:100%;
		padding-bottom:100px;
		
		
        }
	
    .col {
		
		margin-top:40px;
        width: 80%;
        float: left;
      
        }
    .col1{
        margin-top:40px;
	    background-color:#323232;
        height: 600px;
		margin-right:3%;
        width:12%;
        float:left;
        text-align:left;
        padding-top:3%;
        
    }
	.col2{
	  background-color: #c5c6c7;
        height: 650px;
		margin-right:3%;
        overflow:scroll;
        color: #1f2833;
	background-color:#c5c6c7;
	
	}
	
	@media only screen and (max-width:1000px){
	.col1, .col2 {
	width:46%;
	}
	
	}
	@media only screen and (max-width:786px){
	.col1, .col2 {
	width:46%;
	}
	
	}
	@media only screen and (max-width:600px){
	.col, .col1 {
	width:100%;
    height:30%;
	}
	.imagehome h1 span{
	font-size:30px;}
       
    }	
	
 .footer {
		position:absolute;
		bottom:10px;
		right:0;
		left:0;
		height:60px;
		background-color:#323232;
		color:white;
		text-align:center;
		font-size:20px;
	} 
        </style>
   
<script src="jquery-3.1.1.min.js"></script>
<script>
(function() {  //Functions don't need names. This function will simply run when the page loads
  var flickerAPI = "http://api.flickr.com/services/feeds/photos_public.gne?jsoncallback=?";
  $.getJSON( flickerAPI, {  // The "$" simply refers to jQuery. This calls the getJSON function that is found inside jquery-3.1.1.min.js
    tags: "tarrytown fire department", //Some filter information in the format set by Flickr, who owns the JSON
    tagmode: "any",
    format: "json"
  })
    .done(function( data ) { //Here, a an unnamed function is created made into the event handler for the "done" event... in other words, this is the code that will manifest itself when the getJSON is done.
      $.each( data.items, function( i, item ) {
        $( "<img>" ).attr( "src", item.media.m ).appendTo( "#images" );
        if ( i === 50 ) {
          return false;
        }
      });
    });
    })();
    
 
</script>


</head>
<body>
      <div id="wrapper">
	
	<header>
	 <div class="imagehome">
				   <h1><span>Conqueror Hook and Ladder Company</span></h1>
         <img src="TruckFlag2.jpg" width="100%" height="250px" />
			</div>	   
	    
	</header>
        <main>
            <div class="col1 centercol sidenav a">
            <a href="project.aspx">Home</a>
			<a href="volunteer.aspx">Volunteer</a>
            <a href="images.aspx">Photos</a>
            <a href="Administrative.aspx">Administrative</a>
            
            </div>
            <div class="col col2">
                <div class="centertop">
                <h1 id="myHeader"><span>TarryTown Fire Department</span></h1></div>
              <div id="images"></div>
              

            
			
            </div>
          
		</main>
	
   <footer>
	<div class="footer">
	<p>&copy; Copyright 2018 Conqueror Hook and Ladder Company all rights reserved Contact Information</p>
	</div>
	</footer>
    	</div>
	
</body>

</html>

