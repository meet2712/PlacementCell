<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileUpload.aspx.cs" Inherits="PlacementCellP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body style="margin-left:40%"><h1>Upload Your CV</h1>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
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
    <nav id="menu">
				<ul class="links">
                    
					
					<li><a href="generic.html">Student Approval</a></li>
					<li><a href="elements.html">Elements</a></li>
                    <li><a href="elements.html">Result Declaration</a></li>
                    <li><a href="FileUpload.aspx">Resume Collection</a></li>
                    <li><a href="elements.html">Company List</a></li>
                    
				</ul>
			</nav>
    <script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

</body>
</html>
