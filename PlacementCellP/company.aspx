
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="company.aspx.cs" Inherits="PlacementCellP.company" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        .container {
            margin-left:40%;
        }
        .txtbox
        {
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
                <div class="container">
<h2 style="margin-left:10%">&nbsp;Company Registration</h2>
        
        <asp:Label ID="Label2" runat="server" Text="Company Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" CssClass="txtbox"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
                    &nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Website:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Date:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox cssclass="txtbox" ID="TextBox3" runat="server" placeholder="dd" Width="27px"></asp:TextBox>
        
        &nbsp;/ <asp:TextBox ID="TextBox8" runat="server" placeholder="mm" Width="27px" CssClass="txtbox"></asp:TextBox>
        
        &nbsp;/ <asp:TextBox ID="TextBox9" runat="server" placeholder="yy" Width="76px" CssClass="txtbox"></asp:TextBox>
        
        &nbsp;<br />
                    <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Location:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox CssClass="txtbox" ID="TextBox4" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Eligibility:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" CssClass="txtbox" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Job Roles:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" CssClass="txtbox"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Vacancy:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox CssClass="txtbox" ID="TextBox7" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
        <br />
       
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_insert" runat="server" OnClick="btn_insert_Click" Text="Insert" CssClass="txtbox" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" CssClass="txtbox"/>
&nbsp;&nbsp;<br />
        <br />
                    <br />
                    <br />

&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="ID: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server" CssClass="txtbox" ></asp:TextBox>
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Select Company:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                    </asp:DropDownList>
                    <br />
                    <br />
                    Select Company 2:&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="company_name" DataValueField="company_name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:company %>" SelectCommand="SELECT [company_name] FROM [Table1]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_delete" runat="server" Text="Delete" OnClick="btn_delete_Click" CssClass="txtbox" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Edit" OnClick="Button4_Click" Width="80px" CssClass="txtbox" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        
        
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="GridView1" Width="71px" CssClass="txtbox" />
       
        <asp:GridView ID="GridView2" runat="server" >
        </asp:GridView>
                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="GridView2" Width="85px" CssClass="txtbox" />
        <br />
       
&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:GridView ID="GridView3" runat="server">
                    </asp:GridView>
                    <br />
                    <br />
                    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                            <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                            <asp:BoundField DataField="eligibility" HeaderText="eligibility" SortExpression="eligibility" />
                            <asp:BoundField DataField="job_roles" HeaderText="job_roles" SortExpression="job_roles" />
                            <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                            <asp:ImageField DataImageUrlField="Id" DataImageUrlFormatString="img/elements/user1" HeaderText="Image">
                            </asp:ImageField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:company %>" DeleteCommand="DELETE FROM [Table1] WHERE [Id] = @original_Id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([website] = @original_website) OR ([website] IS NULL AND @original_website IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([month] = @original_month) OR ([month] IS NULL AND @original_month IS NULL)) AND (([year] = @original_year) OR ([year] IS NULL AND @original_year IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([eligibility] = @original_eligibility) OR ([eligibility] IS NULL AND @original_eligibility IS NULL)) AND (([job_roles] = @original_job_roles) OR ([job_roles] IS NULL AND @original_job_roles IS NULL)) AND (([vacancy] = @original_vacancy) OR ([vacancy] IS NULL AND @original_vacancy IS NULL))" InsertCommand="INSERT INTO [Table1] ([company_name], [website], [date], [month], [year], [location], [eligibility], [job_roles], [vacancy]) VALUES (@company_name, @website, @date, @month, @year, @location, @eligibility, @job_roles, @vacancy)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table1] WHERE ([company_name] = @company_name)" UpdateCommand="UPDATE [Table1] SET [company_name] = @company_name, [website] = @website, [date] = @date, [month] = @month, [year] = @year, [location] = @location, [eligibility] = @eligibility, [job_roles] = @job_roles, [vacancy] = @vacancy WHERE [Id] = @original_Id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([website] = @original_website) OR ([website] IS NULL AND @original_website IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([month] = @original_month) OR ([month] IS NULL AND @original_month IS NULL)) AND (([year] = @original_year) OR ([year] IS NULL AND @original_year IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([eligibility] = @original_eligibility) OR ([eligibility] IS NULL AND @original_eligibility IS NULL)) AND (([job_roles] = @original_job_roles) OR ([job_roles] IS NULL AND @original_job_roles IS NULL)) AND (([vacancy] = @original_vacancy) OR ([vacancy] IS NULL AND @original_vacancy IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_company_name" Type="String" />
                            <asp:Parameter Name="original_website" Type="String" />
                            <asp:Parameter Name="original_date" Type="Int32" />
                            <asp:Parameter Name="original_month" Type="Int32" />
                            <asp:Parameter Name="original_year" Type="Int32" />
                            <asp:Parameter Name="original_location" Type="String" />
                            <asp:Parameter Name="original_eligibility" Type="String" />
                            <asp:Parameter Name="original_job_roles" Type="String" />
                            <asp:Parameter Name="original_vacancy" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="company_name" Type="String" />
                            <asp:Parameter Name="website" Type="String" />
                            <asp:Parameter Name="date" Type="Int32" />
                            <asp:Parameter Name="month" Type="Int32" />
                            <asp:Parameter Name="year" Type="Int32" />
                            <asp:Parameter Name="location" Type="String" />
                            <asp:Parameter Name="eligibility" Type="String" />
                            <asp:Parameter Name="job_roles" Type="String" />
                            <asp:Parameter Name="vacancy" Type="Int32" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList2" DefaultValue="NULL" Name="company_name" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="company_name" Type="String" />
                            <asp:Parameter Name="website" Type="String" />
                            <asp:Parameter Name="date" Type="Int32" />
                            <asp:Parameter Name="month" Type="Int32" />
                            <asp:Parameter Name="year" Type="Int32" />
                            <asp:Parameter Name="location" Type="String" />
                            <asp:Parameter Name="eligibility" Type="String" />
                            <asp:Parameter Name="job_roles" Type="String" />
                            <asp:Parameter Name="vacancy" Type="Int32" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_company_name" Type="String" />
                            <asp:Parameter Name="original_website" Type="String" />
                            <asp:Parameter Name="original_date" Type="Int32" />
                            <asp:Parameter Name="original_month" Type="Int32" />
                            <asp:Parameter Name="original_year" Type="Int32" />
                            <asp:Parameter Name="original_location" Type="String" />
                            <asp:Parameter Name="original_eligibility" Type="String" />
                            <asp:Parameter Name="original_job_roles" Type="String" />
                            <asp:Parameter Name="original_vacancy" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Dynamic Insertion" />
                    <br />
&nbsp;<asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                            <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                            <asp:BoundField DataField="month" HeaderText="month" SortExpression="month" />
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                            <asp:BoundField DataField="eligibility" HeaderText="eligibility" SortExpression="eligibility" />
                            <asp:BoundField DataField="job_roles" HeaderText="job_roles" SortExpression="job_roles" />
                            <asp:BoundField DataField="vacancy" HeaderText="vacancy" SortExpression="vacancy" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:company %>" DeleteCommand="DELETE FROM [Table1] WHERE [Id] = @original_Id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([website] = @original_website) OR ([website] IS NULL AND @original_website IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([month] = @original_month) OR ([month] IS NULL AND @original_month IS NULL)) AND (([year] = @original_year) OR ([year] IS NULL AND @original_year IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([eligibility] = @original_eligibility) OR ([eligibility] IS NULL AND @original_eligibility IS NULL)) AND (([job_roles] = @original_job_roles) OR ([job_roles] IS NULL AND @original_job_roles IS NULL)) AND (([vacancy] = @original_vacancy) OR ([vacancy] IS NULL AND @original_vacancy IS NULL))" InsertCommand="INSERT INTO [Table1] ([company_name], [website], [date], [month], [year], [location], [eligibility], [job_roles], [vacancy]) VALUES (@company_name, @website, @date, @month, @year, @location, @eligibility, @job_roles, @vacancy)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table1]" UpdateCommand="UPDATE [Table1] SET [company_name] = @company_name, [website] = @website, [date] = @date, [month] = @month, [year] = @year, [location] = @location, [eligibility] = @eligibility, [job_roles] = @job_roles, [vacancy] = @vacancy WHERE [Id] = @original_Id AND (([company_name] = @original_company_name) OR ([company_name] IS NULL AND @original_company_name IS NULL)) AND (([website] = @original_website) OR ([website] IS NULL AND @original_website IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([month] = @original_month) OR ([month] IS NULL AND @original_month IS NULL)) AND (([year] = @original_year) OR ([year] IS NULL AND @original_year IS NULL)) AND (([location] = @original_location) OR ([location] IS NULL AND @original_location IS NULL)) AND (([eligibility] = @original_eligibility) OR ([eligibility] IS NULL AND @original_eligibility IS NULL)) AND (([job_roles] = @original_job_roles) OR ([job_roles] IS NULL AND @original_job_roles IS NULL)) AND (([vacancy] = @original_vacancy) OR ([vacancy] IS NULL AND @original_vacancy IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_company_name" Type="String" />
                            <asp:Parameter Name="original_website" Type="String" />
                            <asp:Parameter Name="original_date" Type="Int32" />
                            <asp:Parameter Name="original_month" Type="Int32" />
                            <asp:Parameter Name="original_year" Type="Int32" />
                            <asp:Parameter Name="original_location" Type="String" />
                            <asp:Parameter Name="original_eligibility" Type="String" />
                            <asp:Parameter Name="original_job_roles" Type="String" />
                            <asp:Parameter Name="original_vacancy" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="company_name" Type="String" />
                            <asp:Parameter Name="website" Type="String" />
                            <asp:Parameter Name="date" Type="Int32" />
                            <asp:Parameter Name="month" Type="Int32" />
                            <asp:Parameter Name="year" Type="Int32" />
                            <asp:Parameter Name="location" Type="String" />
                            <asp:Parameter Name="eligibility" Type="String" />
                            <asp:Parameter Name="job_roles" Type="String" />
                            <asp:Parameter Name="vacancy" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="company_name" Type="String" />
                            <asp:Parameter Name="website" Type="String" />
                            <asp:Parameter Name="date" Type="Int32" />
                            <asp:Parameter Name="month" Type="Int32" />
                            <asp:Parameter Name="year" Type="Int32" />
                            <asp:Parameter Name="location" Type="String" />
                            <asp:Parameter Name="eligibility" Type="String" />
                            <asp:Parameter Name="job_roles" Type="String" />
                            <asp:Parameter Name="vacancy" Type="Int32" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_company_name" Type="String" />
                            <asp:Parameter Name="original_website" Type="String" />
                            <asp:Parameter Name="original_date" Type="Int32" />
                            <asp:Parameter Name="original_month" Type="Int32" />
                            <asp:Parameter Name="original_year" Type="Int32" />
                            <asp:Parameter Name="original_location" Type="String" />
                            <asp:Parameter Name="original_eligibility" Type="String" />
                            <asp:Parameter Name="original_job_roles" Type="String" />
                            <asp:Parameter Name="original_vacancy" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                    </form>
</body>

</html>
