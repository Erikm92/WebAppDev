<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="project.volunteer" %>

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
    padding:10px;
    padding-bottom:5%;
    border:thin;
    border-style:solid;
    border-color:black;
   
   
    
   

        
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
        width: 35%;
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
        height: 600px;
		margin-right:3%;}
	.col3{  background-color: #c5c6c7;
        height: 600px;}
	
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
	
   
   
    .aspsubmit {
    border:none;
    background-color:blue;
    color:white;  
    padding: 10px 20px;
    float:right;
    cursor:pointer;
    border-radius:4px;
    margin-top:2%;
    

        }
    .aspsubmit:hover {
    color:red;
        }
    .visible {
    display:none;
        }
   
    .labels {
        padding: 25px;
        padding-left:1%;
        display:inline-block;
        }
   
    .textbox {
        width:100%;
        padding:12px;
        border:1px solid #ccc;
        resize:vertical;
        }
        .dropbox {
            margin-top:6%;
        width:100%;
        padding:10px;
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
    function myfunction() {
        var x = document.getElementById("<%=drdlist.ClientID %>");
        var y = document.getElementById("<%=lblbest.ClientID %>");
        var z = document.getElementById("<%=txtbest.ClientID %>");
        var w = document.getElementById("field2");
        var selected = x.value;
        if (selected == '2') {
            y.style.display = "block";
            z.style.display = "block";
            w.style.display = "block";
        }
        else {
                y.style.display = "none";
                z.style.display = "none";
                w.style.display = "none";
            };


            //alert("works");
      

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
            <a href="passwordform.aspx">Administrative</a>
            
            </div>
            <div class="col col2 centercol">
                <h1>Volunteer</h1>
                <form class="formsubmit" runat="server" id="frminfo">
                    <fieldset>
                    <legend>Enter Information</legend>
                    
                      <div class="row">
                     <div class="collabel">
                    <asp:Label runat="server" ID="lblname" CssClass="labels" Text="Full Name:"></asp:Label>
                     </div>
                    <div class="coltext">
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtname" ErrorMessage="Name Required" ForeColor="Red"> </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" Display="dynamic" ControlToValidate="txtname" ErrorMessage="Letters only" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:TextBox runat="server" ID="txtname" placeholder="Your Name*" CssClass="textbox"></asp:TextBox>
                       
          
                   </div>

                    </div>
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lblphone" CssClass="labels" Text="Phone Number:"></asp:Label>

                    </div>
                    <div class="coltext">
                       <asp:RequiredFieldValidator runat="server" ControlToValidate="Txtphone" ErrorMessage="Phone Required" ForeColor="Red" > </asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" ID="Txtphone" placeholder="Your Phone Number*"  CssClass="textbox"></asp:TextBox>
                  
                  
                    </div>
                    </div>
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lblemail" CssClass="labels" Text="Email Address:"></asp:Label>

                    </div>
                    <div class="coltext">
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Txtemail" ErrorMessage="Email Required" ForeColor="Red" > </asp:RequiredFieldValidator>
                    <asp:TextBox runat="server" ID="Txtemail" placeholder="Your Email*"  CssClass="textbox"></asp:TextBox>
               

                    </div>
                    </div>
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lblcontact" CssClass="labels" Text="Method of Contact:"></asp:Label>

                    </div>
                    <div class="coltext">
                    <asp:DropDownList runat="server" ID="drdlist" Onchange="myfunction();" CssClass="dropbox" >
                        <asp:ListItem Value="1" Text="Email" Enabled="true"></asp:ListItem>
                        <asp:ListItem Value="2" text="Phone" ></asp:ListItem>
                    </asp:DropDownList>

                    </div>
                    </div>

                    </fieldset>
                    <fieldset id="field2" class="visible">
                        <legend>Availability</legend>
                    <div class="row">
                        <div class="collabel">
                    <asp:Label runat="server" ID="lblbest" Text="Best Time to Call:" CssClass="visible"></asp:Label>

                        </div>
                        <div class="coltext">
                    <asp:TextBox runat="server" ID="txtbest" CssClass="visible textbox" placeholder="00:00"></asp:TextBox>

                        </div>

                    </div>
                        <div class="row">
                   
                </div>

                    </fieldset>
                 <asp:Button runat="server" ID="btnsubmit" Text="Submit" OnClick="Btnsubmit_Click" CssClass="aspsubmit" />
                <asp:Label runat="server" ID="lblupdate" CssClass="labels" Text=""></asp:Label>
                </form>
				
			
            </div>
            <div class="col col3 centercol">
               <h3>Best times to Visit Us</h3>
                <div id="divresults" runat="server">
                    <p>

                    </p>
                <asp:Label runat="server" ID="lbldate" CssClass="displayblock"></asp:Label>
                <asp:Label runat="server" ID="lblstart" CssClass="displayblock"></asp:Label>
                <asp:Label runat="server" ID="lblend" CssClass="displayblock"></asp:Label>
			   <h4>Feel free to stop by and meet the firefighters to learn more.</h4>
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
