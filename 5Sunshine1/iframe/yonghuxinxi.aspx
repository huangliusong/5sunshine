<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yonghuxinxi.aspx.cs" Inherits="iframe_yonghuxinxi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户</title>
    <link href="../css/gh_materialize.css" rel="stylesheet" type="text/css" />
    <link href="../css/prism.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 400px; height: 400px; margin-left:40px;">
        <div style="width: 100px; height: 400px; float: left">
            <img alt="头像" src="../images/avatar-001.jpg" style="width: 100px; height: 100px;" />
        </div>
        <div style="width: 20px; height: 400px; float: left;">
        </div>
        <div style="width: 280px; height: 400px; float: left;">
            <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
            <h6 class="header">
                用户名：<%#Session["user"].ToString() %></h6><br />
            <h6 class="header">
                性别：<%#Eval("sex") %></h6><br />
            <h6 class="header">
                昵称：<%#Eval("use_name")%></h6><br />
            <h6 class="header">
                邮箱：<%#Eval("email") %></h6><br />
            <h6 class="header">
                感兴趣的：<%#Eval("like1") %></h6><br />
            <h6 class="header">
                个人简述：<%#Eval("jianshu") %></h6><br />
                <h6 class="header">
                注册时间：<%#Eval("use_time") %></h6><br />
            </ItemTemplate>
            </asp:DataList>
        </div>
        <div style="clear: both;">
        </div>
    </div>
    </form>
</body>
</html>
