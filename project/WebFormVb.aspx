<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
            ByVal e As System.EventArgs)
        Label1.Text = "Clicked at " & DateTime.Now.ToString()
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Single-File Page Model</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1"
                runat="server" Text="Label">
            </asp:Label>
            <asp:Button ID="Button1"
                runat="server" OnClick="Button1_Click" Text="Button"></asp:Button>
        </div>
    </form>
</body>
</html>