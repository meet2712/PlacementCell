<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="PlacementCellP.news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            align-content:center;
            margin-left:40%;
        }
        .container {
            height:100%;
            width:100%;
            display:flex;
        }
        #div1{
            width:20%;
            background-color:indianred;
        }
        #div2{
            width:80%;
            background-color:antiquewhite; 
        }
    </style>
</head>
<body style="height: 527px">
    <form id="form1" runat="server">
   <p ><h1 style="margin-left:15%;">NEWS</h1></p>
    <h2>Company List</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="company_name" HeaderText="Company Name" SortExpression="company_name" />
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                <asp:BoundField DataField="month" HeaderText="Month" SortExpression="month" />
                <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
                <asp:BoundField DataField="eligibility" HeaderText="Eligibility" SortExpression="eligibility" />
                <asp:BoundField DataField="job_roles" HeaderText="Job Roles" SortExpression="job_roles" />
                <asp:BoundField DataField="vacancy" HeaderText="Vacancy" SortExpression="vacancy" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:company %>" SelectCommand="SELECT [company_name], [date], [month], [year], [eligibility], [job_roles], [vacancy] FROM [Table1]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    </form>
    </body>
</html>
