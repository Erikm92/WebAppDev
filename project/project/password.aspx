<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="project.password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<script>
    function password() {

        var test, y;
        test = document.getElementById("form1");
        y = test.elements["name"].value;
        document.getElementById("demo").innerHTML = "Hello" + y;
        if (y == "letmein") {
            window.open("Administrative.aspx");
        }
        else {
            windows.prompt("Wrongpass");
        }
    }

</script>
</head>
<body>
    <form id="form1">
        
             Password: <input name="name" type="text" />
           
            
          
       
    </form>
    <button onclick="password()">Submit</button>

    <p id="demo">hereinfo</p>
</body>
</html>

