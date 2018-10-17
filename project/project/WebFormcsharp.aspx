<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Webformcsharp.aspx.cs" Inherits="project.WebFormcsharp"  %>


<html>
<head>
    <title>Single-File Page Model</title>
</head>
<body>
    <form runat="server">
        <div>
            <asp:Label ID="Label1"
                runat="server" Text="Label">
            </asp:Label>
            <br />
            <asp:Button ID="Button1"
                runat="server"
                onclick="Button1_Click1"

                Text="Button"></asp:Button>
        </div>
    </form>
</body>
</html>