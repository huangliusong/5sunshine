<%@ Page Title="" Language="C#" MasterPageFile="~/forground.master" AutoEventWireup="true"
    CodeFile="sucaiDetail.aspx.cs" Inherits="sucaiDetail" %>

<%@ Register Src="sucaiAll.ascx" TagName="sucai" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

    <div style="width: 1300px; margin-left: auto; margin-right: auto; min-height: 500px;">
        <uc1:sucai ID="sucai1" runat="server" />
    </div>
</asp:Content>
