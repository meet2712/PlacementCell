<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PlacementCellP.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <link href="Style_login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="bg">
           <asp:Image ID="Image3" runat="server" ImageUrl="./images/Artboard Background.png"/>
           <div class="sec2">
            <div class="container">
                <div class="social"> 
                    <a href="https://www.facebook.com"><asp:Image ID="Image1"  runat="server" ImageUrl="./images/fb.png" /></a>
                    <a href="https://plus.google.com"><asp:Image ID="Image2" runat="server" ImageUrl="./images/g.png" /></a>
                </div>

                <div class="content">
                    <h2>Sign Up</h2>
                    <asp:TextBox ID="TextBox1" placeholder="Username" runat="server"></asp:TextBox><br />
                    <asp:TextBox ID="TextBox2" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br />
                    <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
                </div>
            </div>
        </div>
     </div>
    </form>
    
</body>
</html>