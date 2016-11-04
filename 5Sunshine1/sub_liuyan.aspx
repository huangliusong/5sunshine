<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true" CodeFile="sub_liuyan.aspx.cs" Inherits="sub_liuyan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--头部中间-->
    <div  id="header">
    <div style="width:100%; height:30px; background-image:url(images/subbg1.png)"></div>



    </div>

    <!--导航 -->
      <div style="height: 50px; padding: 0px; margin-bottom: 5px; width:1500px; ">
        <div style="margin-left: 100px; -moz-box-shadow: -3px 1px 12px #D6DB3B; -moz-box-shadow: 0px 2px 8px #666666;
            -webkit-box-shadow: 0px 2px 8px #666666; box-shadow: 0px 2px 8px #666666;">
            <div class="banner">
                <ul>
                    <li>
                        <img alt="" src="images/logoa.png" /></li>
                    <li>
                        <div style="height: 45px; padding-top: 10px; background-color: White;">
                            <a style="color: Blue; padding-left: 10px; padding-right: 10px;">首页</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sucaiDetail.aspx">享设计</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="subyc.aspx">晒艺潮</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_zixun.aspx">师兄支招</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_about.aspx">关于我们</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--中部-->
    <div style=" margin-left:10%; width:80%;">
    <!--图片区-->
    <div style=" width:100%; height:200px; background-color:Gray;"></div>
    <!--我要留言-->
    <div style=" margin-top:10px;">
    <div style="background-color:Teal; width:50px; height:30px; float:left; "></div>
        &nbsp;<asp:TextBox ID="TextBox1" runat="server" Text="说点什么吧..." Height="30px" 
            Width="300px"></asp:TextBox>
   &nbsp;&nbsp;
   <asp:Button ID="Button1" runat="server" Text="发 表" onclick="Button1_Click" 
            Height="30px" Width="50px" />
            
    </div>
     <!--留言展示-->
    <div style=" height:1000px;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            <br />
            <table>
            <!--头像用圆形展示-->
            <tr><td  rowspan="2"><img src="images/<%#Eval("image")%>"  width="50"; height="50";/></td><td><h2><%#Eval("name")%></h2></td></tr>
            <tr><td>
                <img src="images/time.jpg" /><%#Eval("time")%><hr /><br /></td></tr>
            <tr><td></td><td colspan="2" style=" clear:both;"><%#Eval("neirong")%></td></tr>
            <tr><td colspan="2">身份：<%#Eval("shenfen")%></td><td>赞(<%#Eval("zan")%>)|评论（<%#Eval("pinglun")%>）</td></tr>
            </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sunshineConnectionString16 %>" 
            SelectCommand="SELECT * FROM [sub_liuyan]"></asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

