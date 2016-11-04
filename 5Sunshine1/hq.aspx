<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hq.aspx.cs" Inherits="hq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/yxzp.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="phid" 
            DataSourceID="SqlDataSource1" RepeatColumns="6" 
            RepeatDirection="Horizontal">
            <ItemTemplate>
               <table>
             <tr><td><table class="xz" style=" border:1px solid #E6E6E6; padding:15px 15px 15px 15px;"><tr>
             <td colspan="2"><img alt=""  src="images/zuopin/<%# Eval("image")%>" /></td></tr>
             <tr><td colspan="2"><div>Topic：<%# Eval("topic")%></div></td></tr> 
             <tr><td><div>上传者:<%# Eval("author") %></div></td></tr>
             <tr><td><div>点赞量：<%# Eval("zancount") %></div></td>
             <td><asp:ImageButton ID="ImageButton5" runat="server" src="images/like.png" style=" width:25px; height:25px;" ImageAlign="AbsBottom" /></td></tr>
             </table></td></td></tr>
             </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sunshineConnectionString12 %>" 
            
            SelectCommand="SELECT * FROM [xiazai] WHERE ([style] = @style) ORDER BY [zancount] DESC, [download] DESC">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="会旗" Name="style" SessionField="style" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
