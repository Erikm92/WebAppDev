<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleterecord.aspx.cs" Inherits="project.deleterecord" %>
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
    .formsubmit {
     
    background-color: #f2f2f2;
    padding:10px;
    padding-bottom:5%;
    border:thin;
    border-style:solid;
    border-color:black;
    margin-left:30%;
    margin-right:30%;
       
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
        width: 40%;
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
      width:80%;
        height: 700px;
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
		background-color:#323232;
		color:white;
		text-align:center;
		font-size:20px;
	}

	 .aspsubmit {
    border:2px solid black;
    background-color:white;
    color:black;  
    padding: 10px 20px;
    float:left;
    cursor:pointer;
    border-radius:4px;
    margin-top:2%;
       }
    .aspsubmit:hover {
    background-color:#1f2833;
    color:white;
        }
    
   
    .labels {
        padding: 10px;
        padding-left:5%;
        display:inline-block;
        }
   
    .labelout {
        width:100%;
        padding:10px;
        border:1px solid #ccc;
        resize:vertical;
        }
        
    .collabel {
        float:left;
        width:40%;
        margin-top:1%;
        text-align:left;
        

        
        }
        .coltext {
        float:left;
        width:50%;
        margin-top:3%;
        text-align:left;
        
        }
        .row {
        content:"";
        clear:both;
        }
        .red {
        color:red;
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
                <h1>Delete Record</h1>
               <form class="formsubmit" runat="server" id="frminfo">
                    <fieldset>
                    <legend>Record Information</legend>
                    
                      <div class="row">
                     <div class="collabel">
                    <asp:Label runat="server" ID="lbl1" CssClass="labels" Text="First Name:"></asp:Label>
                     </div>
                          
                    <div class="coltext">
                    <asp:Label runat="server" ID="lblfname" CssClass="labelout"></asp:Label>
                 
                       </div>

                      </div>
                           <div class="row">
                     <div class="collabel">
                         

                         <asp:Label runat="server" ID="Label1" CssClass="labels" Text="Last Name:"></asp:Label>
                     </div>
                    <div class="coltext">
                       <asp:Label runat="server" ID="lbllname" CssClass="labelout"></asp:Label>

                        </div>
                   </div>

                    
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lbl2" CssClass="labels" Text="Phone Number:"></asp:Label>

                    </div>
                    <div class="coltext">
                         <asp:Label runat="server" ID="lblphone" CssClass="labelout"></asp:Label>
                    </div>
                    </div>
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lbl3" CssClass="labels" Text="Email Address:"></asp:Label>

                    </div>
                    <div class="coltext">
                    <asp:Label runat="server" ID="lblemail" CssClass="labelout"></asp:Label>
                    </div>
                    </div>
                    <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lbl4" CssClass="labels" Text="Method of Contact:"></asp:Label>
                        </div>
                        <div class="coltext">
                        <asp:Label runat="server" ID="lblcontact" CssClass="labelout"></asp:Label>
                        </div>
                    </div>
                           <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="Lbl5" CssClass="labels" Text="ID"></asp:Label>
                        </div>
                        <div class="coltext">
                        <asp:Label runat="server" ID="lblid" CssClass="labelout"></asp:Label>
                        </div>
                    </div>
                               <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="Lbl6" CssClass="labels" Text="Delete Record?"></asp:Label>
                        </div>
                        <div class="coltext">
                      <asp:Button runat="server" ID="btndelete" Text="Yes" OnClick="Btndeleteid_Click" CssClass="aspsubmit"/>
                        <asp:Button runat="server" ID="btnreturn" Text="No" OnClick="Btnreturn_Click" CssClass="aspsubmit" />

                        </div>
                    </div>
                              <div class="row">
                    <div class="collabel">
                    <asp:Label runat="server" ID="lbldeleted" CssClass="labels red" Text=""></asp:Label>
                        <a href="Administrative.aspx" class="labels">Back to Administrative Page</a>
                        </div>
                                  </div>
                        
                        </fieldset>
                    </form>
				    </div>
           
                 </main>
            
	
    <footer>
	<div class="footer">
	<p>&copy; Copyright 2018 Conqueror Hook and Ladder Company all rights reserved Contact Information</p>
	</div>
	</footer>
    	
	
</body>


</html>



