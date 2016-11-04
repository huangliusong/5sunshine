<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zuopinguanli.aspx.cs" Inherits="iframe_zuopinguanli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 400px; margin-left: 20px;">
            <div style="float: left; width: 100px; background-color: #ff7043; height: 50px; line-height: 50px;
                text-align: center;">
                素材名称
            </div>
            <div style="float: left; width: 100px; background-color: #ff7043; height: 50px; line-height: 50px;
                text-align: center; ">
                审核状态
            </div>
            <div style="float: left; width: 100px; background-color: #ff7043; height: 50px; line-height: 50px;
                text-align: center;">
                预览图
            </div>
            <div style="float: left; width: 100px; background-color: #ff7043; height: 50px; line-height: 50px;
                text-align: center;text; font-size: 10px;">
                上传时间
            </div>
        </div>
        <div style="width: 500px; height: 400px; margin-left: 20px;">
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <div style="float: left; width: 100px; background-color: #FFFFFF; height: 100px;
                        line-height: 100px; text-align: center;">
                        <%#Eval("file_zip")%>
                    </div>
                    <div style="float: left; width: 100px; background-color: #FFFFFF; height: 100px;
                        line-height: 100px; text-align: center;">
                        <%#Eval("state")%>
                    </div>
                    <div style="float: left; width: 100px; background-color: #FFFFFF; height: 100px;
                        line-height: 100px; text-align: center;">
                        <img style=" width:100px; height:100px;" src="../file/<%#Eval("file_yulan_url")%>" />
                    </div>
                    <div style="float: left; width: 100px; background-color: #FFFFFF; height: 100px;
                        line-height: 100px; text-align: center; font-size: 10px;">
                        <%#Eval("time")%>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
    </form>
</body>
</html>
