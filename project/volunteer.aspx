<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="volunteer.aspx.cs" Inherits="project.volunteer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conqueror Hook and Ladder Company</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta charset="utf-8" />
    <link href="https://fonts.googleapis.com/css?family=Amethysta|Playfair+Display+SC" rel="stylesheet" />
    <style type="text/css">
        html, body {
            font-family: 'Amethysta', serif;
            height: 100%;
            position: relative;
            background-color: #1E0000;
        }

        .sidenav a {
            display: block;
            text-decoration: none;
            font-size: 20px;
            padding: 8px 8px 8px 8px;
            color: white;
        }

            .sidenav a:hover {
                color: black;
                background-color: white;
                border: thin;
                border-style: solid;
                border-color: white;
            }

        .imagehome {
            width: 100%;
            position: relative;
        }

            .imagehome h1 {
                position: absolute;
                text-align: center;
                width: 100%;
                margin-top: 5%;
                font-weight: bolder;
            }

                .imagehome h1 span {
                    background-color: rgba(50,50,50,.7);
                    border-radius: 25px;
                    color: white;
                    letter-spacing: -1px;
                    font-size: 45px;
                    padding: 10px;
                }

        header {
            height: 250px;
        }

        .centercol {
            color: #1f2833;
            background-color: #004080;
            border-radius: 25px;
        }

        .formsubmit {
            background-color: #f2f2f2;
            padding: 10px;
            padding-bottom: 5%;
            border: thin;
            border-style: solid;
            border-color: black;
        }

        #wrapper {
            margin: 0 auto;
            width: 95%;
            text-align: center;
            overflow: hidden;
            display: block;
            position: relative;
            min-height: 100%;
            padding-bottom: 100px;
        }

        .col {
            margin-top: 40px;
            width: 40%;
            float: left;
        }

        .col1 {
            margin-top: 40px;
            background-color: #323232;
            height: 600px;
            margin-right: 3%;
            width: 12%;
            float: left;
            text-align: left;
            padding-top: 3%;
        }

        .col2 {
            background-color: #c5c6c7;
            height: 700px;
            margin-right: 3%;
        }

        .col3 {
            background-color: #c5c6c7;
            height: 700px;
        }

        @media only screen and (max-width:1000px) {
            .col1, .col2 {
                width: 46%;
            }

            .col3 {
                width: 96%;
            }
        }

        @media only screen and (max-width:786px) {
            .col1, .col2 {
                width: 46%;
            }

            .col3 {
                width: 96%;
            }
        }

        @media only screen and (max-width:600px) {
            .col, .col1 {
                width: 100%;
                height: 30%;
            }

            .imagehome h1 span {
                font-size: 30px;
            }
        }

        .footer {
            position: absolute;
            bottom: 10px;
            right: 0;
            left: 0;
            height: 60px;
            background-color: #323232;
            color: white;
            text-align: center;
            font-size: 20px;
        }

        a {
            color: #004080;
            text-decoration: none;
            background-color: transparent;
        }

        .aspsubmit {
            border: 2px solid black;
            background-color: white;
            color: black;
            padding: 10px 20px;
            float: right;
            cursor: pointer;
            border-radius: 4px;
            margin-top: 2%;
        }

            .aspsubmit:hover {
                background-color: #1f2833;
                color: white;
            }

        .labels {
            padding: 25px;
            padding-left: 1%;
            display: inline-block;
        }

        .textbox {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            resize: vertical;
        }

        .dropbox {
            margin-top: 6%;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            resize: vertical;
        }

        .collabel {
            float: left;
            width: 40%;
            margin-top: 2%;
            text-align: left;
        }

        .coltext {
            float: left;
            width: 50%;
            margin-top: 2%;
        }

        .row {
            content: "";
            clear: both;
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
                <a href="administrative.aspx">Administrative</a>
            </div>
            <div class="col col2 centercol">
                <h1>Volunteer</h1>
                <form class="formsubmit" runat="server" id="frminfo">
                    <fieldset>
                        <legend>Enter Information</legend>

                        <div class="row">
                            <div class="collabel">
                                <asp:Label runat="server" ID="lblname" CssClass="labels" Text="First Name:"></asp:Label>
                            </div>
                            <div class="coltext">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtfname" ErrorMessage="Name Required" ForeColor="Red"> </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" Display="dynamic" ControlToValidate="txtfname" ErrorMessage="Letters only" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:TextBox runat="server" ID="txtfname" placeholder="First Name*" CssClass="textbox"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="collabel">

                                <asp:Label runat="server" ID="Label1" CssClass="labels" Text="Last Name:"></asp:Label>
                            </div>
                            <div class="coltext">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtlname" ErrorMessage="Name Required" ForeColor="Red"> </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" Display="dynamic" ControlToValidate="txtlname" ErrorMessage="Letters only" ValidationExpression="^[a-zA-Z\s]+$" ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:TextBox runat="server" ID="txtlname" placeholder="Your Name*" CssClass="textbox"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="collabel">
                                <asp:Label runat="server" ID="lblphone" CssClass="labels" Text="Phone Number:"></asp:Label>
                            </div>
                            <div class="coltext">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Txtphone" ErrorMessage="Phone Required" ForeColor="Red"> </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" Display="dynamic" ControlToValidate="Txtphone" ErrorMessage="10 Numbers" ValidationExpression="^[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:TextBox runat="server" ID="Txtphone" placeholder="Your Phone Number*" CssClass="textbox" MaxLength="10"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="collabel">
                                <asp:Label runat="server" ID="lblemail" CssClass="labels" Text="Email Address:"></asp:Label>
                            </div>
                            <div class="coltext">
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Txtemail" ErrorMessage="Email Required" ForeColor="Red"> </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" Display="dynamic" ControlToValidate="Txtemail" ErrorMessage="Invalid Email" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:TextBox runat="server" ID="Txtemail" placeholder="Your Email*" CssClass="textbox" type="email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="collabel">
                                <asp:Label runat="server" ID="lblcontact" CssClass="labels" Text="Method of Contact:"></asp:Label>
                            </div>
                            <div class="coltext">
                                <asp:DropDownList runat="server" ID="drdlist" CssClass="dropbox" OnSelectedIndexChanged="Drdlist_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Value="Email" Text="Email" Enabled="true">Email</asp:ListItem>
                                    <asp:ListItem Value="Phone" Text="Phone">Phone</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </fieldset>
                    <asp:Panel ID="pnlshow" runat="server" Visible="false">

                        <fieldset id="field2">
                            <legend>Availability</legend>
                            <div class="row">
                                <div class="collabel">
                                    <asp:Label runat="server" ID="lblbest" Text="Best Time to Call:" CssClass="labels"></asp:Label>
                                </div>
                                <div class="coltext">
                                    <asp:TextBox runat="server" ID="txtbest" placeholder="00:00" value="" type="time" CssClass="textbox"></asp:TextBox>
                                </div>
                            </div>
                        </fieldset>
                    </asp:Panel>
                    <asp:Button runat="server" ID="btnsubmit" Text="Submit" OnClick="Btnsubmit_Click" CssClass="aspsubmit" />
                    <asp:Label runat="server" ID="lblupdate" CssClass="labels" Text="" ForeColor="Red"></asp:Label>
                </form>
            </div>
            <div class="col col3 centercol">
                <h1>Best times to Visit Us</h1>

                <div id="divresults" runat="server">
                </div>
                <h4>Feel free to stop by and meet the firefighters to learn more.</h4>
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