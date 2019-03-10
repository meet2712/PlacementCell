<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company.aspx.cs" Inherits="PlacementCellP.company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Label ID="Label2" runat="server" Text="Company Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
        <br /><br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Website:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" placeholder="dd" Width="27px"></asp:TextBox>
        
        &nbsp;/ <asp:TextBox ID="TextBox8" runat="server" placeholder="mm" Width="27px"></asp:TextBox>
        
        &nbsp;/ <asp:TextBox ID="TextBox9" runat="server" placeholder="yy" Width="76px"></asp:TextBox>
        
        &nbsp;<br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Location:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Eligibility:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Job Roles:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Vacancy:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_insert" runat="server" OnClick="btn_insert_Click" Text="Insert" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_delete" runat="server" Text="Delete" OnClick="btn_delete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Button" />
        
    </form>
</body>
</html>
