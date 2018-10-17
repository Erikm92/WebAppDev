﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrative.aspx.cs" Inherits="project.Administrative" %>

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
	background-color:#1f2833;
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
	text-align: center;
	font-weight: bold;
	margin-bottom: 3%;
	color: #1f2833;
	background-color: #004080;
	border-radius: 25px;}
	
	.centercol p{
	padding-top:5px;
	padding-left:20px;
	padding-right:20px;
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
		height:600px;
		text-align:center;
        float: left;
      
        }
    .col1{
        margin-top:40px;
	    background-color: black;
        height: 600px;
		margin-right:3%;
        width:18%;
        float:left;
        text-align:left;
        padding-top:3%;
        
        
    }
	.col2{
	  background-color: #c5c6c7;
        height: 600px;
		margin-right:3%;
        overflow:scroll;
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
	.col3{
	width:96%;}
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
	.textleft{
	text-align:left;
	
	}
   
    .textbox {
    margin-right: 20%;
    float:right;
    max-width:30%;
    border:solid;
    border-color:#1f2833;
    border-width:3px;
    
        }
    .aspsubmit {
    margin-top:3%;
    margin-left:30%;
    max-width:30%;
    
    border:solid;
    border-color:black;
    border-width:2px;
    color:black;  
        }
    .aspsubmit:hover {
    color:red;
        }
        .divresults {
        display:inline;
        }
        table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}
</style>

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
            <a href="password.aspx">Administrative</a>>
            
            </div>
            <div class="col col2 centercol">
                <h2>Recorded Volunteers</h2>

            <table>
              <tr>
                <th>Full Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Contact</th>
              </tr>
                 <tr id="htmlstr"> 
                  
                <td>name</td>
                <td>phone</td>
                <td>email</td>
               <td>contact</td>
            </tr>
              <tr> 
                  
                <td><asp:Literal ID="literalname" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="literalphone" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="literalemail" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="literalcontact" runat="server"></asp:Literal></td>
               
            </tr>

            </table>

               <div id="divresults" runat="server">
                   <p></p>
                   
               </div>
               
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
