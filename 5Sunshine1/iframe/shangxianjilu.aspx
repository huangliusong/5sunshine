<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shangxianjilu.aspx.cs" Inherits="iframe_shangxianjilu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left:10px;">
    <div style=" width:150px; height:50px; float:left; background-color:#ff7043; text-align: center; line-height:50px;">
        用户
    </div>
    <div style=" width:150px; height:50px; float:left; background-color:#ff7043; text-align: center; line-height:50px;">
        上线时间
    </div>
    <div style=" width:150px; height:50px; float:left; background-color:#ff7043;text-align: center;line-height:50px;">
        上线地点
    </div>
    <div style=" width:150px; height:50px; float:left; background-color:#ff7043;text-align: center;line-height:50px;">
        ip地址
    </div>
    </div>
    <div style=" clear:both"></div>
    <div style="margin-left:10px;">
        <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
        <div style=" width:150px; height:50px; float:left; background-color:#FFFFFF; text-align: center; line-height:50px;">
        <%#Eval("use_num")%>
    </div>
         <div style=" width:150px; height:50px; float:left; background-color:#FFFFFF; text-align: center; line-height:50px;">
        <%#Eval("上线时间") %>
    </div>
    <div style=" width:150px; height:50px; float:left; background-color:#FFFFFF;text-align: center;line-height:50px; font-size: 10px;">
        <%#Eval("上线地点") %>
    </div>
    <div style=" width:150px; height:50px; float:left; background-color:#FFFFFF;text-align: center;line-height:50px;">
        <%#Eval("ip地址") %>
    </div>
        </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
