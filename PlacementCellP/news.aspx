<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news.aspx.cs" Inherits="PlacementCellP.news" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="div1"></div>
            <div id="div2"></div>
        </div>
    </form>
</body>
</html>
