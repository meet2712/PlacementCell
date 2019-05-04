<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="PlacementCellP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="margin-left:40%"><h1>Upload Your CV</h1>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" onclick="btnsave_Click" Text="Upload" />
        <asp:RegularExpressionValidator   
id="FileUpLoadValidator14" runat="server"   
ErrorMessage="Upload pdf only."   
ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))(.pdf)$"   
ControlToValidate="FileUpload1">  
</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
