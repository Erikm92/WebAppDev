<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="images.aspx.cs" Inherits="project.images" %>

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
    color:#818181;
    }
    .sidenav a:hover {
        color:white;
        border:thin;
        border-style:solid;
        border-color:white;
        }
	
    header {
	
        background-color: #c5c6c7;
        height: 80px;
        padding-top: 10px;
		padding-bottom:10px;
        }
	
	.centertop{
  
	width:100%;
	position: relative;
	}
	.centertop h1{
    text-align:center;
    width:100%;
	margin-top: 12px;
	font-weight: bolder;
	}
	.centertop h1 span{
	background-color:#1f2833;
	border-radius: 25px;
	color:white;
    letter-spacing:-1px;
    font-size:45px;
    padding:10px;
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
        width: 75%;
        float: left;
      
        }
    .col1{
        margin-top:40px;
	    background-color:black;
        height: 600px;
		margin-right:3%;
        width:18%;
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
	.col3{
	width:96%;}
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
	.centertop h1 span{
	font-size:30px;}
       
    }	
	
	
		
    .footer {
		position:absolute;
		bottom:10px;
		right:0;
		left:0;
		height:60px;
		
		background-color: #c5c6c7;
		color:#1f2833;
		text-align:center;
		font-size:20px;
	}
	a{
	color:#004080;
	text-decoration:none;
	background-color:transparent;
	}
	
 
    .visible {
    display:none;
        }
 
        .row {
        content:"";
       
        clear:both;
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
        if ( i === 30 ) {
          return false;
        }
      });
    });
    })();
    
    column.onscroll = function () { myFunction() };

    var header = document.getElementById("myHeader");
    var sticky = header.offsetTop;

    function myFunction() {
        if (column.pageYOffset >= sticky) {
            header.classList.add("sticky");
        } else {
            header.classList.remove("sticky");
        }
    }
</script>


</head>
<body>
      <div id="wrapper">
	
	<header>
	
	 <div class="centertop">
				   <h1><span>Image HL37Header.png goes here</span></h1>
			</div>	   
	</header>
        <main>
            <div class="col1 centercol sidenav a">
            <a href="project.aspx">Home</a>
			<a href="volunteer.aspx">Volunteer</a>
            <a href="images.aspx">Photos</a>
            <a href="password.aspx">Administrative</a>
            
            </div>
            <div class="col col2">
                <div class="centertop">
                <h1 id="myHeader"><span>TarryTown Fire Department</span></h1></div>
              <div id="images"></div>
              

            
			
            </div>
          
		</main>
	
    <footer>
	<div class="footer">
	<p>&copy; Copyright 2018 <a href="index.html">contact info for company</a> all rights reserved</p>
	</div>
	</footer>
    	</div>
	
</body>

</html>

