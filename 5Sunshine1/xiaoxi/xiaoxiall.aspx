<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiaoxiall.aspx.cs" Inherits="xiaoxi_xiaoxiall" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
             <div style=" float:left; width:270px; height:50px; background-color:#FFFFFF; line-height:50px;">
             <a href="" style=" text-decoration: none;">   <%#Eval("message_title")%></a>
            </div>
            <div style=" float:left; width:200px; height:50px;background-color:#FFFFFF;line-height:50px;">
             <a href="" style=" text-decoration: none;">   <%#Eval("time")%></a>
            </div>
        </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </div>
    </form>
</body>
</html>
