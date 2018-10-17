<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project.aspx.cs" Inherits="project.project" %>

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
		height:600px;
		text-align:center;
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
        height: 700px;
		margin-right:3%;

	}
	
	
	@media only screen and (max-width:1000px){
	.col1, .col2 {
	width:46%;
	}
	
	}
    @media only screen and (max-width:786px) {
            .col1, .col2 {
                width: 46%;
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
    a {
      color: #004080;
      text-decoration: none;
      background-color: transparent;
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
            <div class="col col2 centercol">
                <h1>Welcome to Conqueror Hook and Ladder Company Web Site</h1>
				<h3>Feel free to browse around the website to learn more.<br /> In the navigation bar, this site provides access <br /> to be able to register your information and
                <a href="volunteer.aspx">Volunteer</a> to help out the firefighters. <br />There is also access for administrative users to check the records<br /> of the people that have 
                signed up in the <a href="Administrative.aspx">Administrative</a> page.<br /> This website also provides the user to be able<br /> to see 
                <a href="images.aspx">pictures</a> of the Conqueror Hook and Ladder Company.
                 </h3>
				
				<p>*More information provided on each page by clicking on the link</p>
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

