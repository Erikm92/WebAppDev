<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrative.aspx.cs" Inherits="project.Administrative" %>

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
    margin-bottom:5%;
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
		margin-right:3%;
        margin-top:40px;
        float: left;
        
	}
	   .h1recorded {
          color: #1f2833;
           text-align:center;
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
    @media only screen and (max-width:600px) {
            .col, .col1 {
                width: 100%;
                height: 30%;
            }
        
	.imagehome h1 span{
	font-size:30px;}
       
    }	
	.footer {
		
		bottom:10px;
		right:0;
		left:0;
		height:60px;
		background-color:#323232;
		color:white;
		text-align:center;
		font-size:20px;
        padding-top:2px;
	} 
       
        table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
   
}

    td, th {
    border: 1px solid #1f2833;
    text-align: left;
    padding: 8px;
}
        .frmtable {
      
    background-color: #f2f2f2;
    padding:10px;
    padding-bottom:5%;
    border:thin;
    border-style:solid;
    border-color:black;
    margin-left:20%;
    margin-right:20%;
    overflow:scroll;
    height:400px;
    width:70%;
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
            <a href="Administrative.aspx">Administrative</a>>
            
            </div>
            <div class="col2 centercol">
                <h1 class="h1recorded">Recorded Volunteers</h1>
                <form  id="formupdate"  runat="server">
            <div class="frmtable">
                <asp:PlaceHolder ID="placeholdertable" runat="server"></asp:PlaceHolder>
            </div> 
               </form> 
                </div>

    <!--    This was the first method of loading records from the database but 
            i found a better method using stringbuilder and this way i was able to organize it with a table
        (    <div id="divresults" runat="server">
            <table>
              <tr>
                <th>First Name</th>
                   <th>Last Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Contact</th>
                  <th>Time</th>
              </tr>
              <tr id="htmlstr"> 
               <td><asp:Literal ID="literalfname" runat="server"></asp:Literal></td>
                   <td><asp:Literal ID="literallname" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="literalphone" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="literalemail" runat="server"></asp:Literal></td>
                <td><asp:Literal ID="literalcontact" runat="server"></asp:Literal></td>
                  <td><asp:Literal ID="literaltime" runat="server"></asp:Literal></td>
            </tr>
            </table>  )
      -->
    </main>
	</div>
    <footer>
	<div class="footer">
	<p>&copy; Copyright 2018 Conqueror Hook and Ladder Company all rights reserved Contact Information</p>
	</div>
	</footer>
	
</body>


</html>

