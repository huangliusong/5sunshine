<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="search.aspx.cs" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="header">
        <div style="height: 60px; background-image: url(images/subbg1.png)">
        </div>
    </div>
    <!--导航 -->
    <div style="height: 50px; padding: 0px; margin-bottom: 5px; background-image: url(images/bannerq.png);">
        <table style="margin-left: 8%">
            <tr>
                <td>
                    <div class="banner">
                        <ul>
                            <img alt="" src="images/logoa.png" />
                            <li>
                                <div style="height: 40px; background-color: White; padding-top: 10px">
                                    <a style="color: Blue; padding-left: 10px; padding-right: 10px;">首页</a></div>
                            </li>
                            <li>
                                <div style="height: 45px; padding-top: 10px">
                                    <a href="subyc.aspx">晒艺潮</a></div>
                            </li>
                            <li>
                                <div style="height: 45px; padding-top: 10px">
                                    <a href="sub_fx.aspx">晒分享</a></div>
                            </li>
                            <li>
                                <div style="height: 45px; padding-top: 10px">
                                    <a href="sub_zixun.aspx">校园资讯</a></div>
                            </li>
                            <li>
                                <div style="height: 45px; padding-top: 10px">
                                    <a href="sub_liuyan.aspx">晒留言</a></div>
                            </li>
                            <li>
                                <div style="height: 45px; padding-top: 10px">
                                    <a href="sub_about.aspx">关于我们</a></div>
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <!--搜索内容-->
    <div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="" Width="500"></asp:Label></div>
        <div>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <div>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">
                                        <%# DataBinder.Eval(Container.DataItem, "topic")%></asp:LinkButton></div>
                    <div>
                        <%# DataBinder.Eval(Container.DataItem,"author")%></div>
                    <div style="border-bottom: 1px dashed #000000;">
                        <%# DataBinder.Eval(Container.DataItem,"style")%></div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
