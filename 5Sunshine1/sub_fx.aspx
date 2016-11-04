<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="sub_fx.aspx.cs" Inherits="sub_fx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Styles/forum.css" rel="stylesheet" type="text/css" />
    <!--导航-->
    <div style="height: 50px; padding: 0px; margin-bottom: 10px; background-image: url(images/bannerq.png);">
        <div style="margin-left: 100px">
            <div class="banner">
                <ul>
                    <li>
                        <img alt="" src="images/logoa.png" /></li>
                    <li>
                        <div style="height: 45px; padding-top: 10px;">
                            <a href="index1.aspx">首页</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px;">
                            <a style="color: Blue; padding-left: 10px; padding-right: 10px;">享设计</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="subyc.aspx">晒艺潮</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_zixun.aspx">校园资讯</a></div>
                    </li>
                    <li>
                        <div style="height: 45px; padding-top: 10px">
                            <a href="sub_about.aspx">关于我们</a></div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- 主体部分-->
    <div style="padding-left: 100px; width: 1150px;">
        <div style="margin-left: auto; margin-right: auto; width: 960px; text-align: center;
            margin-top: 80px; padding-top: 20px;">
            <h1>
                论坛首页</h1>
            <div id="_div" style="text-align: right;">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/fatie.png" OnClick="ImageButton1_Click" />
            </div>
        </div>
        <div style="border: thin double #808080; margin-left: auto; margin-right: auto; width: 960px;
            text-align: left; margin-bottom: 100px;">
            &nbsp;&nbsp;&nbsp;<br />
            问题列表：
            <br />
            <div style="line-height: 30px;">
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <div style="line-height: 30px;">
                            <ul>
                                <li><a href="lou1.aspx?id=<%#Eval("answerId") %>">
                                    <%#Eval("question") %></a></li>
                            </ul>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sunshineConnectionString17 %>"
                    SelectCommand="SELECT * FROM [Question]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
