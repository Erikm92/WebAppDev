<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordform.aspx.cs" Inherits="project.passwordform" %>

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
    .formsubmit {
    
    
    background-color: #f2f2f2;
    padding:20px 20px 20px 20px;
    margin:5% 20% 5% 20%;
    border:thin;
    border-style:solid;
    border-color:black;
    
   
   }
     .legendleft {
      text-align:left;
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
        width: 70%;
        float: left;
      
        }
    .col1{
        margin-top:40px;
	    background-color:black;
        height: 600px;
		margin-right:3%;
        width:20%;
        float:left;
        text-align:left;
        padding-top:3%;
        
    }
	.col2{
	  background-color: #c5c6c7;
        height: 600px;
		margin-right:3%;}
	
	
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
	.col {
	width:100%;
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
	
   
   
    .aspsubmit {
    border:none;
    background-color:blue;
    color:white;  
    padding: 10px 20px;
    float:right;
    cursor:pointer;
    border-radius:4px;
    margin-top:2%;
    margin-right:6%;
    

        }
    .aspsubmit:hover {
    color:red;
        }
    
   
    .labels {
        padding: 12px;
        padding-left:1%;
        display:inline-block;
        }
   
    .textbox {
        width:100%;
        padding:12px;
        border:1px solid #ccc;
        resize:vertical;
        }
    .collabel {
        float:left;
        width:40%;
        margin-top:2%;
        text-align:left;
        

        
        }
        .coltext {
        float:left;
        width:50%;
        margin-top:2%;
        
        
        }
        .row {
        content:"";
       
        clear:both;

        }
</style>
<script>
   
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
            <div class="col col2 centercol">
                <h1>Administrative Access</h1>
                <form class="formsubmit" runat="server" id="frminfo">
                    <fieldset>
                    <legend class="legendleft">Enter Information</legend>
                    
                      <div class="row">
                     <div class="collabel">
                    <asp:Label runat="server" ID="lblusername" CssClass="labels" Text="UserName:"></asp:Label>
                     </div>
                    <div class="coltext">
                    <asp:TextBox runat="server" ID="txtname" placeholder="Your User Name*" CssClass="textbox"></asp:TextBox>
          
                   </div>

                    </div>
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lblphone" CssClass="labels" Text="Password:"></asp:Label>

                    </div>
                    <div class="coltext">
                    <asp:TextBox runat="server" ID="Txtphone" placeholder="Your password*"  CssClass="textbox" Type="password" ></asp:TextBox>
                  
                  
                    </div>
                    </div>
                  <div class="row">
                 <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="aspsubmit" />
                

                  </div>
               	</fieldset>
                        </form>
			
			
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